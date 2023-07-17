// Copyright Epic Games, Inc. All Rights Reserved.
/*===========================================================================
	Generated code exported from UnrealHeaderTool.
	DO NOT modify this manually! Edit the corresponding .h files instead!
===========================================================================*/

#include "UObject/GeneratedCppIncludes.h"
#include "UnLua/Public/UnLuaLatentAction.h"
#ifdef _MSC_VER
#pragma warning (push)
#pragma warning (disable : 4883)
#endif
PRAGMA_DISABLE_DEPRECATION_WARNINGS
void EmptyLinkFunctionForGeneratedCodeUnLuaLatentAction() {}
// Cross Module References
	UNLUA_API UFunction* Z_Construct_UDelegateFunction_UnLua_UnLuaLatentActionCallback__DelegateSignature();
	UPackage* Z_Construct_UPackage__Script_UnLua();
	UNLUA_API UClass* Z_Construct_UClass_UUnLuaLatentAction_NoRegister();
	UNLUA_API UClass* Z_Construct_UClass_UUnLuaLatentAction();
	COREUOBJECT_API UClass* Z_Construct_UClass_UObject();
// End Cross Module References
	struct Z_Construct_UDelegateFunction_UnLua_UnLuaLatentActionCallback__DelegateSignature_Statics
	{
		struct _Script_UnLua_eventUnLuaLatentActionCallback_Parms
		{
			int32 InLinkage;
		};
		static const UE4CodeGen_Private::FIntPropertyParams NewProp_InLinkage;
		static const UE4CodeGen_Private::FPropertyParamsBase* const PropPointers[];
#if WITH_METADATA
		static const UE4CodeGen_Private::FMetaDataPairParam Function_MetaDataParams[];
#endif
		static const UE4CodeGen_Private::FFunctionParams FuncParams;
	};
	const UE4CodeGen_Private::FIntPropertyParams Z_Construct_UDelegateFunction_UnLua_UnLuaLatentActionCallback__DelegateSignature_Statics::NewProp_InLinkage = { "InLinkage", nullptr, (EPropertyFlags)0x0010000000000080, UE4CodeGen_Private::EPropertyGenFlags::Int, RF_Public|RF_Transient|RF_MarkAsNative, 1, STRUCT_OFFSET(_Script_UnLua_eventUnLuaLatentActionCallback_Parms, InLinkage), METADATA_PARAMS(nullptr, 0) };
	const UE4CodeGen_Private::FPropertyParamsBase* const Z_Construct_UDelegateFunction_UnLua_UnLuaLatentActionCallback__DelegateSignature_Statics::PropPointers[] = {
		(const UE4CodeGen_Private::FPropertyParamsBase*)&Z_Construct_UDelegateFunction_UnLua_UnLuaLatentActionCallback__DelegateSignature_Statics::NewProp_InLinkage,
	};
#if WITH_METADATA
	const UE4CodeGen_Private::FMetaDataPairParam Z_Construct_UDelegateFunction_UnLua_UnLuaLatentActionCallback__DelegateSignature_Statics::Function_MetaDataParams[] = {
		{ "ModuleRelativePath", "Public/UnLuaLatentAction.h" },
	};
