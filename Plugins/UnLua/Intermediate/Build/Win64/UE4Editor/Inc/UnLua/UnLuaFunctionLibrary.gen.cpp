// Copyright Epic Games, Inc. All Rights Reserved.
/*===========================================================================
	Generated code exported from UnrealHeaderTool.
	DO NOT modify this manually! Edit the corresponding .h files instead!
===========================================================================*/

#include "UObject/GeneratedCppIncludes.h"
#include "UnLua/Public/UnLuaFunctionLibrary.h"
#ifdef _MSC_VER
#pragma warning (push)
#pragma warning (disable : 4883)
#endif
PRAGMA_DISABLE_DEPRECATION_WARNINGS
void EmptyLinkFunctionForGeneratedCodeUnLuaFunctionLibrary() {}
// Cross Module References
	UNLUA_API UClass* Z_Construct_UClass_UUnLuaFunctionLibrary_NoRegister();
	UNLUA_API UClass* Z_Construct_UClass_UUnLuaFunctionLibrary();
	ENGINE_API UClass* Z_Construct_UClass_UBlueprintFunctionLibrary();
	UPackage* Z_Construct_UPackage__Script_UnLua();
// End Cross Module References
	DEFINE_FUNCTION(UUnLuaFunctionLibrary::execHotReload)
	{
		P_FINISH;
		P_NATIVE_BEGIN;
		UUnLuaFunctionLibrary::HotReload();
		P_NATIVE_END;
	}
	DEFINE_FUNCTION(UUnLuaFunctionLibrary::execGetFileLastModifiedTimestamp)
	{
		P_GET_PROPERTY(FStrProperty,Z_Param_Path);
		P_FINISH;
		P_NATIVE_BEGIN;
		*(int64*)Z_Param__Result=UUnLuaFunctionLibrary::GetFileLastModifiedTimestamp(Z_Param_Path);
		P_NATIVE_END;
	}
	DEFINE_FUNCTION(UUnLuaFunctionLibrary::execGetScriptRootPath)
	{
		P_FINISH;
		P_NATIVE_BEGIN;
		*(FString*)Z_Param__Result=UUnLuaFunctionLibrary::GetScriptRootPath();
		P_NATIVE_END;
	}
	void UUnLuaFunctionLibrary::StaticRegisterNativesUUnLuaFunctionLibrary()
	{
		UClass* Class = UUnLuaFunctionLibrary::StaticClass();
		static const FNameNativePtrPair Funcs[] = {
			{ "GetFileLastModifiedTimestamp", &UUnLuaFunctionLibrary::execGetFileLastModifiedTimestamp },
			{ "GetScriptRootPath", &UUnLuaFunctionLibrary::execGetScriptRootPath },
			{ "HotReload", &UUnLuaFunctionLibrary::execHotReload },
		};
		FNativeFunctionRegistrar::RegisterFunctions(Class, Funcs, UE_ARRAY_COUNT(Funcs));
	}
	struct Z_Construct_UFunction_UUnLuaFunctionLibrary_GetFileLastModifiedTimestamp_Statics
	{
		struct UnLuaFunctionLibrary_eventGetFileLastModifiedTimestamp_Parms
		{
			FString Path;
			int64 ReturnValue;
		};
		static const UE4CodeGen_Private::FStrPropertyParams NewProp_Path;
		static const UE4CodeGen_Private::FInt64PropertyParams NewProp_ReturnValue;
		static const UE4CodeGen_Private::FPropertyParamsBase* const PropPointers[];
#if WITH_METADATA
		static const UE4CodeGen_Private::FMetaDataPairParam Function_MetaDataParams[];
#endif
		static const UE4CodeGen_Private::FFunctionParams FuncParams;
	};
	const UE4CodeGen_Private::FStrPropertyParams Z_Construct_UFunction_UUnLuaFunctionLibrary_GetFileLastModifiedTimestamp_Statics::NewProp_Path = { "Path", nullptr, (EPropertyFlags)0x0010000000000080, UE4CodeGen_Private::EPropertyGenFlags::Str, RF_Public|RF_Transient|RF_MarkAsNative, 1, STRUCT_OFFSET(UnLuaFunctionLibrary_eventGetFileLastModifiedTimestamp_Parms, Path), METADATA_PARAMS(nullptr, 0) };
	const UE4CodeGen_Private::FInt64PropertyParams Z_Construct_UFunction_UUnLuaFunctionLibrary_GetFileLastModifiedTimestamp_Statics::NewProp_ReturnValue = { "ReturnValue", nullptr, (EPropertyFlags)0x0010000000000580, UE4CodeGen_Private::EPropertyGenFlags::Int64, RF_Public|RF_Transient|RF_MarkAsNative, 1, STRUCT_OFFSET(UnLuaFunctionLibrary_eventGetFileLastModifiedTimestamp_Parms, ReturnValue), METADATA_PARAMS(nullptr, 0) };
	const UE4CodeGen_Private::FPropertyParamsBase* const Z_Construct_UFunction_UUnLuaFunctionLibrary_GetFileLastModifiedTimestamp_Statics::PropPointers[] = {
		(const UE4CodeGen_Private::FPropertyParamsBase*)&Z_Construct_UFunction_UUnLuaFunctionLibrary_GetFileLastModifiedTimestamp_Statics::NewProp_Path,
		(const UE4CodeGen_Private::FPropertyParamsBase*)&Z_Construct_UFunction_UUnLuaFunctionLibrary_GetFileLastModifiedTimestamp_Statics::NewProp_ReturnValue,
	};
