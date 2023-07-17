// Copyright Epic Games, Inc. All Rights Reserved.
/*===========================================================================
	Generated code exported from UnrealHeaderTool.
	DO NOT modify this manually! Edit the corresponding .h files instead!
===========================================================================*/

#include "UObject/GeneratedCppIncludes.h"
#include "UnLuaEditor/Private/UnLuaEditorSettings.h"
#ifdef _MSC_VER
#pragma warning (push)
#pragma warning (disable : 4883)
#endif
PRAGMA_DISABLE_DEPRECATION_WARNINGS
void EmptyLinkFunctionForGeneratedCodeUnLuaEditorSettings() {}
// Cross Module References
	UNLUAEDITOR_API UEnum* Z_Construct_UEnum_UnLuaEditor_EHotReloadMode();
	UPackage* Z_Construct_UPackage__Script_UnLuaEditor();
	UNLUAEDITOR_API UEnum* Z_Construct_UEnum_UnLuaEditor_EUpdateMode();
	UNLUAEDITOR_API UClass* Z_Construct_UClass_UUnLuaEditorSettings_NoRegister();
	UNLUAEDITOR_API UClass* Z_Construct_UClass_UUnLuaEditorSettings();
	COREUOBJECT_API UClass* Z_Construct_UClass_UObject();