#endif
	const UE4CodeGen_Private::FFunctionParams Z_Construct_UDelegateFunction_UnLua_UnLuaLatentActionCallback__DelegateSignature_Statics::FuncParams = { (UObject*(*)())Z_Construct_UPackage__Script_UnLua, nullptr, "UnLuaLatentActionCallback__DelegateSignature", nullptr, nullptr, sizeof(_Script_UnLua_eventUnLuaLatentActionCallback_Parms), Z_Construct_UDelegateFunction_UnLua_UnLuaLatentActionCallback__DelegateSignature_Statics::PropPointers, UE_ARRAY_COUNT(Z_Construct_UDelegateFunction_UnLua_UnLuaLatentActionCallback__DelegateSignature_Statics::PropPointers), RF_Public|RF_Transient|RF_MarkAsNative, (EFunctionFlags)0x00120000, 0, 0, METADATA_PARAMS(Z_Construct_UDelegateFunction_UnLua_UnLuaLatentActionCallback__DelegateSignature_Statics::Function_MetaDataParams, UE_ARRAY_COUNT(Z_Construct_UDelegateFunction_UnLua_UnLuaLatentActionCallback__DelegateSignature_Statics::Function_MetaDataParams)) };
	UFunction* Z_Construct_UDelegateFunction_UnLua_UnLuaLatentActionCallback__DelegateSignature()
	{
		static UFunction* ReturnFunction = nullptr;
		if (!ReturnFunction)
		{
			UE4CodeGen_Private::ConstructUFunction(ReturnFunction, Z_Construct_UDelegateFunction_UnLua_UnLuaLatentActionCallback__DelegateSignature_Statics::FuncParams);
		}
		return ReturnFunction;
	}
	DEFINE_FUNCTION(UUnLuaLatentAction::execOnLegacyCallback)
	{
		P_GET_PROPERTY(FIntProperty,Z_Param_InLinkage);
		P_FINISH;
		P_NATIVE_BEGIN;
		P_THIS->OnLegacyCallback(Z_Param_InLinkage);
		P_NATIVE_END;
	}
	DEFINE_FUNCTION(UUnLuaLatentAction::execSetTickableWhenPaused)
	{
		P_GET_UBOOL(Z_Param_bTickableWhenPaused);
		P_FINISH;
		P_NATIVE_BEGIN;
		P_THIS->SetTickableWhenPaused(Z_Param_bTickableWhenPaused);
		P_NATIVE_END;
	}
	DEFINE_FUNCTION(UUnLuaLatentAction::execGetTickableWhenPaused)
	{
		P_FINISH;
		P_NATIVE_BEGIN;
		*(bool*)Z_Param__Result=P_THIS->GetTickableWhenPaused();
		P_NATIVE_END;
	}
	DEFINE_FUNCTION(UUnLuaLatentAction::execOnCompleted)
	{
		P_GET_PROPERTY(FIntProperty,Z_Param_InLinkage);
		P_FINISH;
		P_NATIVE_BEGIN;
		P_THIS->OnCompleted(Z_Param_InLinkage);
		P_NATIVE_END;
	}
	void UUnLuaLatentAction::StaticRegisterNativesUUnLuaLatentAction()
	{
		UClass* Class = UUnLuaLatentAction::StaticClass();
		static const FNameNativePtrPair Funcs[] = {
			{ "GetTickableWhenPaused", &UUnLuaLatentAction::execGetTickableWhenPaused },
			{ "OnCompleted", &UUnLuaLatentAction::execOnCompleted },
			{ "OnLegacyCallback", &UUnLuaLatentAction::execOnLegacyCallback },
			{ "SetTickableWhenPaused", &UUnLuaLatentAction::execSetTickableWhenPaused },
		};
		FNativeFunctionRegistrar::RegisterFunctions(Class, Funcs, UE_ARRAY_COUNT(Funcs));
	}
	struct Z_Construct_UFunction_UUnLuaLatentAction_GetTickableWhenPaused_Statics
	{
		struct UnLuaLatentAction_eventGetTickableWhenPaused_Parms
		{
			bool ReturnValue;
		};
		static void NewProp_ReturnValue_SetBit(void* Obj);
		static const UE4CodeGen_Private::FBoolPropertyParams NewProp_ReturnValue;
		static const UE4CodeGen_Private::FPropertyParamsBase* const PropPointers[];
#if WITH_METADATA
		static const UE4CodeGen_Private::FMetaDataPairParam Function_MetaDataParams[];
#endif
		static const UE4CodeGen_Private::FFunctionParams FuncParams;
	};
	void Z_Construct_UFunction_UUnLuaLatentAction_GetTickableWhenPaused_Statics::NewProp_ReturnValue_SetBit(void* Obj)
	{
		((UnLuaLatentAction_eventGetTickableWhenPaused_Parms*)Obj)->ReturnValue = 1;
	}
	const UE4CodeGen_Private::FBoolPropertyParams Z_Construct_UFunction_UUnLuaLatentAction_GetTickableWhenPaused_Statics::NewProp_ReturnValue = { "ReturnValue", nullptr, (EPropertyFlags)0x0010000000000580, UE4CodeGen_Private::EPropertyGenFlags::Bool | UE4CodeGen_Private::EPropertyGenFlags::NativeBool, RF_Public|RF_Transient|RF_MarkAsNative, 1, sizeof(bool), sizeof(UnLuaLatentAction_eventGetTickableWhenPaused_Parms), &Z_Construct_UFunction_UUnLuaLatentAction_GetTickableWhenPaused_Statics::NewProp_ReturnValue_SetBit, METADATA_PARAMS(nullptr, 0) };
	const UE4CodeGen_Private::FPropertyParamsBase* const Z_Construct_UFunction_UUnLuaLatentAction_GetTickableWhenPaused_Statics::PropPointers[] = {
		(const UE4CodeGen_Private::FPropertyParamsBase*)&Z_Construct_UFunction_UUnLuaLatentAction_GetTickableWhenPaused_Statics::NewProp_ReturnValue,
	};
