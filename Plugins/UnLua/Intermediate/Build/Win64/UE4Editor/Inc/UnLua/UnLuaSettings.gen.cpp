// Copyright Epic Games, Inc. All Rights Reserved.
/*===========================================================================
	Generated code exported from UnrealHeaderTool.
	DO NOT modify this manually! Edit the corresponding .h files instead!
===========================================================================*/

#include "UObject/GeneratedCppIncludes.h"
#include "UnLua/Public/UnLuaSettings.h"
#ifdef _MSC_VER
#pragma warning (push)
#pragma warning (disable : 4883)
#endif
PRAGMA_DISABLE_DEPRECATION_WARNINGS
void EmptyLinkFunctionForGeneratedCodeUnLuaSettings() {}
// Cross Module References
	UNLUA_API UClass* Z_Construct_UClass_UUnLuaSettings_NoRegister();
	UNLUA_API UClass* Z_Construct_UClass_UUnLuaSettings();
	COREUOBJECT_API UClass* Z_Construct_UClass_UObject();
	UPackage* Z_Construct_UPackage__Script_UnLua();
	COREUOBJECT_API UClass* Z_Construct_UClass_UClass();
	UNLUA_API UClass* Z_Construct_UClass_ULuaEnvLocator_NoRegister();
	UNLUA_API UClass* Z_Construct_UClass_ULuaModuleLocator_NoRegister();
	COREUOBJECT_API UScriptStruct* Z_Construct_UScriptStruct_FSoftClassPath();
// End Cross Module References
	void UUnLuaSettings::StaticRegisterNativesUUnLuaSettings()
	{
	}
	UClass* Z_Construct_UClass_UUnLuaSettings_NoRegister()
	{
		return UUnLuaSettings::StaticClass();
	}
	struct Z_Construct_UClass_UUnLuaSettings_Statics
	{
		static UObject* (*const DependentSingletons[])();
#if WITH_METADATA
		static const UE4CodeGen_Private::FMetaDataPairParam Class_MetaDataParams[];
#endif
#if WITH_METADATA
		static const UE4CodeGen_Private::FMetaDataPairParam NewProp_StartupModuleName_MetaData[];
#endif
		static const UE4CodeGen_Private::FStrPropertyParams NewProp_StartupModuleName;
#if WITH_METADATA
		static const UE4CodeGen_Private::FMetaDataPairParam NewProp_DeadLoopCheck_MetaData[];
#endif
		static const UE4CodeGen_Private::FIntPropertyParams NewProp_DeadLoopCheck;
#if WITH_METADATA
		static const UE4CodeGen_Private::FMetaDataPairParam NewProp_DanglingCheck_MetaData[];
#endif
		static void NewProp_DanglingCheck_SetBit(void* Obj);
		static const UE4CodeGen_Private::FBoolPropertyParams NewProp_DanglingCheck;
#if WITH_METADATA
		static const UE4CodeGen_Private::FMetaDataPairParam NewProp_bPrintLuaStackOnSystemError_MetaData[];
#endif
		static void NewProp_bPrintLuaStackOnSystemError_SetBit(void* Obj);
		static const UE4CodeGen_Private::FBoolPropertyParams NewProp_bPrintLuaStackOnSystemError;
#if WITH_METADATA
		static const UE4CodeGen_Private::FMetaDataPairParam NewProp_EnvLocatorClass_MetaData[];
#endif
		static const UE4CodeGen_Private::FClassPropertyParams NewProp_EnvLocatorClass;
#if WITH_METADATA
		static const UE4CodeGen_Private::FMetaDataPairParam NewProp_ModuleLocatorClass_MetaData[];
#endif
		static const UE4CodeGen_Private::FClassPropertyParams NewProp_ModuleLocatorClass;
		static const UE4CodeGen_Private::FStructPropertyParams NewProp_PreBindClasses_Inner;
#if WITH_METADATA
		static const UE4CodeGen_Private::FMetaDataPairParam NewProp_PreBindClasses_MetaData[];
#endif
		static const UE4CodeGen_Private::FArrayPropertyParams NewProp_PreBindClasses;
		static const UE4CodeGen_Private::FPropertyParamsBase* const PropPointers[];
		static const FCppClassTypeInfoStatic StaticCppClassTypeInfo;
		static const UE4CodeGen_Private::FClassParams ClassParams;
	};
	UObject* (*const Z_Construct_UClass_UUnLuaSettings_Statics::DependentSingletons[])() = {
		(UObject* (*)())Z_Construct_UClass_UObject,
		(UObject* (*)())Z_Construct_UPackage__Script_UnLua,
	};