// End Cross Module References
	static UEnum* EHotReloadMode_StaticEnum()
	{
		static UEnum* Singleton = nullptr;
		if (!Singleton)
		{
			Singleton = GetStaticEnum(Z_Construct_UEnum_UnLuaEditor_EHotReloadMode, Z_Construct_UPackage__Script_UnLuaEditor(), TEXT("EHotReloadMode"));
		}
		return Singleton;
	}
	template<> UNLUAEDITOR_API UEnum* StaticEnum<EHotReloadMode>()
	{
		return EHotReloadMode_StaticEnum();
	}
	static FCompiledInDeferEnum Z_CompiledInDeferEnum_UEnum_EHotReloadMode(EHotReloadMode_StaticEnum, TEXT("/Script/UnLuaEditor"), TEXT("EHotReloadMode"), false, nullptr, nullptr);
	uint32 Get_Z_Construct_UEnum_UnLuaEditor_EHotReloadMode_Hash() { return 4142655838U; }
	UEnum* Z_Construct_UEnum_UnLuaEditor_EHotReloadMode()
	{
#if WITH_HOT_RELOAD
		UPackage* Outer = Z_Construct_UPackage__Script_UnLuaEditor();
		static UEnum* ReturnEnum = FindExistingEnumIfHotReloadOrDynamic(Outer, TEXT("EHotReloadMode"), 0, Get_Z_Construct_UEnum_UnLuaEditor_EHotReloadMode_Hash(), false);
#else
		static UEnum* ReturnEnum = nullptr;
#endif // WITH_HOT_RELOAD
		if (!ReturnEnum)
		{
			static const UE4CodeGen_Private::FEnumeratorParam Enumerators[] = {
				{ "EHotReloadMode::Manual", (int64)EHotReloadMode::Manual },
				{ "EHotReloadMode::Auto", (int64)EHotReloadMode::Auto },
				{ "EHotReloadMode::Never", (int64)EHotReloadMode::Never },
			};
#if WITH_METADATA
			const UE4CodeGen_Private::FMetaDataPairParam Enum_MetaDataParams[] = {
				{ "Auto.Name", "EHotReloadMode::Auto" },
				{ "Manual.Name", "EHotReloadMode::Manual" },
				{ "ModuleRelativePath", "Private/UnLuaEditorSettings.h" },
				{ "Never.Name", "EHotReloadMode::Never" },
			};
#endif
			static const UE4CodeGen_Private::FEnumParams EnumParams = {
				(UObject*(*)())Z_Construct_UPackage__Script_UnLuaEditor,
				nullptr,
				"EHotReloadMode",
				"EHotReloadMode",
				Enumerators,
				UE_ARRAY_COUNT(Enumerators),
				RF_Public|RF_Transient|RF_MarkAsNative,
				EEnumFlags::None,
				UE4CodeGen_Private::EDynamicType::NotDynamic,
				(uint8)UEnum::ECppForm::EnumClass,
				METADATA_PARAMS(Enum_MetaDataParams, UE_ARRAY_COUNT(Enum_MetaDataParams))
			};
			UE4CodeGen_Private::ConstructUEnum(ReturnEnum, EnumParams);
		}
		return ReturnEnum;
	}
	static UEnum* EUpdateMode_StaticEnum()
	{
		static UEnum* Singleton = nullptr;
		if (!Singleton)
		{
			Singleton = GetStaticEnum(Z_Construct_UEnum_UnLuaEditor_EUpdateMode, Z_Construct_UPackage__Script_UnLuaEditor(), TEXT("EUpdateMode"));
		}
		return Singleton;
	}
	template<> UNLUAEDITOR_API UEnum* StaticEnum<EUpdateMode>()
	{
		return EUpdateMode_StaticEnum();
	}
	static FCompiledInDeferEnum Z_CompiledInDeferEnum_UEnum_EUpdateMode(EUpdateMode_StaticEnum, TEXT("/Script/UnLuaEditor"), TEXT("EUpdateMode"), false, nullptr, nullptr);
	uint32 Get_Z_Construct_UEnum_UnLuaEditor_EUpdateMode_Hash() { return 1329837896U; }
	UEnum* Z_Construct_UEnum_UnLuaEditor_EUpdateMode()
	{
#if WITH_HOT_RELOAD
		UPackage* Outer = Z_Construct_UPackage__Script_UnLuaEditor();
		static UEnum* ReturnEnum = FindExistingEnumIfHotReloadOrDynamic(Outer, TEXT("EUpdateMode"), 0, Get_Z_Construct_UEnum_UnLuaEditor_EUpdateMode_Hash(), false);
#else
		static UEnum* ReturnEnum = nullptr;
#endif // WITH_HOT_RELOAD
		if (!ReturnEnum)
		{
			static const UE4CodeGen_Private::FEnumeratorParam Enumerators[] = {
				{ "EUpdateMode::Start", (int64)EUpdateMode::Start },
				{ "EUpdateMode::Manual", (int64)EUpdateMode::Manual },
				{ "EUpdateMode::None", (int64)EUpdateMode::None },
			};
#if WITH_METADATA
			const UE4CodeGen_Private::FMetaDataPairParam Enum_MetaDataParams[] = {
				{ "Manual.Name", "EUpdateMode::Manual" },
				{ "ModuleRelativePath", "Private/UnLuaEditorSettings.h" },
				{ "None.Name", "EUpdateMode::None" },
				{ "Start.Name", "EUpdateMode::Start" },
			};
#endif
			static const UE4CodeGen_Private::FEnumParams EnumParams = {
				(UObject*(*)())Z_Construct_UPackage__Script_UnLuaEditor,
				nullptr,
				"EUpdateMode",
				"EUpdateMode",
				Enumerators,
				UE_ARRAY_COUNT(Enumerators),
				RF_Public|RF_Transient|RF_MarkAsNative,
				EEnumFlags::None,
				UE4CodeGen_Private::EDynamicType::NotDynamic,
				(uint8)UEnum::ECppForm::EnumClass,
				METADATA_PARAMS(Enum_MetaDataParams, UE_ARRAY_COUNT(Enum_MetaDataParams))
			};
			UE4CodeGen_Private::ConstructUEnum(ReturnEnum, EnumParams);
		}
		return ReturnEnum;
	}
	void UUnLuaEditorSettings::StaticRegisterNativesUUnLuaEditorSettings()
	{
	}
	UClass* Z_Construct_UClass_UUnLuaEditorSettings_NoRegister()
	{
		return UUnLuaEditorSettings::StaticClass();
	}
	struct Z_Construct_UClass_UUnLuaEditorSettings_Statics
	{
		static UObject* (*const DependentSingletons[])();
#if WITH_METADATA
		static const UE4CodeGen_Private::FMetaDataPairParam Class_MetaDataParams[];
#endif
		static const UE4CodeGen_Private::FBytePropertyParams NewProp_HotReloadMode_Underlying;
#if WITH_METADATA
		static const UE4CodeGen_Private::FMetaDataPairParam NewProp_HotReloadMode_MetaData[];
#endif
		static const UE4CodeGen_Private::FEnumPropertyParams NewProp_HotReloadMode;
#if WITH_METADATA
		static const UE4CodeGen_Private::FMetaDataPairParam NewProp_bGenerateIntelliSense_MetaData[];
#endif
		static void NewProp_bGenerateIntelliSense_SetBit(void* Obj);
		static const UE4CodeGen_Private::FBoolPropertyParams NewProp_bGenerateIntelliSense;
#if WITH_METADATA
		static const UE4CodeGen_Private::FMetaDataPairParam NewProp_bAutoStartup_MetaData[];
#endif
		static void NewProp_bAutoStartup_SetBit(void* Obj);
		static const UE4CodeGen_Private::FBoolPropertyParams NewProp_bAutoStartup;
#if WITH_METADATA
		static const UE4CodeGen_Private::FMetaDataPairParam NewProp_bEnableDebug_MetaData[];
#endif
		static void NewProp_bEnableDebug_SetBit(void* Obj);
		static const UE4CodeGen_Private::FBoolPropertyParams NewProp_bEnableDebug;
#if WITH_METADATA
		static const UE4CodeGen_Private::FMetaDataPairParam NewProp_bEnableUnrealInsights_MetaData[];
#endif
		static void NewProp_bEnableUnrealInsights_SetBit(void* Obj);
		static const UE4CodeGen_Private::FBoolPropertyParams NewProp_bEnableUnrealInsights;
#if WITH_METADATA
		static const UE4CodeGen_Private::FMetaDataPairParam NewProp_bEnablePersistentParamBuffer_MetaData[];
#endif
		static void NewProp_bEnablePersistentParamBuffer_SetBit(void* Obj);
		static const UE4CodeGen_Private::FBoolPropertyParams NewProp_bEnablePersistentParamBuffer;
#if WITH_METADATA
		static const UE4CodeGen_Private::FMetaDataPairParam NewProp_bEnableTypeChecking_MetaData[];
#endif
		static void NewProp_bEnableTypeChecking_SetBit(void* Obj);
		static const UE4CodeGen_Private::FBoolPropertyParams NewProp_bEnableTypeChecking;
#if WITH_METADATA
		static const UE4CodeGen_Private::FMetaDataPairParam NewProp_bEnableCallOverriddenFunction_MetaData[];
#endif
		static void NewProp_bEnableCallOverriddenFunction_SetBit(void* Obj);
		static const UE4CodeGen_Private::FBoolPropertyParams NewProp_bEnableCallOverriddenFunction;
#if WITH_METADATA
		static const UE4CodeGen_Private::FMetaDataPairParam NewProp_bEnableFText_MetaData[];
#endif
		static void NewProp_bEnableFText_SetBit(void* Obj);
		static const UE4CodeGen_Private::FBoolPropertyParams NewProp_bEnableFText;
#if WITH_METADATA
		static const UE4CodeGen_Private::FMetaDataPairParam NewProp_bLuaCompileAsCpp_MetaData[];
#endif
		static void NewProp_bLuaCompileAsCpp_SetBit(void* Obj);
		static const UE4CodeGen_Private::FBoolPropertyParams NewProp_bLuaCompileAsCpp;
#if WITH_METADATA
		static const UE4CodeGen_Private::FMetaDataPairParam NewProp_LuaVersion_MetaData[];
#endif
		static const UE4CodeGen_Private::FStrPropertyParams NewProp_LuaVersion;
#if WITH_METADATA
		static const UE4CodeGen_Private::FMetaDataPairParam NewProp_bWithUE4Namespace_MetaData[];
#endif
		static void NewProp_bWithUE4Namespace_SetBit(void* Obj);
		static const UE4CodeGen_Private::FBoolPropertyParams NewProp_bWithUE4Namespace;
#if WITH_METADATA
		static const UE4CodeGen_Private::FMetaDataPairParam NewProp_bLegacyReturnOrder_MetaData[];
#endif
		static void NewProp_bLegacyReturnOrder_SetBit(void* Obj);
		static const UE4CodeGen_Private::FBoolPropertyParams NewProp_bLegacyReturnOrder;
#if WITH_METADATA
		static const UE4CodeGen_Private::FMetaDataPairParam NewProp_bLegacyBlueprintPath_MetaData[];
#endif
		static void NewProp_bLegacyBlueprintPath_SetBit(void* Obj);
		static const UE4CodeGen_Private::FBoolPropertyParams NewProp_bLegacyBlueprintPath;
#if WITH_METADATA
		static const UE4CodeGen_Private::FMetaDataPairParam NewProp_bLegacyAllowUTF8WithBOM_MetaData[];
#endif
		static void NewProp_bLegacyAllowUTF8WithBOM_SetBit(void* Obj);
		static const UE4CodeGen_Private::FBoolPropertyParams NewProp_bLegacyAllowUTF8WithBOM;
#if WITH_METADATA
		static const UE4CodeGen_Private::FMetaDataPairParam NewProp_bLegacyArgsPassing_MetaData[];
#endif
		static void NewProp_bLegacyArgsPassing_SetBit(void* Obj);
		static const UE4CodeGen_Private::FBoolPropertyParams NewProp_bLegacyArgsPassing;
		static const UE4CodeGen_Private::FBytePropertyParams NewProp_UpdateMode_Underlying;
#if WITH_METADATA
		static const UE4CodeGen_Private::FMetaDataPairParam NewProp_UpdateMode_MetaData[];
#endif
		static const UE4CodeGen_Private::FEnumPropertyParams NewProp_UpdateMode;
		static const UE4CodeGen_Private::FPropertyParamsBase* const PropPointers[];
		static const FCppClassTypeInfoStatic StaticCppClassTypeInfo;
		static const UE4CodeGen_Private::FClassParams ClassParams;
	};
	UObject* (*const Z_Construct_UClass_UUnLuaEditorSettings_Statics::DependentSingletons[])() = {
		(UObject* (*)())Z_Construct_UClass_UObject,
		(UObject* (*)())Z_Construct_UPackage__Script_UnLuaEditor,
	};
