// Copyright Epic Games, Inc. All Rights Reserved.
/*===========================================================================
	Generated code exported from UnrealHeaderTool.
	DO NOT modify this manually! Edit the corresponding .h files instead!
===========================================================================*/

#include "UObject/GeneratedCppIncludes.h"
#include "UnLua/Public/LuaModuleLocator.h"
#ifdef _MSC_VER
#pragma warning (push)
#pragma warning (disable : 4883)
#endif
PRAGMA_DISABLE_DEPRECATION_WARNINGS
void EmptyLinkFunctionForGeneratedCodeLuaModuleLocator() {}
// Cross Module References
	UNLUA_API UClass* Z_Construct_UClass_ULuaModuleLocator_NoRegister();
	UNLUA_API UClass* Z_Construct_UClass_ULuaModuleLocator();
	COREUOBJECT_API UClass* Z_Construct_UClass_UObject();
	UPackage* Z_Construct_UPackage__Script_UnLua();
	UNLUA_API UClass* Z_Construct_UClass_ULuaModuleLocator_ByPackage_NoRegister();
	UNLUA_API UClass* Z_Construct_UClass_ULuaModuleLocator_ByPackage();
// End Cross Module References
	void ULuaModuleLocator::StaticRegisterNativesULuaModuleLocator()
	{
	}
	UClass* Z_Construct_UClass_ULuaModuleLocator_NoRegister()
	{
		return ULuaModuleLocator::StaticClass();
	}
	struct Z_Construct_UClass_ULuaModuleLocator_Statics
	{
		static UObject* (*const DependentSingletons[])();
#if WITH_METADATA
		static const UE4CodeGen_Private::FMetaDataPairParam Class_MetaDataParams[];
#endif
		static const FCppClassTypeInfoStatic StaticCppClassTypeInfo;
		static const UE4CodeGen_Private::FClassParams ClassParams;
	};
	UObject* (*const Z_Construct_UClass_ULuaModuleLocator_Statics::DependentSingletons[])() = {
		(UObject* (*)())Z_Construct_UClass_UObject,
		(UObject* (*)())Z_Construct_UPackage__Script_UnLua,
	};
#if WITH_METADATA
	const UE4CodeGen_Private::FMetaDataPairParam Z_Construct_UClass_ULuaModuleLocator_Statics::Class_MetaDataParams[] = {
		{ "IncludePath", "LuaModuleLocator.h" },
		{ "ModuleRelativePath", "Public/LuaModuleLocator.h" },
	};
#endif
	const FCppClassTypeInfoStatic Z_Construct_UClass_ULuaModuleLocator_Statics::StaticCppClassTypeInfo = {
		TCppClassTypeTraits<ULuaModuleLocator>::IsAbstract,
	};
	const UE4CodeGen_Private::FClassParams Z_Construct_UClass_ULuaModuleLocator_Statics::ClassParams = {
		&ULuaModuleLocator::StaticClass,
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
		METADATA_PARAMS(Z_Construct_UClass_ULuaModuleLocator_Statics::Class_MetaDataParams, UE_ARRAY_COUNT(Z_Construct_UClass_ULuaModuleLocator_Statics::Class_MetaDataParams))
	};
	UClass* Z_Construct_UClass_ULuaModuleLocator()
	{
		static UClass* OuterClass = nullptr;
		if (!OuterClass)
		{
			UE4CodeGen_Private::ConstructUClass(OuterClass, Z_Construct_UClass_ULuaModuleLocator_Statics::ClassParams);
		}
		return OuterClass;
	}
	IMPLEMENT_CLASS(ULuaModuleLocator, 1410874548);
	template<> UNLUA_API UClass* StaticClass<ULuaModuleLocator>()
	{
		return ULuaModuleLocator::StaticClass();
	}
	static FCompiledInDefer Z_CompiledInDefer_UClass_ULuaModuleLocator(Z_Construct_UClass_ULuaModuleLocator, &ULuaModuleLocator::StaticClass, TEXT("/Script/UnLua"), TEXT("ULuaModuleLocator"), false, nullptr, nullptr, nullptr);
	DEFINE_VTABLE_PTR_HELPER_CTOR(ULuaModuleLocator);
	void ULuaModuleLocator_ByPackage::StaticRegisterNativesULuaModuleLocator_ByPackage()
	{
	}
	UClass* Z_Construct_UClass_ULuaModuleLocator_ByPackage_NoRegister()
	{
		return ULuaModuleLocator_ByPackage::StaticClass();
	}
	struct Z_Construct_UClass_ULuaModuleLocator_ByPackage_Statics
	{
		static UObject* (*const DependentSingletons[])();
#if WITH_METADATA
		static const UE4CodeGen_Private::FMetaDataPairParam Class_MetaDataParams[];
#endif
		static const FCppClassTypeInfoStatic StaticCppClassTypeInfo;
		static const UE4CodeGen_Private::FClassParams ClassParams;
	};
	UObject* (*const Z_Construct_UClass_ULuaModuleLocator_ByPackage_Statics::DependentSingletons[])() = {
		(UObject* (*)())Z_Construct_UClass_ULuaModuleLocator,
		(UObject* (*)())Z_Construct_UPackage__Script_UnLua,
	};
#if WITH_METADATA
	const UE4CodeGen_Private::FMetaDataPairParam Z_Construct_UClass_ULuaModuleLocator_ByPackage_Statics::Class_MetaDataParams[] = {
		{ "IncludePath", "LuaModuleLocator.h" },
		{ "ModuleRelativePath", "Public/LuaModuleLocator.h" },
	};
#endif
	const FCppClassTypeInfoStatic Z_Construct_UClass_ULuaModuleLocator_ByPackage_Statics::StaticCppClassTypeInfo = {
		TCppClassTypeTraits<ULuaModuleLocator_ByPackage>::IsAbstract,
	};
	const UE4CodeGen_Private::FClassParams Z_Construct_UClass_ULuaModuleLocator_ByPackage_Statics::ClassParams = {
		&ULuaModuleLocator_ByPackage::StaticClass,
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
		METADATA_PARAMS(Z_Construct_UClass_ULuaModuleLocator_ByPackage_Statics::Class_MetaDataParams, UE_ARRAY_COUNT(Z_Construct_UClass_ULuaModuleLocator_ByPackage_Statics::Class_MetaDataParams))
	};
	UClass* Z_Construct_UClass_ULuaModuleLocator_ByPackage()
	{
		static UClass* OuterClass = nullptr;
		if (!OuterClass)
		{
			UE4CodeGen_Private::ConstructUClass(OuterClass, Z_Construct_UClass_ULuaModuleLocator_ByPackage_Statics::ClassParams);
		}
		return OuterClass;
	}
	IMPLEMENT_CLASS(ULuaModuleLocator_ByPackage, 3580863237);
	template<> UNLUA_API UClass* StaticClass<ULuaModuleLocator_ByPackage>()
	{
		return ULuaModuleLocator_ByPackage::StaticClass();
	}
	static FCompiledInDefer Z_CompiledInDefer_UClass_ULuaModuleLocator_ByPackage(Z_Construct_UClass_ULuaModuleLocator_ByPackage, &ULuaModuleLocator_ByPackage::StaticClass, TEXT("/Script/UnLua"), TEXT("ULuaModuleLocator_ByPackage"), false, nullptr, nullptr, nullptr);
	DEFINE_VTABLE_PTR_HELPER_CTOR(ULuaModuleLocator_ByPackage);
PRAGMA_ENABLE_DEPRECATION_WARNINGS
#ifdef _MSC_VER
#pragma warning (pop)
#endif