#if WITH_METADATA
	const UE4CodeGen_Private::FMetaDataPairParam Z_Construct_UClass_UUnLuaSettings_Statics::Class_MetaDataParams[] = {
		{ "DisplayName", "UnLua" },
		{ "IncludePath", "UnLuaSettings.h" },
		{ "ModuleRelativePath", "Public/UnLuaSettings.h" },
		{ "ObjectInitializerConstructorDeclared", "" },
	};
#endif
#if WITH_METADATA
	const UE4CodeGen_Private::FMetaDataPairParam Z_Construct_UClass_UUnLuaSettings_Statics::NewProp_StartupModuleName_MetaData[] = {
		{ "Category", "Runtime" },
		{ "Comment", "/** Entry module name of lua env. Leave it empty to skip execution on startup. */" },
		{ "ModuleRelativePath", "Public/UnLuaSettings.h" },
		{ "ToolTip", "Entry module name of lua env. Leave it empty to skip execution on startup." },
	};
#endif
	const UE4CodeGen_Private::FStrPropertyParams Z_Construct_UClass_UUnLuaSettings_Statics::NewProp_StartupModuleName = { "StartupModuleName", nullptr, (EPropertyFlags)0x0010000000004001, UE4CodeGen_Private::EPropertyGenFlags::Str, RF_Public|RF_Transient|RF_MarkAsNative, 1, STRUCT_OFFSET(UUnLuaSettings, StartupModuleName), METADATA_PARAMS(Z_Construct_UClass_UUnLuaSettings_Statics::NewProp_StartupModuleName_MetaData, UE_ARRAY_COUNT(Z_Construct_UClass_UUnLuaSettings_Statics::NewProp_StartupModuleName_MetaData)) };
#if WITH_METADATA
	const UE4CodeGen_Private::FMetaDataPairParam Z_Construct_UClass_UUnLuaSettings_Statics::NewProp_DeadLoopCheck_MetaData[] = {
		{ "Category", "Runtime" },
		{ "Comment", "/** Prevent from infinite loops in lua. Timeout in seconds. */" },
		{ "ModuleRelativePath", "Public/UnLuaSettings.h" },
		{ "ToolTip", "Prevent from infinite loops in lua. Timeout in seconds." },
	};
#endif
	const UE4CodeGen_Private::FIntPropertyParams Z_Construct_UClass_UUnLuaSettings_Statics::NewProp_DeadLoopCheck = { "DeadLoopCheck", nullptr, (EPropertyFlags)0x0010000000004001, UE4CodeGen_Private::EPropertyGenFlags::Int, RF_Public|RF_Transient|RF_MarkAsNative, 1, STRUCT_OFFSET(UUnLuaSettings, DeadLoopCheck), METADATA_PARAMS(Z_Construct_UClass_UUnLuaSettings_Statics::NewProp_DeadLoopCheck_MetaData, UE_ARRAY_COUNT(Z_Construct_UClass_UUnLuaSettings_Statics::NewProp_DeadLoopCheck_MetaData)) };