#if WITH_METADATA
	const UE4CodeGen_Private::FMetaDataPairParam Z_Construct_UClass_UUnLuaEditorSettings_Statics::Class_MetaDataParams[] = {
		{ "DisplayName", "UnLuaEditor" },
		{ "IncludePath", "UnLuaEditorSettings.h" },
		{ "ModuleRelativePath", "Private/UnLuaEditorSettings.h" },
	};
#endif
	const UE4CodeGen_Private::FBytePropertyParams Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_HotReloadMode_Underlying = { "UnderlyingType", nullptr, (EPropertyFlags)0x0000000000000000, UE4CodeGen_Private::EPropertyGenFlags::Byte, RF_Public|RF_Transient|RF_MarkAsNative, 1, 0, nullptr, METADATA_PARAMS(nullptr, 0) };
#if WITH_METADATA
	const UE4CodeGen_Private::FMetaDataPairParam Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_HotReloadMode_MetaData[] = {
		{ "Category", "Coding" },
		{ "Comment", "/** Pick a method for lua hot-reload. */" },
		{ "defaultValue", "0" },
		{ "ModuleRelativePath", "Private/UnLuaEditorSettings.h" },
		{ "ToolTip", "Pick a method for lua hot-reload." },
	};
#endif
	const UE4CodeGen_Private::FEnumPropertyParams Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_HotReloadMode = { "HotReloadMode", nullptr, (EPropertyFlags)0x0010000000004001, UE4CodeGen_Private::EPropertyGenFlags::Enum, RF_Public|RF_Transient|RF_MarkAsNative, 1, STRUCT_OFFSET(UUnLuaEditorSettings, HotReloadMode), Z_Construct_UEnum_UnLuaEditor_EHotReloadMode, METADATA_PARAMS(Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_HotReloadMode_MetaData, UE_ARRAY_COUNT(Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_HotReloadMode_MetaData)) };
