diskutil mount EFI
rm -rf RENAME-WITH-YOUR-MOTHERBOARD-NAME
mkdir RENAME-WITH-YOUR-MOTHERBOARD-NAME
cp -R /Volumes/EFI/EFI ./RENAME-WITH-YOUR-MOTHERBOARD-NAME
cd ./RENAME-WITH-YOUR-MOTHERBOARD-NAME
echo "# Resume \n" >> ./README.md;
echo "*Processor:* \n" >> ./README.md;
sysctl -n machdep.cpu.brand_string >> ./README.md;
echo "\n" >> ./README.md;
echo "*VGA* \n" >> ./README.md;
system_profiler SPDisplaysDataType | grep "Chipset Model" >> ./README.md;
echo "\n" >> ./README.md;
echo "*Motherboard:* \n\n {REPLACE-WITH-MOTHERBOARD-MODEL} \n" >> ./README.md;

echo "\n\n" >> ./README.md;

echo "# Mini Specs Dump \n\n" >> ./README.md;
system_profiler SPHardwareDataType SPNetworkDataType SPMemoryDataType SPPCIDataType SPAudioDataType SPEthernetDataType SPSerialATADataType -detailLevel mini >> ./README.md;