state("Fable3"){
	//is loaing is a negitive number
	int sealCounter: 0x19C2558, 0x1c, 0x84, 0x28;
	//int isLoadingWithBlackScreen:  0x19c2558, 0x38, 0xC;
	//bool isLoading: 0x01E5CA00, 0x8, 0x3c, 0x370;
	bool isLoading1: 0x19C27CC, 0x28, 0xF64;
	//bool isLoading2: 0x1E43428, 0x7C, 0xAF4;
	//bool isLoading3: 0x037AC94, 0;
	bool isLoading: 0x19C4B2C;
	bool isLoading2: 0x19C4C0C;
	bool isLoading3: 0x167242C, 0x1fc, 0xb44;	//"Fable3.exe"+0167242C, 1FC, B44
	bool starter: 0x19BE330;
	int questComplete: 0x19CA154, 0x1c4, 0x4, 0x58, 0x184, 0x24;
}


startup{
	//settings.Add("Test");
}

start{
	if (current.starter && current.sealCounter == 0){
		return true;
	}
}

update{
/*	if(settings["Split All Quests"] == true){
		settings["Main Quests"] = false; 
	}*/

	print(current.questComplete + " + " + old.questComplete);
}

isLoading{
	return current.isLoading || current.isLoading1 || current.isLoading3;
}

split {	
	//return current.questComplete > old.questComplete && current.questComplete != 257;
	if(current.questComplete == old.questComplete+1){
		return true;
	}
}