#if WITH_METADATA
	const UE4CodeGen_Private::FMetaDataPairParam Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_bGenerateIntelliSense_MetaData[] = {
		{ "Category", "Coding" },
		{ "Comment", "/** Whether or not generate intellisense files for lua. */" },
		{ "ModuleRelativePath", "Private/UnLuaEditorSettings.h" },
		{ "ToolTip", "Whether or not generate intellisense files for lua." },
	};
#endif
	void Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_bGenerateIntelliSense_SetBit(void* Obj)
	{
		((UUnLuaEditorSettings*)Obj)->bGenerateIntelliSense = 1;
	}
	const UE4CodeGen_Private::FBoolPropertyParams Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_bGenerateIntelliSense = { "bGenerateIntelliSense", nullptr, (EPropertyFlags)0x0010000000004001, UE4CodeGen_Private::EPropertyGenFlags::Bool | UE4CodeGen_Private::EPropertyGenFlags::NativeBool, RF_Public|RF_Transient|RF_MarkAsNative, 1, sizeof(bool), sizeof(UUnLuaEditorSettings), &Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_bGenerateIntelliSense_SetBit, METADATA_PARAMS(Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_bGenerateIntelliSense_MetaData, UE_ARRAY_COUNT(Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_bGenerateIntelliSense_MetaData)) };
#if WITH_METADATA
	const UE4CodeGen_Private::FMetaDataPairParam Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_bAutoStartup_MetaData[] = {
		{ "Category", "Build" },
		{ "Comment", "/** Whether or not startup UnLua module on game start. (Requires restart to take effect) */" },
		{ "ModuleRelativePath", "Private/UnLuaEditorSettings.h" },
		{ "ToolTip", "Whether or not startup UnLua module on game start. (Requires restart to take effect)" },
	};
#endif
	void Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_bAutoStartup_SetBit(void* Obj)
	{
		((UUnLuaEditorSettings*)Obj)->bAutoStartup = 1;
	}
	const UE4CodeGen_Private::FBoolPropertyParams Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_bAutoStartup = { "bAutoStartup", nullptr, (EPropertyFlags)0x0010000000004001, UE4CodeGen_Private::EPropertyGenFlags::Bool | UE4CodeGen_Private::EPropertyGenFlags::NativeBool, RF_Public|RF_Transient|RF_MarkAsNative, 1, sizeof(bool), sizeof(UUnLuaEditorSettings), &Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_bAutoStartup_SetBit, METADATA_PARAMS(Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_bAutoStartup_MetaData, UE_ARRAY_COUNT(Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_bAutoStartup_MetaData)) };
#if WITH_METADATA
	const UE4CodeGen_Private::FMetaDataPairParam Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_bEnableDebug_MetaData[] = {
		{ "Category", "Build" },
		{ "Comment", "/** Enable UnLua debug routine codes. (Requires restart to take effect) */" },
		{ "ModuleRelativePath", "Private/UnLuaEditorSettings.h" },
		{ "ToolTip", "Enable UnLua debug routine codes. (Requires restart to take effect)" },
	};
#endif
	void Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_bEnableDebug_SetBit(void* Obj)
	{
		((UUnLuaEditorSettings*)Obj)->bEnableDebug = 1;
	}
	const UE4CodeGen_Private::FBoolPropertyParams Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_bEnableDebug = { "bEnableDebug", nullptr, (EPropertyFlags)0x0010000000004001, UE4CodeGen_Private::EPropertyGenFlags::Bool | UE4CodeGen_Private::EPropertyGenFlags::NativeBool, RF_Public|RF_Transient|RF_MarkAsNative, 1, sizeof(bool), sizeof(UUnLuaEditorSettings), &Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_bEnableDebug_SetBit, METADATA_PARAMS(Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_bEnableDebug_MetaData, UE_ARRAY_COUNT(Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_bEnableDebug_MetaData)) };
#if WITH_METADATA
	const UE4CodeGen_Private::FMetaDataPairParam Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_bEnableUnrealInsights_MetaData[] = {
		{ "Category", "Build" },
		{ "Comment", "/** Enable Unreal Insights to profile call performance. (Requires restart to take effect) */" },
		{ "ModuleRelativePath", "Private/UnLuaEditorSettings.h" },
		{ "ToolTip", "Enable Unreal Insights to profile call performance. (Requires restart to take effect)" },
	};