#if WITH_METADATA
	const UE4CodeGen_Private::FMetaDataPairParam Z_Construct_UFunction_UUnLuaLatentAction_GetTickableWhenPaused_Statics::Function_MetaDataParams[] = {
		{ "ModuleRelativePath", "Public/UnLuaLatentAction.h" },
	};
#endif
	const UE4CodeGen_Private::FFunctionParams Z_Construct_UFunction_UUnLuaLatentAction_GetTickableWhenPaused_Statics::FuncParams = { (UObject*(*)())Z_Construct_UClass_UUnLuaLatentAction, nullptr, "GetTickableWhenPaused", nullptr, nullptr, sizeof(UnLuaLatentAction_eventGetTickableWhenPaused_Parms), Z_Construct_UFunction_UUnLuaLatentAction_GetTickableWhenPaused_Statics::PropPointers, UE_ARRAY_COUNT(Z_Construct_UFunction_UUnLuaLatentAction_GetTickableWhenPaused_Statics::PropPointers), RF_Public|RF_Transient|RF_MarkAsNative, (EFunctionFlags)0x04020401, 0, 0, METADATA_PARAMS(Z_Construct_UFunction_UUnLuaLatentAction_GetTickableWhenPaused_Statics::Function_MetaDataParams, UE_ARRAY_COUNT(Z_Construct_UFunction_UUnLuaLatentAction_GetTickableWhenPaused_Statics::Function_MetaDataParams)) };
	UFunction* Z_Construct_UFunction_UUnLuaLatentAction_GetTickableWhenPaused()
	{
		static UFunction* ReturnFunction = nullptr;
		if (!ReturnFunction)
		{
			UE4CodeGen_Private::ConstructUFunction(ReturnFunction, Z_Construct_UFunction_UUnLuaLatentAction_GetTickableWhenPaused_Statics::FuncParams);
		}
		return ReturnFunction;
	}
	struct Z_Construct_UFunction_UUnLuaLatentAction_OnCompleted_Statics
	{
		struct UnLuaLatentAction_eventOnCompleted_Parms
		{
			int32 InLinkage;
		};
		static const UE4CodeGen_Private::FIntPropertyParams NewProp_InLinkage;
		static const UE4CodeGen_Private::FPropertyParamsBase* const PropPointers[];
#if WITH_METADATA
		static const UE4CodeGen_Private::FMetaDataPairParam Function_MetaDataParams[];
#endif
		static const UE4CodeGen_Private::FFunctionParams FuncParams;
	};
	const UE4CodeGen_Private::FIntPropertyParams Z_Construct_UFunction_UUnLuaLatentAction_OnCompleted_Statics::NewProp_InLinkage = { "InLinkage", nullptr, (EPropertyFlags)0x0010000000000080, UE4CodeGen_Private::EPropertyGenFlags::Int, RF_Public|RF_Transient|RF_MarkAsNative, 1, STRUCT_OFFSET(UnLuaLatentAction_eventOnCompleted_Parms, InLinkage), METADATA_PARAMS(nullptr, 0) };
	const UE4CodeGen_Private::FPropertyParamsBase* const Z_Construct_UFunction_UUnLuaLatentAction_OnCompleted_Statics::PropPointers[] = {
		(const UE4CodeGen_Private::FPropertyParamsBase*)&Z_Construct_UFunction_UUnLuaLatentAction_OnCompleted_Statics::NewProp_InLinkage,
	};
#if WITH_METADATA
	const UE4CodeGen_Private::FMetaDataPairParam Z_Construct_UFunction_UUnLuaLatentAction_OnCompleted_Statics::Function_MetaDataParams[] = {
		{ "ModuleRelativePath", "Public/UnLuaLatentAction.h" },
	};