#if WITH_METADATA
	const UE4CodeGen_Private::FMetaDataPairParam Z_Construct_UClass_UUnLuaSettings_Statics::NewProp_DanglingCheck_MetaData[] = {
		{ "Category", "Runtime" },
		{ "Comment", "/** Prevent dangling pointers in lua. */" },
		{ "ModuleRelativePath", "Public/UnLuaSettings.h" },
		{ "ToolTip", "Prevent dangling pointers in lua." },
	};
#endif
	void Z_Construct_UClass_UUnLuaSettings_Statics::NewProp_DanglingCheck_SetBit(void* Obj)
	{
		((UUnLuaSettings*)Obj)->DanglingCheck = 1;
	}
	const UE4CodeGen_Private::FBoolPropertyParams Z_Construct_UClass_UUnLuaSettings_Statics::NewProp_DanglingCheck = { "DanglingCheck", nullptr, (EPropertyFlags)0x0010000000004001, UE4CodeGen_Private::EPropertyGenFlags::Bool | UE4CodeGen_Private::EPropertyGenFlags::NativeBool, RF_Public|RF_Transient|RF_MarkAsNative, 1, sizeof(bool), sizeof(UUnLuaSettings), &Z_Construct_UClass_UUnLuaSettings_Statics::NewProp_DanglingCheck_SetBit, METADATA_PARAMS(Z_Construct_UClass_UUnLuaSettings_Statics::NewProp_DanglingCheck_MetaData, UE_ARRAY_COUNT(Z_Construct_UClass_UUnLuaSettings_Statics::NewProp_DanglingCheck_MetaData)) };
#if WITH_METADATA
	const UE4CodeGen_Private::FMetaDataPairParam Z_Construct_UClass_UUnLuaSettings_Statics::NewProp_bPrintLuaStackOnSystemError_MetaData[] = {
		{ "Category", "Runtime" },
		{ "Comment", "/** Whether to print all Lua env stacks on crash. */" },
		{ "ModuleRelativePath", "Public/UnLuaSettings.h" },
		{ "ToolTip", "Whether to print all Lua env stacks on crash." },
	};
#endif
	void Z_Construct_UClass_UUnLuaSettings_Statics::NewProp_bPrintLuaStackOnSystemError_SetBit(void* Obj)
	{
		((UUnLuaSettings*)Obj)->bPrintLuaStackOnSystemError = 1;
	}
	const UE4CodeGen_Private::FBoolPropertyParams Z_Construct_UClass_UUnLuaSettings_Statics::NewProp_bPrintLuaStackOnSystemError = { "bPrintLuaStackOnSystemError", nullptr, (EPropertyFlags)0x0010000000004001, UE4CodeGen_Private::EPropertyGenFlags::Bool | UE4CodeGen_Private::EPropertyGenFlags::NativeBool, RF_Public|RF_Transient|RF_MarkAsNative, 1, sizeof(bool), sizeof(UUnLuaSettings), &Z_Construct_UClass_UUnLuaSettings_Statics::NewProp_bPrintLuaStackOnSystemError_SetBit, METADATA_PARAMS(Z_Construct_UClass_UUnLuaSettings_Statics::NewProp_bPrintLuaStackOnSystemError_MetaData, UE_ARRAY_COUNT(Z_Construct_UClass_UUnLuaSettings_Statics::NewProp_bPrintLuaStackOnSystemError_MetaData)) };
#if WITH_METADATA
	const UE4CodeGen_Private::FMetaDataPairParam Z_Construct_UClass_UUnLuaSettings_Statics::NewProp_EnvLocatorClass_MetaData[] = {
		{ "AllowAbstract", "false" },
		{ "Category", "Runtime" },
		{ "Comment", "/** Class of LuaEnvLocator, which handles lua env locating for each UObject. */" },
		{ "ModuleRelativePath", "Public/UnLuaSettings.h" },
		{ "ToolTip", "Class of LuaEnvLocator, which handles lua env locating for each UObject." },
	};
