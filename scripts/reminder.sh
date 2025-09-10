#!/bin/bash
# Mac Reminders integration for Obsidian Life OS
# Usage: ./reminder.sh create "task" "list" "due_date"

case "$1" in
  create)
    # Check if list exists, create if not
    LIST_NAME="${3:-Reminders}"
    
    # Check if list exists and create if needed
    LIST_EXISTS=$(osascript -e "tell application \"Reminders\"
      try
        set myList to list \"$LIST_NAME\"
        return \"exists\"
      on error
        return \"missing\"
      end try
    end tell")
    
    if [ "$LIST_EXISTS" = "missing" ]; then
      echo "📝 Creating new list: $LIST_NAME"
      osascript -e "tell application \"Reminders\" to make new list with properties {name:\"$LIST_NAME\"}"
    fi
    
    # Create new reminder
    if [ -z "$4" ]; then
      # No due date specified
      osascript -e "tell application \"Reminders\"
        set myList to list \"$LIST_NAME\"
        tell myList
          make new reminder with properties {name:\"$2\"}
        end tell
      end tell"
    else
      # With due date - convert common terms to proper format
      case "$4" in
        "today")
          DUE_DATE="$(date '+%b %d, %Y')"
          ;;
        "tomorrow")
          DUE_DATE="$(date -v +1d '+%b %d, %Y')"
          ;;
        *)
          DUE_DATE="$4"
          ;;
      esac
      
      osascript -e "tell application \"Reminders\"
        set myList to list \"$LIST_NAME\"
        tell myList
          make new reminder with properties {name:\"$2\", due date:date \"$DUE_DATE\"}
        end tell
      end tell"
    fi
    echo "✅ Reminder '$2' added to $LIST_NAME"
    ;;
    
  list)
    # List incomplete reminders
    osascript -e "tell application \"Reminders\"
      set output to \"\"
      repeat with myList in every list
        set listName to name of myList
        tell myList
          repeat with r in (every reminder whose completed is false)
            set output to output & \"[\" & listName & \"] \" & name of r & \"\n\"
          end repeat
        end tell
      end repeat
      return output
    end tell"
    ;;
    
  help)
    echo "Usage:"
    echo "  ./reminder.sh create \"Task name\" \"List name\" \"due date\""
    echo "  ./reminder.sh list"
    echo ""
    echo "Examples:"
    echo "  ./reminder.sh create \"Buy milk\" \"Shopping\" \"tomorrow 5pm\""
    echo "  ./reminder.sh create \"Call mom\" \"Personal\""
    echo "  ./reminder.sh list"
    ;;
    
  *)
    echo "Unknown command. Use 'help' for usage information."
    exit 1
    ;;
esac