#endif
	const UE4CodeGen_Private::FFunctionParams Z_Construct_UFunction_UUnLuaLatentAction_OnCompleted_Statics::FuncParams = { (UObject*(*)())Z_Construct_UClass_UUnLuaLatentAction, nullptr, "OnCompleted", nullptr, nullptr, sizeof(UnLuaLatentAction_eventOnCompleted_Parms), Z_Construct_UFunction_UUnLuaLatentAction_OnCompleted_Statics::PropPointers, UE_ARRAY_COUNT(Z_Construct_UFunction_UUnLuaLatentAction_OnCompleted_Statics::PropPointers), RF_Public|RF_Transient|RF_MarkAsNative, (EFunctionFlags)0x40020401, 0, 0, METADATA_PARAMS(Z_Construct_UFunction_UUnLuaLatentAction_OnCompleted_Statics::Function_MetaDataParams, UE_ARRAY_COUNT(Z_Construct_UFunction_UUnLuaLatentAction_OnCompleted_Statics::Function_MetaDataParams)) };
	UFunction* Z_Construct_UFunction_UUnLuaLatentAction_OnCompleted()
	{
		static UFunction* ReturnFunction = nullptr;
		if (!ReturnFunction)
		{
			UE4CodeGen_Private::ConstructUFunction(ReturnFunction, Z_Construct_UFunction_UUnLuaLatentAction_OnCompleted_Statics::FuncParams);
		}
		return ReturnFunction;
	}
	struct Z_Construct_UFunction_UUnLuaLatentAction_OnLegacyCallback_Statics
	{
		struct UnLuaLatentAction_eventOnLegacyCallback_Parms
		{
			int32 InLinkage;
		};
		static const UE4CodeGen_Private::FIntPropertyParams NewProp_InLinkage;
		static const UE4CodeGen_Private::FPropertyParamsBase* const PropPointers[];
#if WITH_METADATA
		static const UE4CodeGen_Private::FMetaDataPairParam Function_MetaDataParams[];
#endif
		static const UE4CodeGen_Private::FFunctionParams FuncParams;
	};
	const UE4CodeGen_Private::FIntPropertyParams Z_Construct_UFunction_UUnLuaLatentAction_OnLegacyCallback_Statics::NewProp_InLinkage = { "InLinkage", nullptr, (EPropertyFlags)0x0010000000000080, UE4CodeGen_Private::EPropertyGenFlags::Int, RF_Public|RF_Transient|RF_MarkAsNative, 1, STRUCT_OFFSET(UnLuaLatentAction_eventOnLegacyCallback_Parms, InLinkage), METADATA_PARAMS(nullptr, 0) };
	const UE4CodeGen_Private::FPropertyParamsBase* const Z_Construct_UFunction_UUnLuaLatentAction_OnLegacyCallback_Statics::PropPointers[] = {
		(const UE4CodeGen_Private::FPropertyParamsBase*)&Z_Construct_UFunction_UUnLuaLatentAction_OnLegacyCallback_Statics::NewProp_InLinkage,
	};
#if WITH_METADATA
	const UE4CodeGen_Private::FMetaDataPairParam Z_Construct_UFunction_UUnLuaLatentAction_OnLegacyCallback_Statics::Function_MetaDataParams[] = {
		{ "Comment", "// End Interface FTickableGameObject\n" },
		{ "ModuleRelativePath", "Public/UnLuaLatentAction.h" },
		{ "ToolTip", "End Interface FTickableGameObject" },
	};
