#/bin/bash
#Exports Stock symbols from Stockspy and saves to text file in home directory, tested on MacOS. chmod +x to make executable.
cd ~/;
sqlite3 'Library/Containers/com.stockspy.StockSpyOSXIAP/Data/Library/Application Support/com.stockspy.StockSpyOSXIAP/stockspydb.sqlite' 'SELECT symbol FROM symbol;' >~/stock_symbol_export$(date "+%F").txt;