#endif
	void Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_bEnableUnrealInsights_SetBit(void* Obj)
	{
		((UUnLuaEditorSettings*)Obj)->bEnableUnrealInsights = 1;
	}
	const UE4CodeGen_Private::FBoolPropertyParams Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_bEnableUnrealInsights = { "bEnableUnrealInsights", nullptr, (EPropertyFlags)0x0010000000004001, UE4CodeGen_Private::EPropertyGenFlags::Bool | UE4CodeGen_Private::EPropertyGenFlags::NativeBool, RF_Public|RF_Transient|RF_MarkAsNative, 1, sizeof(bool), sizeof(UUnLuaEditorSettings), &Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_bEnableUnrealInsights_SetBit, METADATA_PARAMS(Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_bEnableUnrealInsights_MetaData, UE_ARRAY_COUNT(Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_bEnableUnrealInsights_MetaData)) };
#if WITH_METADATA
	const UE4CodeGen_Private::FMetaDataPairParam Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_bEnablePersistentParamBuffer_MetaData[] = {
		{ "Category", "Build" },
		{ "Comment", "/** Enable persistent buffer for UFunction's parameters. (Requires restart to take effect) */" },
		{ "ModuleRelativePath", "Private/UnLuaEditorSettings.h" },
		{ "ToolTip", "Enable persistent buffer for UFunction's parameters. (Requires restart to take effect)" },
	};
#endif
	void Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_bEnablePersistentParamBuffer_SetBit(void* Obj)
	{
		((UUnLuaEditorSettings*)Obj)->bEnablePersistentParamBuffer = 1;
	}
	const UE4CodeGen_Private::FBoolPropertyParams Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_bEnablePersistentParamBuffer = { "bEnablePersistentParamBuffer", nullptr, (EPropertyFlags)0x0010000000004001, UE4CodeGen_Private::EPropertyGenFlags::Bool | UE4CodeGen_Private::EPropertyGenFlags::NativeBool, RF_Public|RF_Transient|RF_MarkAsNative, 1, sizeof(bool), sizeof(UUnLuaEditorSettings), &Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_bEnablePersistentParamBuffer_SetBit, METADATA_PARAMS(Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_bEnablePersistentParamBuffer_MetaData, UE_ARRAY_COUNT(Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_bEnablePersistentParamBuffer_MetaData)) };
#if WITH_METADATA
	const UE4CodeGen_Private::FMetaDataPairParam Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_bEnableTypeChecking_MetaData[] = {
		{ "Category", "Build" },
		{ "Comment", "/** Enable type checking at lua runtime. (Requires restart to take effect) */" },
		{ "ModuleRelativePath", "Private/UnLuaEditorSettings.h" },
		{ "ToolTip", "Enable type checking at lua runtime. (Requires restart to take effect)" },
	};
#endif
	void Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_bEnableTypeChecking_SetBit(void* Obj)
	{
		((UUnLuaEditorSettings*)Obj)->bEnableTypeChecking = 1;
	}
	const UE4CodeGen_Private::FBoolPropertyParams Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_bEnableTypeChecking = { "bEnableTypeChecking", nullptr, (EPropertyFlags)0x0010000000004001, UE4CodeGen_Private::EPropertyGenFlags::Bool | UE4CodeGen_Private::EPropertyGenFlags::NativeBool, RF_Public|RF_Transient|RF_MarkAsNative, 1, sizeof(bool), sizeof(UUnLuaEditorSettings), &Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_bEnableTypeChecking_SetBit, METADATA_PARAMS(Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_bEnableTypeChecking_MetaData, UE_ARRAY_COUNT(Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_bEnableTypeChecking_MetaData)) };
#if WITH_METADATA
	const UE4CodeGen_Private::FMetaDataPairParam Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_bEnableCallOverriddenFunction_MetaData[] = {
		{ "Category", "Build" },
		{ "Comment", "/** Enable 'Overridden' support at lua runtime. (Requires restart to take effect) */" },
		{ "ModuleRelativePath", "Private/UnLuaEditorSettings.h" },
		{ "ToolTip", "Enable 'Overridden' support at lua runtime. (Requires restart to take effect)" },
	};
#endif
	void Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_bEnableCallOverriddenFunction_SetBit(void* Obj)
	{
		((UUnLuaEditorSettings*)Obj)->bEnableCallOverriddenFunction = 1;
	}
	const UE4CodeGen_Private::FBoolPropertyParams Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_bEnableCallOverriddenFunction = { "bEnableCallOverriddenFunction", nullptr, (EPropertyFlags)0x0010000000004001, UE4CodeGen_Private::EPropertyGenFlags::Bool | UE4CodeGen_Private::EPropertyGenFlags::NativeBool, RF_Public|RF_Transient|RF_MarkAsNative, 1, sizeof(bool), sizeof(UUnLuaEditorSettings), &Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_bEnableCallOverriddenFunction_SetBit, METADATA_PARAMS(Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_bEnableCallOverriddenFunction_MetaData, UE_ARRAY_COUNT(Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_bEnableCallOverriddenFunction_MetaData)) };
#if WITH_METADATA
	const UE4CodeGen_Private::FMetaDataPairParam Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_bEnableFText_MetaData[] = {
		{ "Category", "Build" },
		{ "Comment", "/** Enable FText support at lua runtime which will no longer be treated as a string. (Requires restart to take effect) */" },
		{ "ModuleRelativePath", "Private/UnLuaEditorSettings.h" },
		{ "ToolTip", "Enable FText support at lua runtime which will no longer be treated as a string. (Requires restart to take effect)" },
	};