#endif
	const UE4CodeGen_Private::FFunctionParams Z_Construct_UFunction_UUnLuaLatentAction_OnLegacyCallback_Statics::FuncParams = { (UObject*(*)())Z_Construct_UClass_UUnLuaLatentAction, nullptr, "OnLegacyCallback", nullptr, nullptr, sizeof(UnLuaLatentAction_eventOnLegacyCallback_Parms), Z_Construct_UFunction_UUnLuaLatentAction_OnLegacyCallback_Statics::PropPointers, UE_ARRAY_COUNT(Z_Construct_UFunction_UUnLuaLatentAction_OnLegacyCallback_Statics::PropPointers), RF_Public|RF_Transient|RF_MarkAsNative, (EFunctionFlags)0x00020401, 0, 0, METADATA_PARAMS(Z_Construct_UFunction_UUnLuaLatentAction_OnLegacyCallback_Statics::Function_MetaDataParams, UE_ARRAY_COUNT(Z_Construct_UFunction_UUnLuaLatentAction_OnLegacyCallback_Statics::Function_MetaDataParams)) };
	UFunction* Z_Construct_UFunction_UUnLuaLatentAction_OnLegacyCallback()
	{
		static UFunction* ReturnFunction = nullptr;
		if (!ReturnFunction)
		{
			UE4CodeGen_Private::ConstructUFunction(ReturnFunction, Z_Construct_UFunction_UUnLuaLatentAction_OnLegacyCallback_Statics::FuncParams);
		}
		return ReturnFunction;
	}
	struct Z_Construct_UFunction_UUnLuaLatentAction_SetTickableWhenPaused_Statics
	{
		struct UnLuaLatentAction_eventSetTickableWhenPaused_Parms
		{
			bool bTickableWhenPaused;
		};
		static void NewProp_bTickableWhenPaused_SetBit(void* Obj);
		static const UE4CodeGen_Private::FBoolPropertyParams NewProp_bTickableWhenPaused;
		static const UE4CodeGen_Private::FPropertyParamsBase* const PropPointers[];
#if WITH_METADATA
		static const UE4CodeGen_Private::FMetaDataPairParam Function_MetaDataParams[];
#endif
		static const UE4CodeGen_Private::FFunctionParams FuncParams;
	};
	void Z_Construct_UFunction_UUnLuaLatentAction_SetTickableWhenPaused_Statics::NewProp_bTickableWhenPaused_SetBit(void* Obj)
	{
		((UnLuaLatentAction_eventSetTickableWhenPaused_Parms*)Obj)->bTickableWhenPaused = 1;
	}
	const UE4CodeGen_Private::FBoolPropertyParams Z_Construct_UFunction_UUnLuaLatentAction_SetTickableWhenPaused_Statics::NewProp_bTickableWhenPaused = { "bTickableWhenPaused", nullptr, (EPropertyFlags)0x0010000000000080, UE4CodeGen_Private::EPropertyGenFlags::Bool | UE4CodeGen_Private::EPropertyGenFlags::NativeBool, RF_Public|RF_Transient|RF_MarkAsNative, 1, sizeof(bool), sizeof(UnLuaLatentAction_eventSetTickableWhenPaused_Parms), &Z_Construct_UFunction_UUnLuaLatentAction_SetTickableWhenPaused_Statics::NewProp_bTickableWhenPaused_SetBit, METADATA_PARAMS(nullptr, 0) };
	const UE4CodeGen_Private::FPropertyParamsBase* const Z_Construct_UFunction_UUnLuaLatentAction_SetTickableWhenPaused_Statics::PropPointers[] = {
		(const UE4CodeGen_Private::FPropertyParamsBase*)&Z_Construct_UFunction_UUnLuaLatentAction_SetTickableWhenPaused_Statics::NewProp_bTickableWhenPaused,
	};
#if WITH_METADATA
	const UE4CodeGen_Private::FMetaDataPairParam Z_Construct_UFunction_UUnLuaLatentAction_SetTickableWhenPaused_Statics::Function_MetaDataParams[] = {
		{ "ModuleRelativePath", "Public/UnLuaLatentAction.h" },
	};