#if WITH_METADATA
	const UE4CodeGen_Private::FMetaDataPairParam Z_Construct_UFunction_UUnLuaFunctionLibrary_GetFileLastModifiedTimestamp_Statics::Function_MetaDataParams[] = {
		{ "ModuleRelativePath", "Public/UnLuaFunctionLibrary.h" },
	};
#endif
	const UE4CodeGen_Private::FFunctionParams Z_Construct_UFunction_UUnLuaFunctionLibrary_GetFileLastModifiedTimestamp_Statics::FuncParams = { (UObject*(*)())Z_Construct_UClass_UUnLuaFunctionLibrary, nullptr, "GetFileLastModifiedTimestamp", nullptr, nullptr, sizeof(UnLuaFunctionLibrary_eventGetFileLastModifiedTimestamp_Parms), Z_Construct_UFunction_UUnLuaFunctionLibrary_GetFileLastModifiedTimestamp_Statics::PropPointers, UE_ARRAY_COUNT(Z_Construct_UFunction_UUnLuaFunctionLibrary_GetFileLastModifiedTimestamp_Statics::PropPointers), RF_Public|RF_Transient|RF_MarkAsNative, (EFunctionFlags)0x04022401, 0, 0, METADATA_PARAMS(Z_Construct_UFunction_UUnLuaFunctionLibrary_GetFileLastModifiedTimestamp_Statics::Function_MetaDataParams, UE_ARRAY_COUNT(Z_Construct_UFunction_UUnLuaFunctionLibrary_GetFileLastModifiedTimestamp_Statics::Function_MetaDataParams)) };
	UFunction* Z_Construct_UFunction_UUnLuaFunctionLibrary_GetFileLastModifiedTimestamp()
	{
		static UFunction* ReturnFunction = nullptr;
		if (!ReturnFunction)
		{
			UE4CodeGen_Private::ConstructUFunction(ReturnFunction, Z_Construct_UFunction_UUnLuaFunctionLibrary_GetFileLastModifiedTimestamp_Statics::FuncParams);
		}
		return ReturnFunction;
	}
	struct Z_Construct_UFunction_UUnLuaFunctionLibrary_GetScriptRootPath_Statics
	{
		struct UnLuaFunctionLibrary_eventGetScriptRootPath_Parms
		{
			FString ReturnValue;
		};
		static const UE4CodeGen_Private::FStrPropertyParams NewProp_ReturnValue;
		static const UE4CodeGen_Private::FPropertyParamsBase* const PropPointers[];
#if WITH_METADATA
		static const UE4CodeGen_Private::FMetaDataPairParam Function_MetaDataParams[];
#endif
		static const UE4CodeGen_Private::FFunctionParams FuncParams;
	};
	const UE4CodeGen_Private::FStrPropertyParams Z_Construct_UFunction_UUnLuaFunctionLibrary_GetScriptRootPath_Statics::NewProp_ReturnValue = { "ReturnValue", nullptr, (EPropertyFlags)0x0010000000000580, UE4CodeGen_Private::EPropertyGenFlags::Str, RF_Public|RF_Transient|RF_MarkAsNative, 1, STRUCT_OFFSET(UnLuaFunctionLibrary_eventGetScriptRootPath_Parms, ReturnValue), METADATA_PARAMS(nullptr, 0) };
	const UE4CodeGen_Private::FPropertyParamsBase* const Z_Construct_UFunction_UUnLuaFunctionLibrary_GetScriptRootPath_Statics::PropPointers[] = {
		(const UE4CodeGen_Private::FPropertyParamsBase*)&Z_Construct_UFunction_UUnLuaFunctionLibrary_GetScriptRootPath_Statics::NewProp_ReturnValue,
	};