#endif
	void Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_bEnableFText_SetBit(void* Obj)
	{
		((UUnLuaEditorSettings*)Obj)->bEnableFText = 1;
	}
	const UE4CodeGen_Private::FBoolPropertyParams Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_bEnableFText = { "bEnableFText", nullptr, (EPropertyFlags)0x0010000000004001, UE4CodeGen_Private::EPropertyGenFlags::Bool | UE4CodeGen_Private::EPropertyGenFlags::NativeBool, RF_Public|RF_Transient|RF_MarkAsNative, 1, sizeof(bool), sizeof(UUnLuaEditorSettings), &Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_bEnableFText_SetBit, METADATA_PARAMS(Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_bEnableFText_MetaData, UE_ARRAY_COUNT(Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_bEnableFText_MetaData)) };
#if WITH_METADATA
	const UE4CodeGen_Private::FMetaDataPairParam Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_bLuaCompileAsCpp_MetaData[] = {
		{ "Category", "Build" },
		{ "Comment", "/** Whether or not compile lua module as c++ code. (Requires restart to take effect) */" },
		{ "ModuleRelativePath", "Private/UnLuaEditorSettings.h" },
		{ "ToolTip", "Whether or not compile lua module as c++ code. (Requires restart to take effect)" },
	};
#endif
	void Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_bLuaCompileAsCpp_SetBit(void* Obj)
	{
		((UUnLuaEditorSettings*)Obj)->bLuaCompileAsCpp = 1;
	}
	const UE4CodeGen_Private::FBoolPropertyParams Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_bLuaCompileAsCpp = { "bLuaCompileAsCpp", nullptr, (EPropertyFlags)0x0010000000004001, UE4CodeGen_Private::EPropertyGenFlags::Bool | UE4CodeGen_Private::EPropertyGenFlags::NativeBool, RF_Public|RF_Transient|RF_MarkAsNative, 1, sizeof(bool), sizeof(UUnLuaEditorSettings), &Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_bLuaCompileAsCpp_SetBit, METADATA_PARAMS(Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_bLuaCompileAsCpp_MetaData, UE_ARRAY_COUNT(Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_bLuaCompileAsCpp_MetaData)) };
#if WITH_METADATA
	const UE4CodeGen_Private::FMetaDataPairParam Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_LuaVersion_MetaData[] = {
		{ "Category", "Build" },
		{ "Comment", "/** Use the specified lua version. (Requires restart to take effect) */" },
		{ "ModuleRelativePath", "Private/UnLuaEditorSettings.h" },
		{ "ToolTip", "Use the specified lua version. (Requires restart to take effect)" },
	};
#endif
	const UE4CodeGen_Private::FStrPropertyParams Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_LuaVersion = { "LuaVersion", nullptr, (EPropertyFlags)0x0010000000004001, UE4CodeGen_Private::EPropertyGenFlags::Str, RF_Public|RF_Transient|RF_MarkAsNative, 1, STRUCT_OFFSET(UUnLuaEditorSettings, LuaVersion), METADATA_PARAMS(Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_LuaVersion_MetaData, UE_ARRAY_COUNT(Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_LuaVersion_MetaData)) };
#if WITH_METADATA
	const UE4CodeGen_Private::FMetaDataPairParam Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_bWithUE4Namespace_MetaData[] = {
		{ "Category", "Legacy" },
		{ "Comment", "/** Create UE4 global table on lua env. (Requires restart to take effect) */" },
		{ "ModuleRelativePath", "Private/UnLuaEditorSettings.h" },
		{ "ToolTip", "Create UE4 global table on lua env. (Requires restart to take effect)" },
	};
#endif
	void Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_bWithUE4Namespace_SetBit(void* Obj)
	{
		((UUnLuaEditorSettings*)Obj)->bWithUE4Namespace = 1;
	}
	const UE4CodeGen_Private::FBoolPropertyParams Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_bWithUE4Namespace = { "bWithUE4Namespace", nullptr, (EPropertyFlags)0x0010000000004001, UE4CodeGen_Private::EPropertyGenFlags::Bool | UE4CodeGen_Private::EPropertyGenFlags::NativeBool, RF_Public|RF_Transient|RF_MarkAsNative, 1, sizeof(bool), sizeof(UUnLuaEditorSettings), &Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_bWithUE4Namespace_SetBit, METADATA_PARAMS(Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_bWithUE4Namespace_MetaData, UE_ARRAY_COUNT(Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_bWithUE4Namespace_MetaData)) };
#if WITH_METADATA
	const UE4CodeGen_Private::FMetaDataPairParam Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_bLegacyReturnOrder_MetaData[] = {
		{ "Category", "Legacy" },
		{ "Comment", "/** Place out parameters before return value. (Requires restart to take effect) */" },
		{ "ModuleRelativePath", "Private/UnLuaEditorSettings.h" },
		{ "ToolTip", "Place out parameters before return value. (Requires restart to take effect)" },
	};
#endif
	void Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_bLegacyReturnOrder_SetBit(void* Obj)
	{
		((UUnLuaEditorSettings*)Obj)->bLegacyReturnOrder = 1;
	}
	const UE4CodeGen_Private::FBoolPropertyParams Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_bLegacyReturnOrder = { "bLegacyReturnOrder", nullptr, (EPropertyFlags)0x0010000000004001, UE4CodeGen_Private::EPropertyGenFlags::Bool | UE4CodeGen_Private::EPropertyGenFlags::NativeBool, RF_Public|RF_Transient|RF_MarkAsNative, 1, sizeof(bool), sizeof(UUnLuaEditorSettings), &Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_bLegacyReturnOrder_SetBit, METADATA_PARAMS(Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_bLegacyReturnOrder_MetaData, UE_ARRAY_COUNT(Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_bLegacyReturnOrder_MetaData)) };