#endif
	const UE4CodeGen_Private::FFunctionParams Z_Construct_UFunction_UUnLuaLatentAction_SetTickableWhenPaused_Statics::FuncParams = { (UObject*(*)())Z_Construct_UClass_UUnLuaLatentAction, nullptr, "SetTickableWhenPaused", nullptr, nullptr, sizeof(UnLuaLatentAction_eventSetTickableWhenPaused_Parms), Z_Construct_UFunction_UUnLuaLatentAction_SetTickableWhenPaused_Statics::PropPointers, UE_ARRAY_COUNT(Z_Construct_UFunction_UUnLuaLatentAction_SetTickableWhenPaused_Statics::PropPointers), RF_Public|RF_Transient|RF_MarkAsNative, (EFunctionFlags)0x04020401, 0, 0, METADATA_PARAMS(Z_Construct_UFunction_UUnLuaLatentAction_SetTickableWhenPaused_Statics::Function_MetaDataParams, UE_ARRAY_COUNT(Z_Construct_UFunction_UUnLuaLatentAction_SetTickableWhenPaused_Statics::Function_MetaDataParams)) };
	UFunction* Z_Construct_UFunction_UUnLuaLatentAction_SetTickableWhenPaused()
	{
		static UFunction* ReturnFunction = nullptr;
		if (!ReturnFunction)
		{
			UE4CodeGen_Private::ConstructUFunction(ReturnFunction, Z_Construct_UFunction_UUnLuaLatentAction_SetTickableWhenPaused_Statics::FuncParams);
		}
		return ReturnFunction;
	}
	UClass* Z_Construct_UClass_UUnLuaLatentAction_NoRegister()
	{
		return UUnLuaLatentAction::StaticClass();
	}
	struct Z_Construct_UClass_UUnLuaLatentAction_Statics
	{
		static UObject* (*const DependentSingletons[])();
		static const FClassFunctionLinkInfo FuncInfo[];
#if WITH_METADATA
		static const UE4CodeGen_Private::FMetaDataPairParam Class_MetaDataParams[];
#endif
#if WITH_METADATA
		static const UE4CodeGen_Private::FMetaDataPairParam NewProp_Callback_MetaData[];
#endif
		static const UE4CodeGen_Private::FDelegatePropertyParams NewProp_Callback;
#if WITH_METADATA
		static const UE4CodeGen_Private::FMetaDataPairParam NewProp_bTickEvenWhenPaused_MetaData[];
#endif
		static void NewProp_bTickEvenWhenPaused_SetBit(void* Obj);
		static const UE4CodeGen_Private::FBoolPropertyParams NewProp_bTickEvenWhenPaused;
		static const UE4CodeGen_Private::FPropertyParamsBase* const PropPointers[];
		static const FCppClassTypeInfoStatic StaticCppClassTypeInfo;
		static const UE4CodeGen_Private::FClassParams ClassParams;
	};
	UObject* (*const Z_Construct_UClass_UUnLuaLatentAction_Statics::DependentSingletons[])() = {
		(UObject* (*)())Z_Construct_UClass_UObject,
		(UObject* (*)())Z_Construct_UPackage__Script_UnLua,
	};
	const FClassFunctionLinkInfo Z_Construct_UClass_UUnLuaLatentAction_Statics::FuncInfo[] = {
		{ &Z_Construct_UFunction_UUnLuaLatentAction_GetTickableWhenPaused, "GetTickableWhenPaused" }, // 532099143
		{ &Z_Construct_UFunction_UUnLuaLatentAction_OnCompleted, "OnCompleted" }, // 408849282
		{ &Z_Construct_UFunction_UUnLuaLatentAction_OnLegacyCallback, "OnLegacyCallback" }, // 1890161127
		{ &Z_Construct_UFunction_UUnLuaLatentAction_SetTickableWhenPaused, "SetTickableWhenPaused" }, // 4048758205
	};
#if WITH_METADATA
	const UE4CodeGen_Private::FMetaDataPairParam Z_Construct_UClass_UUnLuaLatentAction_Statics::Class_MetaDataParams[] = {
		{ "IncludePath", "UnLuaLatentAction.h" },
		{ "ModuleRelativePath", "Public/UnLuaLatentAction.h" },
	};
#endif
#if WITH_METADATA
	const UE4CodeGen_Private::FMetaDataPairParam Z_Construct_UClass_UUnLuaLatentAction_Statics::NewProp_Callback_MetaData[] = {
		{ "ModuleRelativePath", "Public/UnLuaLatentAction.h" },
	};
#endif
	const UE4CodeGen_Private::FDelegatePropertyParams Z_Construct_UClass_UUnLuaLatentAction_Statics::NewProp_Callback = { "Callback", nullptr, (EPropertyFlags)0x0010000000080000, UE4CodeGen_Private::EPropertyGenFlags::Delegate, RF_Public|RF_Transient|RF_MarkAsNative, 1, STRUCT_OFFSET(UUnLuaLatentAction, Callback), Z_Construct_UDelegateFunction_UnLua_UnLuaLatentActionCallback__DelegateSignature, METADATA_PARAMS(Z_Construct_UClass_UUnLuaLatentAction_Statics::NewProp_Callback_MetaData, UE_ARRAY_COUNT(Z_Construct_UClass_UUnLuaLatentAction_Statics::NewProp_Callback_MetaData)) };
