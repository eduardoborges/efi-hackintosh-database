diskutil mount EFI
rm -rf RENAME-WITH-YOUR-MOTHERBOARD-NAME
mkdir RENAME-WITH-YOUR-MOTHERBOARD-NAME
cp -R /Volumes/EFI/EFI ./RENAME-WITH-YOUR-MOTHERBOARD-NAME
system_profiler SPHardwareDataType SPNetworkDataType SPMemoryDataType SPPCIDataType SPAudioDataType SPEthernetDataType SPSerialATADataType -detailLevel mini >> ./RENAME-WITH-YOUR-MOTHERBOARD-NAME/README.md