#if WITH_METADATA
	const UE4CodeGen_Private::FMetaDataPairParam Z_Construct_UFunction_UUnLuaFunctionLibrary_GetScriptRootPath_Statics::Function_MetaDataParams[] = {
		{ "ModuleRelativePath", "Public/UnLuaFunctionLibrary.h" },
	};
#endif
	const UE4CodeGen_Private::FFunctionParams Z_Construct_UFunction_UUnLuaFunctionLibrary_GetScriptRootPath_Statics::FuncParams = { (UObject*(*)())Z_Construct_UClass_UUnLuaFunctionLibrary, nullptr, "GetScriptRootPath", nullptr, nullptr, sizeof(UnLuaFunctionLibrary_eventGetScriptRootPath_Parms), Z_Construct_UFunction_UUnLuaFunctionLibrary_GetScriptRootPath_Statics::PropPointers, UE_ARRAY_COUNT(Z_Construct_UFunction_UUnLuaFunctionLibrary_GetScriptRootPath_Statics::PropPointers), RF_Public|RF_Transient|RF_MarkAsNative, (EFunctionFlags)0x04022401, 0, 0, METADATA_PARAMS(Z_Construct_UFunction_UUnLuaFunctionLibrary_GetScriptRootPath_Statics::Function_MetaDataParams, UE_ARRAY_COUNT(Z_Construct_UFunction_UUnLuaFunctionLibrary_GetScriptRootPath_Statics::Function_MetaDataParams)) };
	UFunction* Z_Construct_UFunction_UUnLuaFunctionLibrary_GetScriptRootPath()
	{
		static UFunction* ReturnFunction = nullptr;
		if (!ReturnFunction)
		{
			UE4CodeGen_Private::ConstructUFunction(ReturnFunction, Z_Construct_UFunction_UUnLuaFunctionLibrary_GetScriptRootPath_Statics::FuncParams);
		}
		return ReturnFunction;
	}
	struct Z_Construct_UFunction_UUnLuaFunctionLibrary_HotReload_Statics
	{
#if WITH_METADATA
		static const UE4CodeGen_Private::FMetaDataPairParam Function_MetaDataParams[];
#endif
		static const UE4CodeGen_Private::FFunctionParams FuncParams;
	};
#if WITH_METADATA
	const UE4CodeGen_Private::FMetaDataPairParam Z_Construct_UFunction_UUnLuaFunctionLibrary_HotReload_Statics::Function_MetaDataParams[] = {
		{ "ModuleRelativePath", "Public/UnLuaFunctionLibrary.h" },
	};
