// Copyright Epic Games, Inc. All Rights Reserved.
/*===========================================================================
	Generated code exported from UnrealHeaderTool.
	DO NOT modify this manually! Edit the corresponding .h files instead!
===========================================================================*/

#include "UObject/GeneratedCppIncludes.h"
#include "UnLua/Public/LuaOverridesClass.h"
#ifdef _MSC_VER
#pragma warning (push)
#pragma warning (disable : 4883)
#endif
PRAGMA_DISABLE_DEPRECATION_WARNINGS
void EmptyLinkFunctionForGeneratedCodeLuaOverridesClass() {}
// Cross Module References
	UNLUA_API UClass* Z_Construct_UClass_ULuaOverridesClass_NoRegister();
	UNLUA_API UClass* Z_Construct_UClass_ULuaOverridesClass();
	COREUOBJECT_API UClass* Z_Construct_UClass_UClass();
	UPackage* Z_Construct_UPackage__Script_UnLua();
// End Cross Module References
	void ULuaOverridesClass::StaticRegisterNativesULuaOverridesClass()
	{
	}
	UClass* Z_Construct_UClass_ULuaOverridesClass_NoRegister()
	{
		return ULuaOverridesClass::StaticClass();
	}
	struct Z_Construct_UClass_ULuaOverridesClass_Statics
	{
		static UObject* (*const DependentSingletons[])();
#if WITH_METADATA
		static const UE4CodeGen_Private::FMetaDataPairParam Class_MetaDataParams[];
#endif
		static const FCppClassTypeInfoStatic StaticCppClassTypeInfo;
		static const UE4CodeGen_Private::FClassParams ClassParams;
	};
	UObject* (*const Z_Construct_UClass_ULuaOverridesClass_Statics::DependentSingletons[])() = {
		(UObject* (*)())Z_Construct_UClass_UClass,
		(UObject* (*)())Z_Construct_UPackage__Script_UnLua,
	};
#if WITH_METADATA
	const UE4CodeGen_Private::FMetaDataPairParam Z_Construct_UClass_ULuaOverridesClass_Statics::Class_MetaDataParams[] = {
		{ "Comment", "/** \xe7\x94\xa8\xe4\xba\x8e\xe6\x89\xbf\xe8\xbd\xbd\xe6\x89\x80\xe6\x9c\x89\xe8\xbf\x90\xe8\xa1\x8c\xe6\x97\xb6\xe8\xa6\x86\xe5\x86\x99\xe5\x88\x9b\xe5\xbb\xba\xe7\x9a\x84ULuaFunction */" },
		{ "IncludePath", "LuaOverridesClass.h" },
		{ "ModuleRelativePath", "Public/LuaOverridesClass.h" },
		{ "ToolTip", "\xe7\x94\xa8\xe4\xba\x8e\xe6\x89\xbf\xe8\xbd\xbd\xe6\x89\x80\xe6\x9c\x89\xe8\xbf\x90\xe8\xa1\x8c\xe6\x97\xb6\xe8\xa6\x86\xe5\x86\x99\xe5\x88\x9b\xe5\xbb\xba\xe7\x9a\x84ULuaFunction" },
	};
#endif
	const FCppClassTypeInfoStatic Z_Construct_UClass_ULuaOverridesClass_Statics::StaticCppClassTypeInfo = {
		TCppClassTypeTraits<ULuaOverridesClass>::IsAbstract,
	};
	const UE4CodeGen_Private::FClassParams Z_Construct_UClass_ULuaOverridesClass_Statics::ClassParams = {
		&ULuaOverridesClass::StaticClass,
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
		0x001000A8u,
		METADATA_PARAMS(Z_Construct_UClass_ULuaOverridesClass_Statics::Class_MetaDataParams, UE_ARRAY_COUNT(Z_Construct_UClass_ULuaOverridesClass_Statics::Class_MetaDataParams))
	};
	UClass* Z_Construct_UClass_ULuaOverridesClass()
	{
		static UClass* OuterClass = nullptr;
		if (!OuterClass)
		{
			UE4CodeGen_Private::ConstructUClass(OuterClass, Z_Construct_UClass_ULuaOverridesClass_Statics::ClassParams);
		}
		return OuterClass;
	}
	IMPLEMENT_CLASS(ULuaOverridesClass, 2705295016);
	template<> UNLUA_API UClass* StaticClass<ULuaOverridesClass>()
	{
		return ULuaOverridesClass::StaticClass();
	}
	static FCompiledInDefer Z_CompiledInDefer_UClass_ULuaOverridesClass(Z_Construct_UClass_ULuaOverridesClass, &ULuaOverridesClass::StaticClass, TEXT("/Script/UnLua"), TEXT("ULuaOverridesClass"), false, nullptr, nullptr, nullptr);
	DEFINE_VTABLE_PTR_HELPER_CTOR(ULuaOverridesClass);
PRAGMA_ENABLE_DEPRECATION_WARNINGS
#ifdef _MSC_VER
#pragma warning (pop)
#endif