#if WITH_METADATA
	const UE4CodeGen_Private::FMetaDataPairParam Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_bLegacyBlueprintPath_MetaData[] = {
		{ "Category", "Legacy" },
		{ "Comment", "/** Auto append '_C' to blueprint class path. (Requires restart to take effect) */" },
		{ "ModuleRelativePath", "Private/UnLuaEditorSettings.h" },
		{ "ToolTip", "Auto append '_C' to blueprint class path. (Requires restart to take effect)" },
	};
#endif
	void Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_bLegacyBlueprintPath_SetBit(void* Obj)
	{
		((UUnLuaEditorSettings*)Obj)->bLegacyBlueprintPath = 1;
	}
	const UE4CodeGen_Private::FBoolPropertyParams Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_bLegacyBlueprintPath = { "bLegacyBlueprintPath", nullptr, (EPropertyFlags)0x0010000000004001, UE4CodeGen_Private::EPropertyGenFlags::Bool | UE4CodeGen_Private::EPropertyGenFlags::NativeBool, RF_Public|RF_Transient|RF_MarkAsNative, 1, sizeof(bool), sizeof(UUnLuaEditorSettings), &Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_bLegacyBlueprintPath_SetBit, METADATA_PARAMS(Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_bLegacyBlueprintPath_MetaData, UE_ARRAY_COUNT(Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_bLegacyBlueprintPath_MetaData)) };
#if WITH_METADATA
	const UE4CodeGen_Private::FMetaDataPairParam Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_bLegacyAllowUTF8WithBOM_MetaData[] = {
		{ "Category", "Legacy" },
		{ "Comment", "/** Allow lua file with UTF-8 BOM header. (Requires restart to take effect) */" },
		{ "ModuleRelativePath", "Private/UnLuaEditorSettings.h" },
		{ "ToolTip", "Allow lua file with UTF-8 BOM header. (Requires restart to take effect)" },
	};
#endif
	void Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_bLegacyAllowUTF8WithBOM_SetBit(void* Obj)
	{
		((UUnLuaEditorSettings*)Obj)->bLegacyAllowUTF8WithBOM = 1;
	}
	const UE4CodeGen_Private::FBoolPropertyParams Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_bLegacyAllowUTF8WithBOM = { "bLegacyAllowUTF8WithBOM", nullptr, (EPropertyFlags)0x0010000000004001, UE4CodeGen_Private::EPropertyGenFlags::Bool | UE4CodeGen_Private::EPropertyGenFlags::NativeBool, RF_Public|RF_Transient|RF_MarkAsNative, 1, sizeof(bool), sizeof(UUnLuaEditorSettings), &Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_bLegacyAllowUTF8WithBOM_SetBit, METADATA_PARAMS(Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_bLegacyAllowUTF8WithBOM_MetaData, UE_ARRAY_COUNT(Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_bLegacyAllowUTF8WithBOM_MetaData)) };
#if WITH_METADATA
	const UE4CodeGen_Private::FMetaDataPairParam Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_bLegacyArgsPassing_MetaData[] = {
		{ "Category", "Legacy" },
		{ "Comment", "/** Arguments are passed to lua by pointer when called from UE. (Requires restart to take effect) */" },
		{ "ModuleRelativePath", "Private/UnLuaEditorSettings.h" },
		{ "ToolTip", "Arguments are passed to lua by pointer when called from UE. (Requires restart to take effect)" },
	};
#endif
	void Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_bLegacyArgsPassing_SetBit(void* Obj)
	{
		((UUnLuaEditorSettings*)Obj)->bLegacyArgsPassing = 1;
	}
	const UE4CodeGen_Private::FBoolPropertyParams Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_bLegacyArgsPassing = { "bLegacyArgsPassing", nullptr, (EPropertyFlags)0x0010000000004001, UE4CodeGen_Private::EPropertyGenFlags::Bool | UE4CodeGen_Private::EPropertyGenFlags::NativeBool, RF_Public|RF_Transient|RF_MarkAsNative, 1, sizeof(bool), sizeof(UUnLuaEditorSettings), &Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_bLegacyArgsPassing_SetBit, METADATA_PARAMS(Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_bLegacyArgsPassing_MetaData, UE_ARRAY_COUNT(Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_bLegacyArgsPassing_MetaData)) };
	const UE4CodeGen_Private::FBytePropertyParams Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_UpdateMode_Underlying = { "UnderlyingType", nullptr, (EPropertyFlags)0x0000000000000000, UE4CodeGen_Private::EPropertyGenFlags::Byte, RF_Public|RF_Transient|RF_MarkAsNative, 1, 0, nullptr, METADATA_PARAMS(nullptr, 0) };
#if WITH_METADATA
	const UE4CodeGen_Private::FMetaDataPairParam Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_UpdateMode_MetaData[] = {
		{ "Category", "System" },
		{ "defaultValue", "0" },
		{ "ModuleRelativePath", "Private/UnLuaEditorSettings.h" },
	};
