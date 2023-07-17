// Copyright Epic Games, Inc. All Rights Reserved.
/*===========================================================================
	Generated code exported from UnrealHeaderTool.
	DO NOT modify this manually! Edit the corresponding .h files instead!
===========================================================================*/

#include "UObject/GeneratedCppIncludes.h"
#include "UnLua/Public/LuaEnvLocator.h"
#ifdef _MSC_VER
#pragma warning (push)
#pragma warning (disable : 4883)
#endif
PRAGMA_DISABLE_DEPRECATION_WARNINGS
void EmptyLinkFunctionForGeneratedCodeLuaEnvLocator() {}
// Cross Module References
	UNLUA_API UClass* Z_Construct_UClass_ULuaEnvLocator_NoRegister();
	UNLUA_API UClass* Z_Construct_UClass_ULuaEnvLocator();
	COREUOBJECT_API UClass* Z_Construct_UClass_UObject();
	UPackage* Z_Construct_UPackage__Script_UnLua();
	UNLUA_API UClass* Z_Construct_UClass_ULuaEnvLocator_ByGameInstance_NoRegister();
	UNLUA_API UClass* Z_Construct_UClass_ULuaEnvLocator_ByGameInstance();
// End Cross Module References
	void ULuaEnvLocator::StaticRegisterNativesULuaEnvLocator()
	{
	}
	UClass* Z_Construct_UClass_ULuaEnvLocator_NoRegister()
	{
		return ULuaEnvLocator::StaticClass();
	}
	struct Z_Construct_UClass_ULuaEnvLocator_Statics
	{
		static UObject* (*const DependentSingletons[])();
#if WITH_METADATA
		static const UE4CodeGen_Private::FMetaDataPairParam Class_MetaDataParams[];
#endif
		static const FCppClassTypeInfoStatic StaticCppClassTypeInfo;
		static const UE4CodeGen_Private::FClassParams ClassParams;
	};
	UObject* (*const Z_Construct_UClass_ULuaEnvLocator_Statics::DependentSingletons[])() = {
		(UObject* (*)())Z_Construct_UClass_UObject,
		(UObject* (*)())Z_Construct_UPackage__Script_UnLua,
	};
#if WITH_METADATA
	const UE4CodeGen_Private::FMetaDataPairParam Z_Construct_UClass_ULuaEnvLocator_Statics::Class_MetaDataParams[] = {
		{ "IncludePath", "LuaEnvLocator.h" },
		{ "ModuleRelativePath", "Public/LuaEnvLocator.h" },
	};
#endif
	const FCppClassTypeInfoStatic Z_Construct_UClass_ULuaEnvLocator_Statics::StaticCppClassTypeInfo = {
		TCppClassTypeTraits<ULuaEnvLocator>::IsAbstract,
	};
	const UE4CodeGen_Private::FClassParams Z_Construct_UClass_ULuaEnvLocator_Statics::ClassParams = {
		&ULuaEnvLocator::StaticClass,
		nullptr,
		&StaticCppClassTypeInfo,
		DependentSingletons,
		nullptr,
		nullptr,
		nullptr,
		UE_ARRAY_COUNT(DependentSingletons),
		0,
		0,
		0,
		0x001000A0u,
		METADATA_PARAMS(Z_Construct_UClass_ULuaEnvLocator_Statics::Class_MetaDataParams, UE_ARRAY_COUNT(Z_Construct_UClass_ULuaEnvLocator_Statics::Class_MetaDataParams))
	};
	UClass* Z_Construct_UClass_ULuaEnvLocator()
	{
		static UClass* OuterClass = nullptr;
		if (!OuterClass)
		{
			UE4CodeGen_Private::ConstructUClass(OuterClass, Z_Construct_UClass_ULuaEnvLocator_Statics::ClassParams);
		}
		return OuterClass;
	}
	IMPLEMENT_CLASS(ULuaEnvLocator, 2463366526);
	template<> UNLUA_API UClass* StaticClass<ULuaEnvLocator>()
	{
		return ULuaEnvLocator::StaticClass();
	}
	static FCompiledInDefer Z_CompiledInDefer_UClass_ULuaEnvLocator(Z_Construct_UClass_ULuaEnvLocator, &ULuaEnvLocator::StaticClass, TEXT("/Script/UnLua"), TEXT("ULuaEnvLocator"), false, nullptr, nullptr, nullptr);
	DEFINE_VTABLE_PTR_HELPER_CTOR(ULuaEnvLocator);
	void ULuaEnvLocator_ByGameInstance::StaticRegisterNativesULuaEnvLocator_ByGameInstance()
	{
	}
	UClass* Z_Construct_UClass_ULuaEnvLocator_ByGameInstance_NoRegister()
	{
		return ULuaEnvLocator_ByGameInstance::StaticClass();
	}
	struct Z_Construct_UClass_ULuaEnvLocator_ByGameInstance_Statics
	{
		static UObject* (*const DependentSingletons[])();
#if WITH_METADATA
		static const UE4CodeGen_Private::FMetaDataPairParam Class_MetaDataParams[];
#endif
		static const FCppClassTypeInfoStatic StaticCppClassTypeInfo;
		static const UE4CodeGen_Private::FClassParams ClassParams;
	};
	UObject* (*const Z_Construct_UClass_ULuaEnvLocator_ByGameInstance_Statics::DependentSingletons[])() = {
		(UObject* (*)())Z_Construct_UClass_ULuaEnvLocator,
		(UObject* (*)())Z_Construct_UPackage__Script_UnLua,
	};