#endif
	const UE4CodeGen_Private::FFunctionParams Z_Construct_UFunction_UUnLuaFunctionLibrary_HotReload_Statics::FuncParams = { (UObject*(*)())Z_Construct_UClass_UUnLuaFunctionLibrary, nullptr, "HotReload", nullptr, nullptr, 0, nullptr, 0, RF_Public|RF_Transient|RF_MarkAsNative, (EFunctionFlags)0x04022401, 0, 0, METADATA_PARAMS(Z_Construct_UFunction_UUnLuaFunctionLibrary_HotReload_Statics::Function_MetaDataParams, UE_ARRAY_COUNT(Z_Construct_UFunction_UUnLuaFunctionLibrary_HotReload_Statics::Function_MetaDataParams)) };
	UFunction* Z_Construct_UFunction_UUnLuaFunctionLibrary_HotReload()
	{
		static UFunction* ReturnFunction = nullptr;
		if (!ReturnFunction)
		{
			UE4CodeGen_Private::ConstructUFunction(ReturnFunction, Z_Construct_UFunction_UUnLuaFunctionLibrary_HotReload_Statics::FuncParams);
		}
		return ReturnFunction;
	}
	UClass* Z_Construct_UClass_UUnLuaFunctionLibrary_NoRegister()
	{
		return UUnLuaFunctionLibrary::StaticClass();
	}
	struct Z_Construct_UClass_UUnLuaFunctionLibrary_Statics
	{
		static UObject* (*const DependentSingletons[])();
		static const FClassFunctionLinkInfo FuncInfo[];
#if WITH_METADATA
		static const UE4CodeGen_Private::FMetaDataPairParam Class_MetaDataParams[];
#endif
		static const FCppClassTypeInfoStatic StaticCppClassTypeInfo;
		static const UE4CodeGen_Private::FClassParams ClassParams;
	};
	UObject* (*const Z_Construct_UClass_UUnLuaFunctionLibrary_Statics::DependentSingletons[])() = {
		(UObject* (*)())Z_Construct_UClass_UBlueprintFunctionLibrary,
		(UObject* (*)())Z_Construct_UPackage__Script_UnLua,
	};
	const FClassFunctionLinkInfo Z_Construct_UClass_UUnLuaFunctionLibrary_Statics::FuncInfo[] = {
		{ &Z_Construct_UFunction_UUnLuaFunctionLibrary_GetFileLastModifiedTimestamp, "GetFileLastModifiedTimestamp" }, // 732630654
		{ &Z_Construct_UFunction_UUnLuaFunctionLibrary_GetScriptRootPath, "GetScriptRootPath" }, // 3448595373
		{ &Z_Construct_UFunction_UUnLuaFunctionLibrary_HotReload, "HotReload" }, // 1598881140
	};
#if WITH_METADATA
	const UE4CodeGen_Private::FMetaDataPairParam Z_Construct_UClass_UUnLuaFunctionLibrary_Statics::Class_MetaDataParams[] = {
		{ "IncludePath", "UnLuaFunctionLibrary.h" },
		{ "ModuleRelativePath", "Public/UnLuaFunctionLibrary.h" },
	};
#endif
	const FCppClassTypeInfoStatic Z_Construct_UClass_UUnLuaFunctionLibrary_Statics::StaticCppClassTypeInfo = {
		TCppClassTypeTraits<UUnLuaFunctionLibrary>::IsAbstract,
	};
	const UE4CodeGen_Private::FClassParams Z_Construct_UClass_UUnLuaFunctionLibrary_Statics::ClassParams = {
		&UUnLuaFunctionLibrary::StaticClass,
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
		METADATA_PARAMS(Z_Construct_UClass_UUnLuaFunctionLibrary_Statics::Class_MetaDataParams, UE_ARRAY_COUNT(Z_Construct_UClass_UUnLuaFunctionLibrary_Statics::Class_MetaDataParams))
	};
	UClass* Z_Construct_UClass_UUnLuaFunctionLibrary()
	{
		static UClass* OuterClass = nullptr;
		if (!OuterClass)
		{
			UE4CodeGen_Private::ConstructUClass(OuterClass, Z_Construct_UClass_UUnLuaFunctionLibrary_Statics::ClassParams);
		}
		return OuterClass;
	}
	IMPLEMENT_CLASS(UUnLuaFunctionLibrary, 1591639745);
	template<> UNLUA_API UClass* StaticClass<UUnLuaFunctionLibrary>()
	{
		return UUnLuaFunctionLibrary::StaticClass();
	}
	static FCompiledInDefer Z_CompiledInDefer_UClass_UUnLuaFunctionLibrary(Z_Construct_UClass_UUnLuaFunctionLibrary, &UUnLuaFunctionLibrary::StaticClass, TEXT("/Script/UnLua"), TEXT("UUnLuaFunctionLibrary"), false, nullptr, nullptr, nullptr);
	DEFINE_VTABLE_PTR_HELPER_CTOR(UUnLuaFunctionLibrary);
PRAGMA_ENABLE_DEPRECATION_WARNINGS
#ifdef _MSC_VER
#pragma warning (pop)
#endif