#endif
	const UE4CodeGen_Private::FEnumPropertyParams Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_UpdateMode = { "UpdateMode", nullptr, (EPropertyFlags)0x0010000000004001, UE4CodeGen_Private::EPropertyGenFlags::Enum, RF_Public|RF_Transient|RF_MarkAsNative, 1, STRUCT_OFFSET(UUnLuaEditorSettings, UpdateMode), Z_Construct_UEnum_UnLuaEditor_EUpdateMode, METADATA_PARAMS(Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_UpdateMode_MetaData, UE_ARRAY_COUNT(Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_UpdateMode_MetaData)) };
	const UE4CodeGen_Private::FPropertyParamsBase* const Z_Construct_UClass_UUnLuaEditorSettings_Statics::PropPointers[] = {
		(const UE4CodeGen_Private::FPropertyParamsBase*)&Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_HotReloadMode_Underlying,
		(const UE4CodeGen_Private::FPropertyParamsBase*)&Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_HotReloadMode,
		(const UE4CodeGen_Private::FPropertyParamsBase*)&Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_bGenerateIntelliSense,
		(const UE4CodeGen_Private::FPropertyParamsBase*)&Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_bAutoStartup,
		(const UE4CodeGen_Private::FPropertyParamsBase*)&Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_bEnableDebug,
		(const UE4CodeGen_Private::FPropertyParamsBase*)&Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_bEnableUnrealInsights,
		(const UE4CodeGen_Private::FPropertyParamsBase*)&Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_bEnablePersistentParamBuffer,
		(const UE4CodeGen_Private::FPropertyParamsBase*)&Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_bEnableTypeChecking,
		(const UE4CodeGen_Private::FPropertyParamsBase*)&Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_bEnableCallOverriddenFunction,
		(const UE4CodeGen_Private::FPropertyParamsBase*)&Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_bEnableFText,
		(const UE4CodeGen_Private::FPropertyParamsBase*)&Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_bLuaCompileAsCpp,
		(const UE4CodeGen_Private::FPropertyParamsBase*)&Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_LuaVersion,
		(const UE4CodeGen_Private::FPropertyParamsBase*)&Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_bWithUE4Namespace,
		(const UE4CodeGen_Private::FPropertyParamsBase*)&Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_bLegacyReturnOrder,
		(const UE4CodeGen_Private::FPropertyParamsBase*)&Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_bLegacyBlueprintPath,
		(const UE4CodeGen_Private::FPropertyParamsBase*)&Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_bLegacyAllowUTF8WithBOM,
		(const UE4CodeGen_Private::FPropertyParamsBase*)&Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_bLegacyArgsPassing,
		(const UE4CodeGen_Private::FPropertyParamsBase*)&Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_UpdateMode_Underlying,
		(const UE4CodeGen_Private::FPropertyParamsBase*)&Z_Construct_UClass_UUnLuaEditorSettings_Statics::NewProp_UpdateMode,
	};
	const FCppClassTypeInfoStatic Z_Construct_UClass_UUnLuaEditorSettings_Statics::StaticCppClassTypeInfo = {
		TCppClassTypeTraits<UUnLuaEditorSettings>::IsAbstract,
	};
	const UE4CodeGen_Private::FClassParams Z_Construct_UClass_UUnLuaEditorSettings_Statics::ClassParams = {
		&UUnLuaEditorSettings::StaticClass,
		"UnLuaEditor",
		&StaticCppClassTypeInfo,
		DependentSingletons,
		nullptr,
		Z_Construct_UClass_UUnLuaEditorSettings_Statics::PropPointers,
		nullptr,
		UE_ARRAY_COUNT(DependentSingletons),
		0,
		UE_ARRAY_COUNT(Z_Construct_UClass_UUnLuaEditorSettings_Statics::PropPointers),
		0,
		0x001000A6u,
		METADATA_PARAMS(Z_Construct_UClass_UUnLuaEditorSettings_Statics::Class_MetaDataParams, UE_ARRAY_COUNT(Z_Construct_UClass_UUnLuaEditorSettings_Statics::Class_MetaDataParams))
	};
	UClass* Z_Construct_UClass_UUnLuaEditorSettings()
	{
		static UClass* OuterClass = nullptr;
		if (!OuterClass)
		{
			UE4CodeGen_Private::ConstructUClass(OuterClass, Z_Construct_UClass_UUnLuaEditorSettings_Statics::ClassParams);
		}
		return OuterClass;
	}
	IMPLEMENT_CLASS(UUnLuaEditorSettings, 3138325857);
	template<> UNLUAEDITOR_API UClass* StaticClass<UUnLuaEditorSettings>()
	{
		return UUnLuaEditorSettings::StaticClass();
	}
	static FCompiledInDefer Z_CompiledInDefer_UClass_UUnLuaEditorSettings(Z_Construct_UClass_UUnLuaEditorSettings, &UUnLuaEditorSettings::StaticClass, TEXT("/Script/UnLuaEditor"), TEXT("UUnLuaEditorSettings"), false, nullptr, nullptr, nullptr);
	DEFINE_VTABLE_PTR_HELPER_CTOR(UUnLuaEditorSettings);
PRAGMA_ENABLE_DEPRECATION_WARNINGS
#ifdef _MSC_VER
#pragma warning (pop)
#endif