#if WITH_METADATA
	const UE4CodeGen_Private::FMetaDataPairParam Z_Construct_UClass_ULuaEnvLocator_ByGameInstance_Statics::Class_MetaDataParams[] = {
		{ "IncludePath", "LuaEnvLocator.h" },
		{ "ModuleRelativePath", "Public/LuaEnvLocator.h" },
	};
#endif
	const FCppClassTypeInfoStatic Z_Construct_UClass_ULuaEnvLocator_ByGameInstance_Statics::StaticCppClassTypeInfo = {
		TCppClassTypeTraits<ULuaEnvLocator_ByGameInstance>::IsAbstract,
	};
	const UE4CodeGen_Private::FClassParams Z_Construct_UClass_ULuaEnvLocator_ByGameInstance_Statics::ClassParams = {
		&ULuaEnvLocator_ByGameInstance::StaticClass,
		nullptr,
		&StaticCppClassTypeInfo,
		DependentSingletons,
		nullptr,
		nullptr,
		nullptr,
		UE_ARRAY_COUNT(DependentSingletons),
		0,
		0,
		0,
		0x001000A0u,
		METADATA_PARAMS(Z_Construct_UClass_ULuaEnvLocator_ByGameInstance_Statics::Class_MetaDataParams, UE_ARRAY_COUNT(Z_Construct_UClass_ULuaEnvLocator_ByGameInstance_Statics::Class_MetaDataParams))
	};
	UClass* Z_Construct_UClass_ULuaEnvLocator_ByGameInstance()
	{
		static UClass* OuterClass = nullptr;
		if (!OuterClass)
		{
			UE4CodeGen_Private::ConstructUClass(OuterClass, Z_Construct_UClass_ULuaEnvLocator_ByGameInstance_Statics::ClassParams);
		}
		return OuterClass;
	}
	IMPLEMENT_CLASS(ULuaEnvLocator_ByGameInstance, 2060700138);
	template<> UNLUA_API UClass* StaticClass<ULuaEnvLocator_ByGameInstance>()
	{
		return ULuaEnvLocator_ByGameInstance::StaticClass();
	}
	static FCompiledInDefer Z_CompiledInDefer_UClass_ULuaEnvLocator_ByGameInstance(Z_Construct_UClass_ULuaEnvLocator_ByGameInstance, &ULuaEnvLocator_ByGameInstance::StaticClass, TEXT("/Script/UnLua"), TEXT("ULuaEnvLocator_ByGameInstance"), false, nullptr, nullptr, nullptr);
	DEFINE_VTABLE_PTR_HELPER_CTOR(ULuaEnvLocator_ByGameInstance);
PRAGMA_ENABLE_DEPRECATION_WARNINGS
#ifdef _MSC_VER
#pragma warning (pop)
#endif