#endif
	const UE4CodeGen_Private::FClassPropertyParams Z_Construct_UClass_UUnLuaSettings_Statics::NewProp_EnvLocatorClass = { "EnvLocatorClass", nullptr, (EPropertyFlags)0x0014000000004001, UE4CodeGen_Private::EPropertyGenFlags::Class, RF_Public|RF_Transient|RF_MarkAsNative, 1, STRUCT_OFFSET(UUnLuaSettings, EnvLocatorClass), Z_Construct_UClass_ULuaEnvLocator_NoRegister, Z_Construct_UClass_UClass, METADATA_PARAMS(Z_Construct_UClass_UUnLuaSettings_Statics::NewProp_EnvLocatorClass_MetaData, UE_ARRAY_COUNT(Z_Construct_UClass_UUnLuaSettings_Statics::NewProp_EnvLocatorClass_MetaData)) };
#if WITH_METADATA
	const UE4CodeGen_Private::FMetaDataPairParam Z_Construct_UClass_UUnLuaSettings_Statics::NewProp_ModuleLocatorClass_MetaData[] = {
		{ "AllowAbstract", "false" },
		{ "Category", "Runtime" },
		{ "DisplayName", "LuaModuleLocator" },
		{ "ModuleRelativePath", "Public/UnLuaSettings.h" },
	};
#endif
	const UE4CodeGen_Private::FClassPropertyParams Z_Construct_UClass_UUnLuaSettings_Statics::NewProp_ModuleLocatorClass = { "ModuleLocatorClass", nullptr, (EPropertyFlags)0x0014000000004001, UE4CodeGen_Private::EPropertyGenFlags::Class, RF_Public|RF_Transient|RF_MarkAsNative, 1, STRUCT_OFFSET(UUnLuaSettings, ModuleLocatorClass), Z_Construct_UClass_ULuaModuleLocator_NoRegister, Z_Construct_UClass_UClass, METADATA_PARAMS(Z_Construct_UClass_UUnLuaSettings_Statics::NewProp_ModuleLocatorClass_MetaData, UE_ARRAY_COUNT(Z_Construct_UClass_UUnLuaSettings_Statics::NewProp_ModuleLocatorClass_MetaData)) };
	const UE4CodeGen_Private::FStructPropertyParams Z_Construct_UClass_UUnLuaSettings_Statics::NewProp_PreBindClasses_Inner = { "PreBindClasses", nullptr, (EPropertyFlags)0x0000000000004000, UE4CodeGen_Private::EPropertyGenFlags::Struct, RF_Public|RF_Transient|RF_MarkAsNative, 1, 0, Z_Construct_UScriptStruct_FSoftClassPath, METADATA_PARAMS(nullptr, 0) };
#if WITH_METADATA
	const UE4CodeGen_Private::FMetaDataPairParam Z_Construct_UClass_UUnLuaSettings_Statics::NewProp_PreBindClasses_MetaData[] = {
		{ "AllowAbstract", "True" },
		{ "Category", "Runtime" },
		{ "Comment", "/** List of classes to bind on startup. */" },
		{ "DisplayName", "List of classes to bind on startup" },
		{ "MetaClass", "Object" },
		{ "ModuleRelativePath", "Public/UnLuaSettings.h" },
		{ "ToolTip", "List of classes to bind on startup." },
	};
