all:
	sudo dotnet publish src/ipk-sniffer.csproj -r linux-x64 -c Release -o --output "src"
	sudo rm -r src/obj
	sudo rm -r src/bin
	sudo rm src/ipk-sniffer.pdb
	sudo cp src/ipk-sniffer 'ipk-sniffer'
	sudo rm src/ipk-sniffer