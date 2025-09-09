#!/bin/bash
# Mac Reminders integration for Obsidian Life OS
# Usage: ./reminder.sh create "task" "list" "due_date"

case "$1" in
  create)
    # Create new reminder
    if [ -z "$4" ]; then
      # No due date specified
      osascript -e "tell application \"Reminders\"
        set myList to list \"${3:-Reminders}\"
        tell myList
          make new reminder with properties {name:\"$2\"}
        end tell
      end tell"
    else
      # With due date - convert common terms to proper format
      case "$4" in
        "today")
          DUE_DATE="$(date '+%m/%d/%Y')"
          ;;
        "tomorrow")
          DUE_DATE="$(date -v +1d '+%m/%d/%Y')"
          ;;
        *)
          DUE_DATE="$4"
          ;;
      esac
      
      osascript -e "tell application \"Reminders\"
        set myList to list \"${3:-Reminders}\"
        tell myList
          make new reminder with properties {name:\"$2\", due date:date \"$DUE_DATE\"}
        end tell
      end tell"
    fi
    echo "✅ Reminder '$2' added to ${3:-Reminders}"
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