#endif
	const UE4CodeGen_Private::FArrayPropertyParams Z_Construct_UClass_UUnLuaSettings_Statics::NewProp_PreBindClasses = { "PreBindClasses", nullptr, (EPropertyFlags)0x0010000000004001, UE4CodeGen_Private::EPropertyGenFlags::Array, RF_Public|RF_Transient|RF_MarkAsNative, 1, STRUCT_OFFSET(UUnLuaSettings, PreBindClasses), EArrayPropertyFlags::None, METADATA_PARAMS(Z_Construct_UClass_UUnLuaSettings_Statics::NewProp_PreBindClasses_MetaData, UE_ARRAY_COUNT(Z_Construct_UClass_UUnLuaSettings_Statics::NewProp_PreBindClasses_MetaData)) };
	const UE4CodeGen_Private::FPropertyParamsBase* const Z_Construct_UClass_UUnLuaSettings_Statics::PropPointers[] = {
		(const UE4CodeGen_Private::FPropertyParamsBase*)&Z_Construct_UClass_UUnLuaSettings_Statics::NewProp_StartupModuleName,
		(const UE4CodeGen_Private::FPropertyParamsBase*)&Z_Construct_UClass_UUnLuaSettings_Statics::NewProp_DeadLoopCheck,
		(const UE4CodeGen_Private::FPropertyParamsBase*)&Z_Construct_UClass_UUnLuaSettings_Statics::NewProp_DanglingCheck,
		(const UE4CodeGen_Private::FPropertyParamsBase*)&Z_Construct_UClass_UUnLuaSettings_Statics::NewProp_bPrintLuaStackOnSystemError,
		(const UE4CodeGen_Private::FPropertyParamsBase*)&Z_Construct_UClass_UUnLuaSettings_Statics::NewProp_EnvLocatorClass,
		(const UE4CodeGen_Private::FPropertyParamsBase*)&Z_Construct_UClass_UUnLuaSettings_Statics::NewProp_ModuleLocatorClass,
		(const UE4CodeGen_Private::FPropertyParamsBase*)&Z_Construct_UClass_UUnLuaSettings_Statics::NewProp_PreBindClasses_Inner,
		(const UE4CodeGen_Private::FPropertyParamsBase*)&Z_Construct_UClass_UUnLuaSettings_Statics::NewProp_PreBindClasses,
	};
	const FCppClassTypeInfoStatic Z_Construct_UClass_UUnLuaSettings_Statics::StaticCppClassTypeInfo = {
		TCppClassTypeTraits<UUnLuaSettings>::IsAbstract,
	};
	const UE4CodeGen_Private::FClassParams Z_Construct_UClass_UUnLuaSettings_Statics::ClassParams = {
		&UUnLuaSettings::StaticClass,
		"UnLuaSettings",
		&StaticCppClassTypeInfo,
		DependentSingletons,
		nullptr,
		Z_Construct_UClass_UUnLuaSettings_Statics::PropPointers,
		nullptr,
		UE_ARRAY_COUNT(DependentSingletons),
		0,
		UE_ARRAY_COUNT(Z_Construct_UClass_UUnLuaSettings_Statics::PropPointers),
		0,
		0x001000A6u,
		METADATA_PARAMS(Z_Construct_UClass_UUnLuaSettings_Statics::Class_MetaDataParams, UE_ARRAY_COUNT(Z_Construct_UClass_UUnLuaSettings_Statics::Class_MetaDataParams))
	};
	UClass* Z_Construct_UClass_UUnLuaSettings()
	{
		static UClass* OuterClass = nullptr;
		if (!OuterClass)
		{
			UE4CodeGen_Private::ConstructUClass(OuterClass, Z_Construct_UClass_UUnLuaSettings_Statics::ClassParams);
		}
		return OuterClass;
	}
	IMPLEMENT_CLASS(UUnLuaSettings, 1230495647);
	template<> UNLUA_API UClass* StaticClass<UUnLuaSettings>()
	{
		return UUnLuaSettings::StaticClass();
	}
	static FCompiledInDefer Z_CompiledInDefer_UClass_UUnLuaSettings(Z_Construct_UClass_UUnLuaSettings, &UUnLuaSettings::StaticClass, TEXT("/Script/UnLua"), TEXT("UUnLuaSettings"), false, nullptr, nullptr, nullptr);
	DEFINE_VTABLE_PTR_HELPER_CTOR(UUnLuaSettings);
PRAGMA_ENABLE_DEPRECATION_WARNINGS
#ifdef _MSC_VER
#pragma warning (pop)
#endif
