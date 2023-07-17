// Copyright Epic Games, Inc. All Rights Reserved.
/*===========================================================================
	Generated code exported from UnrealHeaderTool.
	DO NOT modify this manually! Edit the corresponding .h files instead!
===========================================================================*/

#include "UObject/GeneratedCppIncludes.h"
#include "UnLua/Public/LuaDelegateHandler.h"
#ifdef _MSC_VER
#pragma warning (push)
#pragma warning (disable : 4883)
#endif
PRAGMA_DISABLE_DEPRECATION_WARNINGS
void EmptyLinkFunctionForGeneratedCodeLuaDelegateHandler() {}
// Cross Module References
	UNLUA_API UClass* Z_Construct_UClass_ULuaDelegateHandler_NoRegister();
	UNLUA_API UClass* Z_Construct_UClass_ULuaDelegateHandler();
	COREUOBJECT_API UClass* Z_Construct_UClass_UObject();
	UPackage* Z_Construct_UPackage__Script_UnLua();
// End Cross Module References
	DEFINE_FUNCTION(ULuaDelegateHandler::execDummy)
	{
		P_FINISH;
		P_NATIVE_BEGIN;
		P_THIS->Dummy();
		P_NATIVE_END;
	}
	void ULuaDelegateHandler::StaticRegisterNativesULuaDelegateHandler()
	{
		UClass* Class = ULuaDelegateHandler::StaticClass();
		static const FNameNativePtrPair Funcs[] = {
			{ "Dummy", &ULuaDelegateHandler::execDummy },
		};
		FNativeFunctionRegistrar::RegisterFunctions(Class, Funcs, UE_ARRAY_COUNT(Funcs));
	}
	struct Z_Construct_UFunction_ULuaDelegateHandler_Dummy_Statics
	{
#if WITH_METADATA
		static const UE4CodeGen_Private::FMetaDataPairParam Function_MetaDataParams[];
#endif
		static const UE4CodeGen_Private::FFunctionParams FuncParams;
	};
#if WITH_METADATA
	const UE4CodeGen_Private::FMetaDataPairParam Z_Construct_UFunction_ULuaDelegateHandler_Dummy_Statics::Function_MetaDataParams[] = {
		{ "ModuleRelativePath", "Public/LuaDelegateHandler.h" },
	};
#endif
	const UE4CodeGen_Private::FFunctionParams Z_Construct_UFunction_ULuaDelegateHandler_Dummy_Statics::FuncParams = { (UObject*(*)())Z_Construct_UClass_ULuaDelegateHandler, nullptr, "Dummy", nullptr, nullptr, 0, nullptr, 0, RF_Public|RF_Transient|RF_MarkAsNative, (EFunctionFlags)0x00020401, 0, 0, METADATA_PARAMS(Z_Construct_UFunction_ULuaDelegateHandler_Dummy_Statics::Function_MetaDataParams, UE_ARRAY_COUNT(Z_Construct_UFunction_ULuaDelegateHandler_Dummy_Statics::Function_MetaDataParams)) };
	UFunction* Z_Construct_UFunction_ULuaDelegateHandler_Dummy()
	{
		static UFunction* ReturnFunction = nullptr;
		if (!ReturnFunction)
		{
			UE4CodeGen_Private::ConstructUFunction(ReturnFunction, Z_Construct_UFunction_ULuaDelegateHandler_Dummy_Statics::FuncParams);
		}
		return ReturnFunction;
	}
	UClass* Z_Construct_UClass_ULuaDelegateHandler_NoRegister()
	{
		return ULuaDelegateHandler::StaticClass();
	}
	struct Z_Construct_UClass_ULuaDelegateHandler_Statics
	{
		static UObject* (*const DependentSingletons[])();
		static const FClassFunctionLinkInfo FuncInfo[];
#if WITH_METADATA
		static const UE4CodeGen_Private::FMetaDataPairParam Class_MetaDataParams[];
#endif
		static const FCppClassTypeInfoStatic StaticCppClassTypeInfo;
		static const UE4CodeGen_Private::FClassParams ClassParams;
	};
	UObject* (*const Z_Construct_UClass_ULuaDelegateHandler_Statics::DependentSingletons[])() = {
		(UObject* (*)())Z_Construct_UClass_UObject,
		(UObject* (*)())Z_Construct_UPackage__Script_UnLua,
	};
	const FClassFunctionLinkInfo Z_Construct_UClass_ULuaDelegateHandler_Statics::FuncInfo[] = {
		{ &Z_Construct_UFunction_ULuaDelegateHandler_Dummy, "Dummy" }, // 193060257
	};
#if WITH_METADATA
	const UE4CodeGen_Private::FMetaDataPairParam Z_Construct_UClass_ULuaDelegateHandler_Statics::Class_MetaDataParams[] = {
		{ "IncludePath", "LuaDelegateHandler.h" },
		{ "ModuleRelativePath", "Public/LuaDelegateHandler.h" },
	};
#endif
	const FCppClassTypeInfoStatic Z_Construct_UClass_ULuaDelegateHandler_Statics::StaticCppClassTypeInfo = {
		TCppClassTypeTraits<ULuaDelegateHandler>::IsAbstract,
	};
	const UE4CodeGen_Private::FClassParams Z_Construct_UClass_ULuaDelegateHandler_Statics::ClassParams = {
		&ULuaDelegateHandler::StaticClass,
		nullptr,
		&StaticCppClassTypeInfo,
		DependentSingletons,
		FuncInfo,
		nullptr,
		nullptr,
		UE_ARRAY_COUNT(DependentSingletons),
		UE_ARRAY_COUNT(FuncInfo),
		0,
		0,
		0x001000A0u,
		METADATA_PARAMS(Z_Construct_UClass_ULuaDelegateHandler_Statics::Class_MetaDataParams, UE_ARRAY_COUNT(Z_Construct_UClass_ULuaDelegateHandler_Statics::Class_MetaDataParams))
	};
	UClass* Z_Construct_UClass_ULuaDelegateHandler()
	{
		static UClass* OuterClass = nullptr;
		if (!OuterClass)
		{
			UE4CodeGen_Private::ConstructUClass(OuterClass, Z_Construct_UClass_ULuaDelegateHandler_Statics::ClassParams);
		}
		return OuterClass;
	}
	IMPLEMENT_CLASS(ULuaDelegateHandler, 2598158468);
	template<> UNLUA_API UClass* StaticClass<ULuaDelegateHandler>()
	{
		return ULuaDelegateHandler::StaticClass();
	}
	static FCompiledInDefer Z_CompiledInDefer_UClass_ULuaDelegateHandler(Z_Construct_UClass_ULuaDelegateHandler, &ULuaDelegateHandler::StaticClass, TEXT("/Script/UnLua"), TEXT("ULuaDelegateHandler"), false, nullptr, nullptr, nullptr);
	DEFINE_VTABLE_PTR_HELPER_CTOR(ULuaDelegateHandler);
PRAGMA_ENABLE_DEPRECATION_WARNINGS
#ifdef _MSC_VER
#pragma warning (pop)
#endif
