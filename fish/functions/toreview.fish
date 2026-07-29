function toreview
 az repos pr list --reviewer EDA-REVIEW --project governance --output table
 echo "---"
 az repos pr list --reviewer EDA-REVIEW --project EDA-IAC --output table
 echo "---"
 az repos pr list --reviewer EDA-REVIEW --project EDA-SCHEMAS --output table
end