#if WITH_METADATA
	const UE4CodeGen_Private::FMetaDataPairParam Z_Construct_UClass_UUnLuaLatentAction_Statics::NewProp_bTickEvenWhenPaused_MetaData[] = {
		{ "ModuleRelativePath", "Public/UnLuaLatentAction.h" },
	};
#endif
	void Z_Construct_UClass_UUnLuaLatentAction_Statics::NewProp_bTickEvenWhenPaused_SetBit(void* Obj)
	{
		((UUnLuaLatentAction*)Obj)->bTickEvenWhenPaused = 1;
	}
	const UE4CodeGen_Private::FBoolPropertyParams Z_Construct_UClass_UUnLuaLatentAction_Statics::NewProp_bTickEvenWhenPaused = { "bTickEvenWhenPaused", nullptr, (EPropertyFlags)0x0040000000000000, UE4CodeGen_Private::EPropertyGenFlags::Bool , RF_Public|RF_Transient|RF_MarkAsNative, 1, sizeof(uint8), sizeof(UUnLuaLatentAction), &Z_Construct_UClass_UUnLuaLatentAction_Statics::NewProp_bTickEvenWhenPaused_SetBit, METADATA_PARAMS(Z_Construct_UClass_UUnLuaLatentAction_Statics::NewProp_bTickEvenWhenPaused_MetaData, UE_ARRAY_COUNT(Z_Construct_UClass_UUnLuaLatentAction_Statics::NewProp_bTickEvenWhenPaused_MetaData)) };
	const UE4CodeGen_Private::FPropertyParamsBase* const Z_Construct_UClass_UUnLuaLatentAction_Statics::PropPointers[] = {
		(const UE4CodeGen_Private::FPropertyParamsBase*)&Z_Construct_UClass_UUnLuaLatentAction_Statics::NewProp_Callback,
		(const UE4CodeGen_Private::FPropertyParamsBase*)&Z_Construct_UClass_UUnLuaLatentAction_Statics::NewProp_bTickEvenWhenPaused,
	};
	const FCppClassTypeInfoStatic Z_Construct_UClass_UUnLuaLatentAction_Statics::StaticCppClassTypeInfo = {
		TCppClassTypeTraits<UUnLuaLatentAction>::IsAbstract,
	};
	const UE4CodeGen_Private::FClassParams Z_Construct_UClass_UUnLuaLatentAction_Statics::ClassParams = {
		&UUnLuaLatentAction::StaticClass,
		nullptr,
		&StaticCppClassTypeInfo,
		DependentSingletons,
		FuncInfo,
		Z_Construct_UClass_UUnLuaLatentAction_Statics::PropPointers,
		nullptr,
		UE_ARRAY_COUNT(DependentSingletons),
		UE_ARRAY_COUNT(FuncInfo),
		UE_ARRAY_COUNT(Z_Construct_UClass_UUnLuaLatentAction_Statics::PropPointers),
		0,
		0x008000A0u,
		METADATA_PARAMS(Z_Construct_UClass_UUnLuaLatentAction_Statics::Class_MetaDataParams, UE_ARRAY_COUNT(Z_Construct_UClass_UUnLuaLatentAction_Statics::Class_MetaDataParams))
	};
	UClass* Z_Construct_UClass_UUnLuaLatentAction()
	{
		static UClass* OuterClass = nullptr;
		if (!OuterClass)
		{
			UE4CodeGen_Private::ConstructUClass(OuterClass, Z_Construct_UClass_UUnLuaLatentAction_Statics::ClassParams);
		}
		return OuterClass;
	}
	IMPLEMENT_CLASS(UUnLuaLatentAction, 1452010936);
	template<> UNLUA_API UClass* StaticClass<UUnLuaLatentAction>()
	{
		return UUnLuaLatentAction::StaticClass();
	}
	static FCompiledInDefer Z_CompiledInDefer_UClass_UUnLuaLatentAction(Z_Construct_UClass_UUnLuaLatentAction, &UUnLuaLatentAction::StaticClass, TEXT("/Script/UnLua"), TEXT("UUnLuaLatentAction"), false, nullptr, nullptr, nullptr);
	DEFINE_VTABLE_PTR_HELPER_CTOR(UUnLuaLatentAction);
PRAGMA_ENABLE_DEPRECATION_WARNINGS
#ifdef _MSC_VER
#pragma warning (pop)
#endif
