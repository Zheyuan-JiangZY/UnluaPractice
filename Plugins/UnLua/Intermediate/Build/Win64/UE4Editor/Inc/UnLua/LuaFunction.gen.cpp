// Copyright Epic Games, Inc. All Rights Reserved.
/*===========================================================================
	Generated code exported from UnrealHeaderTool.
	DO NOT modify this manually! Edit the corresponding .h files instead!
===========================================================================*/

#include "UObject/GeneratedCppIncludes.h"
#include "UnLua/Public/LuaFunction.h"
#ifdef _MSC_VER
#pragma warning (push)
#pragma warning (disable : 4883)
#endif
PRAGMA_DISABLE_DEPRECATION_WARNINGS
void EmptyLinkFunctionForGeneratedCodeLuaFunction() {}
// Cross Module References
	UNLUA_API UClass* Z_Construct_UClass_ULuaFunction_NoRegister();
	UNLUA_API UClass* Z_Construct_UClass_ULuaFunction();
	COREUOBJECT_API UClass* Z_Construct_UClass_UFunction();
	UPackage* Z_Construct_UPackage__Script_UnLua();
// End Cross Module References
	void ULuaFunction::StaticRegisterNativesULuaFunction()
	{
	}
	UClass* Z_Construct_UClass_ULuaFunction_NoRegister()
	{
		return ULuaFunction::StaticClass();
	}
	struct Z_Construct_UClass_ULuaFunction_Statics
	{
		static UObject* (*const DependentSingletons[])();
#if WITH_METADATA
		static const UE4CodeGen_Private::FMetaDataPairParam Class_MetaDataParams[];
#endif
#if WITH_METADATA
		static const UE4CodeGen_Private::FMetaDataPairParam NewProp_Overridden_MetaData[];
#endif
		static const UE4CodeGen_Private::FObjectPropertyParams NewProp_Overridden;
		static const UE4CodeGen_Private::FPropertyParamsBase* const PropPointers[];
		static const FCppClassTypeInfoStatic StaticCppClassTypeInfo;
		static const UE4CodeGen_Private::FClassParams ClassParams;
	};
	UObject* (*const Z_Construct_UClass_ULuaFunction_Statics::DependentSingletons[])() = {
		(UObject* (*)())Z_Construct_UClass_UFunction,
		(UObject* (*)())Z_Construct_UPackage__Script_UnLua,
	};
#if WITH_METADATA
	const UE4CodeGen_Private::FMetaDataPairParam Z_Construct_UClass_ULuaFunction_Statics::Class_MetaDataParams[] = {
		{ "IncludePath", "LuaFunction.h" },
		{ "ModuleRelativePath", "Public/LuaFunction.h" },
	};
#endif
#if WITH_METADATA
	const UE4CodeGen_Private::FMetaDataPairParam Z_Construct_UClass_ULuaFunction_Statics::NewProp_Overridden_MetaData[] = {
		{ "ModuleRelativePath", "Public/LuaFunction.h" },
	};
#endif
	const UE4CodeGen_Private::FObjectPropertyParams Z_Construct_UClass_ULuaFunction_Statics::NewProp_Overridden = { "Overridden", nullptr, (EPropertyFlags)0x0040000000000000, UE4CodeGen_Private::EPropertyGenFlags::Object, RF_Public|RF_Transient|RF_MarkAsNative, 1, STRUCT_OFFSET(ULuaFunction, Overridden), Z_Construct_UClass_UFunction, METADATA_PARAMS(Z_Construct_UClass_ULuaFunction_Statics::NewProp_Overridden_MetaData, UE_ARRAY_COUNT(Z_Construct_UClass_ULuaFunction_Statics::NewProp_Overridden_MetaData)) };
	const UE4CodeGen_Private::FPropertyParamsBase* const Z_Construct_UClass_ULuaFunction_Statics::PropPointers[] = {
		(const UE4CodeGen_Private::FPropertyParamsBase*)&Z_Construct_UClass_ULuaFunction_Statics::NewProp_Overridden,
	};
	const FCppClassTypeInfoStatic Z_Construct_UClass_ULuaFunction_Statics::StaticCppClassTypeInfo = {
		TCppClassTypeTraits<ULuaFunction>::IsAbstract,
	};
	const UE4CodeGen_Private::FClassParams Z_Construct_UClass_ULuaFunction_Statics::ClassParams = {
		&ULuaFunction::StaticClass,
		nullptr,
		&StaticCppClassTypeInfo,
		DependentSingletons,
		nullptr,
		Z_Construct_UClass_ULuaFunction_Statics::PropPointers,
		nullptr,
		UE_ARRAY_COUNT(DependentSingletons),
		0,
		UE_ARRAY_COUNT(Z_Construct_UClass_ULuaFunction_Statics::PropPointers),
		0,
		0x001000A0u,
		METADATA_PARAMS(Z_Construct_UClass_ULuaFunction_Statics::Class_MetaDataParams, UE_ARRAY_COUNT(Z_Construct_UClass_ULuaFunction_Statics::Class_MetaDataParams))
	};
	UClass* Z_Construct_UClass_ULuaFunction()
	{
		static UClass* OuterClass = nullptr;
		if (!OuterClass)
		{
			UE4CodeGen_Private::ConstructUClass(OuterClass, Z_Construct_UClass_ULuaFunction_Statics::ClassParams);
		}
		return OuterClass;
	}
	IMPLEMENT_CLASS(ULuaFunction, 1450849387);
	template<> UNLUA_API UClass* StaticClass<ULuaFunction>()
	{
		return ULuaFunction::StaticClass();
	}
	static FCompiledInDefer Z_CompiledInDefer_UClass_ULuaFunction(Z_Construct_UClass_ULuaFunction, &ULuaFunction::StaticClass, TEXT("/Script/UnLua"), TEXT("ULuaFunction"), false, nullptr, nullptr, nullptr);
	DEFINE_VTABLE_PTR_HELPER_CTOR(ULuaFunction);
PRAGMA_ENABLE_DEPRECATION_WARNINGS
#ifdef _MSC_VER
#pragma warning (pop)
#endif
