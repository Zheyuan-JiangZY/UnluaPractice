// Copyright Epic Games, Inc. All Rights Reserved.
/*===========================================================================
	Generated code exported from UnrealHeaderTool.
	DO NOT modify this manually! Edit the corresponding .h files instead!
===========================================================================*/

#include "UObject/GeneratedCppIncludes.h"
#include "UnLua/Public/UnLuaManager.h"
#ifdef _MSC_VER
#pragma warning (push)
#pragma warning (disable : 4883)
#endif
PRAGMA_DISABLE_DEPRECATION_WARNINGS
void EmptyLinkFunctionForGeneratedCodeUnLuaManager() {}
// Cross Module References
	UNLUA_API UClass* Z_Construct_UClass_UUnLuaManager_NoRegister();
	UNLUA_API UClass* Z_Construct_UClass_UUnLuaManager();
	COREUOBJECT_API UClass* Z_Construct_UClass_UObject();
	UPackage* Z_Construct_UPackage__Script_UnLua();
	COREUOBJECT_API UScriptStruct* Z_Construct_UScriptStruct_FVector2D();
	COREUOBJECT_API UScriptStruct* Z_Construct_UScriptStruct_FVector();
	COREUOBJECT_API UClass* Z_Construct_UClass_UClass();
	COREUOBJECT_API UClass* Z_Construct_UClass_UObject_NoRegister();
	ENGINE_API UClass* Z_Construct_UClass_UDynamicBlueprintBinding_NoRegister();
	INPUTCORE_API UScriptStruct* Z_Construct_UScriptStruct_FKey();
	INPUTCORE_API UEnum* Z_Construct_UEnum_InputCore_ETouchIndex();
// End Cross Module References
	DEFINE_FUNCTION(UUnLuaManager::execOnLatentActionCompleted)
	{
		P_GET_PROPERTY(FIntProperty,Z_Param_LinkID);
		P_FINISH;
		P_NATIVE_BEGIN;
		P_THIS->OnLatentActionCompleted(Z_Param_LinkID);
		P_NATIVE_END;
	}
	DEFINE_FUNCTION(UUnLuaManager::execOverride)
	{
		P_GET_OBJECT(UClass,Z_Param_Class);
		P_GET_PROPERTY(FNameProperty,Z_Param_FunctionName);
		P_GET_PROPERTY(FNameProperty,Z_Param_LuaFunctionName);
		P_FINISH;
		P_NATIVE_BEGIN;
		P_THIS->Override(Z_Param_Class,Z_Param_FunctionName,Z_Param_LuaFunctionName);
		P_NATIVE_END;
	}
	DEFINE_FUNCTION(UUnLuaManager::execGetOrAddBindingObject)
	{
		P_GET_OBJECT(UClass,Z_Param_Class);
		P_GET_OBJECT(UClass,Z_Param_BindingClass);
		P_FINISH;
		P_NATIVE_BEGIN;
		*(UDynamicBlueprintBinding**)Z_Param__Result=P_THIS->GetOrAddBindingObject(Z_Param_Class,Z_Param_BindingClass);
		P_NATIVE_END;
	}
	static FName NAME_UUnLuaManager_EnhancedInputActionAxis1D = FName(TEXT("EnhancedInputActionAxis1D"));
	void UUnLuaManager::EnhancedInputActionAxis1D(float ActionValue, float ElapsedSeconds, float TriggeredSeconds)
	{
		UnLuaManager_eventEnhancedInputActionAxis1D_Parms Parms;
		Parms.ActionValue=ActionValue;
		Parms.ElapsedSeconds=ElapsedSeconds;
		Parms.TriggeredSeconds=TriggeredSeconds;
		ProcessEvent(FindFunctionChecked(NAME_UUnLuaManager_EnhancedInputActionAxis1D),&Parms);
	}
	static FName NAME_UUnLuaManager_EnhancedInputActionAxis2D = FName(TEXT("EnhancedInputActionAxis2D"));
	void UUnLuaManager::EnhancedInputActionAxis2D(FVector2D const& ActionValue, float ElapsedSeconds, float TriggeredSeconds)
	{
		UnLuaManager_eventEnhancedInputActionAxis2D_Parms Parms;
		Parms.ActionValue=ActionValue;
		Parms.ElapsedSeconds=ElapsedSeconds;
		Parms.TriggeredSeconds=TriggeredSeconds;
		ProcessEvent(FindFunctionChecked(NAME_UUnLuaManager_EnhancedInputActionAxis2D),&Parms);
	}
	static FName NAME_UUnLuaManager_EnhancedInputActionAxis3D = FName(TEXT("EnhancedInputActionAxis3D"));
	void UUnLuaManager::EnhancedInputActionAxis3D(FVector const& ActionValue, float ElapsedSeconds, float TriggeredSeconds)
	{
		UnLuaManager_eventEnhancedInputActionAxis3D_Parms Parms;
		Parms.ActionValue=ActionValue;
		Parms.ElapsedSeconds=ElapsedSeconds;
		Parms.TriggeredSeconds=TriggeredSeconds;
		ProcessEvent(FindFunctionChecked(NAME_UUnLuaManager_EnhancedInputActionAxis3D),&Parms);
	}
	static FName NAME_UUnLuaManager_EnhancedInputActionDigital = FName(TEXT("EnhancedInputActionDigital"));
	void UUnLuaManager::EnhancedInputActionDigital(bool ActionValue, float ElapsedSeconds, float TriggeredSeconds)
	{
		UnLuaManager_eventEnhancedInputActionDigital_Parms Parms;
		Parms.ActionValue=ActionValue ? true : false;
		Parms.ElapsedSeconds=ElapsedSeconds;
		Parms.TriggeredSeconds=TriggeredSeconds;
		ProcessEvent(FindFunctionChecked(NAME_UUnLuaManager_EnhancedInputActionDigital),&Parms);
	}
	static FName NAME_UUnLuaManager_InputAction = FName(TEXT("InputAction"));
	void UUnLuaManager::InputAction(FKey Key)
	{
		UnLuaManager_eventInputAction_Parms Parms;
		Parms.Key=Key;
		ProcessEvent(FindFunctionChecked(NAME_UUnLuaManager_InputAction),&Parms);
	}
	static FName NAME_UUnLuaManager_InputAxis = FName(TEXT("InputAxis"));
	void UUnLuaManager::InputAxis(float AxisValue)
	{
		UnLuaManager_eventInputAxis_Parms Parms;
		Parms.AxisValue=AxisValue;
		ProcessEvent(FindFunctionChecked(NAME_UUnLuaManager_InputAxis),&Parms);
	}
	static FName NAME_UUnLuaManager_InputGesture = FName(TEXT("InputGesture"));
	void UUnLuaManager::InputGesture(float Value)
	{
		UnLuaManager_eventInputGesture_Parms Parms;
		Parms.Value=Value;
		ProcessEvent(FindFunctionChecked(NAME_UUnLuaManager_InputGesture),&Parms);
	}
	static FName NAME_UUnLuaManager_InputTouch = FName(TEXT("InputTouch"));
	void UUnLuaManager::InputTouch(ETouchIndex::Type FingerIndex, FVector const& Location)
	{
		UnLuaManager_eventInputTouch_Parms Parms;
		Parms.FingerIndex=FingerIndex;
		Parms.Location=Location;
		ProcessEvent(FindFunctionChecked(NAME_UUnLuaManager_InputTouch),&Parms);
	}
	static FName NAME_UUnLuaManager_InputVectorAxis = FName(TEXT("InputVectorAxis"));
	void UUnLuaManager::InputVectorAxis(FVector const& AxisValue)
	{
		UnLuaManager_eventInputVectorAxis_Parms Parms;
		Parms.AxisValue=AxisValue;
		ProcessEvent(FindFunctionChecked(NAME_UUnLuaManager_InputVectorAxis),&Parms);
	}
	static FName NAME_UUnLuaManager_TriggerAnimNotify = FName(TEXT("TriggerAnimNotify"));
	void UUnLuaManager::TriggerAnimNotify()
	{
		ProcessEvent(FindFunctionChecked(NAME_UUnLuaManager_TriggerAnimNotify),NULL);
	}
	void UUnLuaManager::StaticRegisterNativesUUnLuaManager()
	{
		UClass* Class = UUnLuaManager::StaticClass();
		static const FNameNativePtrPair Funcs[] = {
			{ "GetOrAddBindingObject", &UUnLuaManager::execGetOrAddBindingObject },
			{ "OnLatentActionCompleted", &UUnLuaManager::execOnLatentActionCompleted },
			{ "Override", &UUnLuaManager::execOverride },
		};
		FNativeFunctionRegistrar::RegisterFunctions(Class, Funcs, UE_ARRAY_COUNT(Funcs));
	}
	struct Z_Construct_UFunction_UUnLuaManager_EnhancedInputActionAxis1D_Statics
	{
		static const UE4CodeGen_Private::FFloatPropertyParams NewProp_ActionValue;
		static const UE4CodeGen_Private::FFloatPropertyParams NewProp_ElapsedSeconds;
		static const UE4CodeGen_Private::FFloatPropertyParams NewProp_TriggeredSeconds;
		static const UE4CodeGen_Private::FPropertyParamsBase* const PropPointers[];
#if WITH_METADATA
		static const UE4CodeGen_Private::FMetaDataPairParam Function_MetaDataParams[];
#endif
		static const UE4CodeGen_Private::FFunctionParams FuncParams;
	};
	const UE4CodeGen_Private::FFloatPropertyParams Z_Construct_UFunction_UUnLuaManager_EnhancedInputActionAxis1D_Statics::NewProp_ActionValue = { "ActionValue", nullptr, (EPropertyFlags)0x0010000000000080, UE4CodeGen_Private::EPropertyGenFlags::Float, RF_Public|RF_Transient|RF_MarkAsNative, 1, STRUCT_OFFSET(UnLuaManager_eventEnhancedInputActionAxis1D_Parms, ActionValue), METADATA_PARAMS(nullptr, 0) };
	const UE4CodeGen_Private::FFloatPropertyParams Z_Construct_UFunction_UUnLuaManager_EnhancedInputActionAxis1D_Statics::NewProp_ElapsedSeconds = { "ElapsedSeconds", nullptr, (EPropertyFlags)0x0010000000000080, UE4CodeGen_Private::EPropertyGenFlags::Float, RF_Public|RF_Transient|RF_MarkAsNative, 1, STRUCT_OFFSET(UnLuaManager_eventEnhancedInputActionAxis1D_Parms, ElapsedSeconds), METADATA_PARAMS(nullptr, 0) };
	const UE4CodeGen_Private::FFloatPropertyParams Z_Construct_UFunction_UUnLuaManager_EnhancedInputActionAxis1D_Statics::NewProp_TriggeredSeconds = { "TriggeredSeconds", nullptr, (EPropertyFlags)0x0010000000000080, UE4CodeGen_Private::EPropertyGenFlags::Float, RF_Public|RF_Transient|RF_MarkAsNative, 1, STRUCT_OFFSET(UnLuaManager_eventEnhancedInputActionAxis1D_Parms, TriggeredSeconds), METADATA_PARAMS(nullptr, 0) };
	const UE4CodeGen_Private::FPropertyParamsBase* const Z_Construct_UFunction_UUnLuaManager_EnhancedInputActionAxis1D_Statics::PropPointers[] = {
		(const UE4CodeGen_Private::FPropertyParamsBase*)&Z_Construct_UFunction_UUnLuaManager_EnhancedInputActionAxis1D_Statics::NewProp_ActionValue,
		(const UE4CodeGen_Private::FPropertyParamsBase*)&Z_Construct_UFunction_UUnLuaManager_EnhancedInputActionAxis1D_Statics::NewProp_ElapsedSeconds,
		(const UE4CodeGen_Private::FPropertyParamsBase*)&Z_Construct_UFunction_UUnLuaManager_EnhancedInputActionAxis1D_Statics::NewProp_TriggeredSeconds,
	};
#if WITH_METADATA
	const UE4CodeGen_Private::FMetaDataPairParam Z_Construct_UFunction_UUnLuaManager_EnhancedInputActionAxis1D_Statics::Function_MetaDataParams[] = {
		{ "ModuleRelativePath", "Public/UnLuaManager.h" },
	};
#endif
	const UE4CodeGen_Private::FFunctionParams Z_Construct_UFunction_UUnLuaManager_EnhancedInputActionAxis1D_Statics::FuncParams = { (UObject*(*)())Z_Construct_UClass_UUnLuaManager, nullptr, "EnhancedInputActionAxis1D", nullptr, nullptr, sizeof(UnLuaManager_eventEnhancedInputActionAxis1D_Parms), Z_Construct_UFunction_UUnLuaManager_EnhancedInputActionAxis1D_Statics::PropPointers, UE_ARRAY_COUNT(Z_Construct_UFunction_UUnLuaManager_EnhancedInputActionAxis1D_Statics::PropPointers), RF_Public|RF_Transient|RF_MarkAsNative, (EFunctionFlags)0x08020800, 0, 0, METADATA_PARAMS(Z_Construct_UFunction_UUnLuaManager_EnhancedInputActionAxis1D_Statics::Function_MetaDataParams, UE_ARRAY_COUNT(Z_Construct_UFunction_UUnLuaManager_EnhancedInputActionAxis1D_Statics::Function_MetaDataParams)) };
	UFunction* Z_Construct_UFunction_UUnLuaManager_EnhancedInputActionAxis1D()
	{
		static UFunction* ReturnFunction = nullptr;
		if (!ReturnFunction)
		{
			UE4CodeGen_Private::ConstructUFunction(ReturnFunction, Z_Construct_UFunction_UUnLuaManager_EnhancedInputActionAxis1D_Statics::FuncParams);
		}
		return ReturnFunction;
	}
	struct Z_Construct_UFunction_UUnLuaManager_EnhancedInputActionAxis2D_Statics
	{
#if WITH_METADATA
		static const UE4CodeGen_Private::FMetaDataPairParam NewProp_ActionValue_MetaData[];
#endif
		static const UE4CodeGen_Private::FStructPropertyParams NewProp_ActionValue;
		static const UE4CodeGen_Private::FFloatPropertyParams NewProp_ElapsedSeconds;
		static const UE4CodeGen_Private::FFloatPropertyParams NewProp_TriggeredSeconds;
		static const UE4CodeGen_Private::FPropertyParamsBase* const PropPointers[];
#if WITH_METADATA
		static const UE4CodeGen_Private::FMetaDataPairParam Function_MetaDataParams[];
#endif
		static const UE4CodeGen_Private::FFunctionParams FuncParams;
	};
#if WITH_METADATA
	const UE4CodeGen_Private::FMetaDataPairParam Z_Construct_UFunction_UUnLuaManager_EnhancedInputActionAxis2D_Statics::NewProp_ActionValue_MetaData[] = {
		{ "NativeConst", "" },
	};
#endif
	const UE4CodeGen_Private::FStructPropertyParams Z_Construct_UFunction_UUnLuaManager_EnhancedInputActionAxis2D_Statics::NewProp_ActionValue = { "ActionValue", nullptr, (EPropertyFlags)0x0010000008000182, UE4CodeGen_Private::EPropertyGenFlags::Struct, RF_Public|RF_Transient|RF_MarkAsNative, 1, STRUCT_OFFSET(UnLuaManager_eventEnhancedInputActionAxis2D_Parms, ActionValue), Z_Construct_UScriptStruct_FVector2D, METADATA_PARAMS(Z_Construct_UFunction_UUnLuaManager_EnhancedInputActionAxis2D_Statics::NewProp_ActionValue_MetaData, UE_ARRAY_COUNT(Z_Construct_UFunction_UUnLuaManager_EnhancedInputActionAxis2D_Statics::NewProp_ActionValue_MetaData)) };
	const UE4CodeGen_Private::FFloatPropertyParams Z_Construct_UFunction_UUnLuaManager_EnhancedInputActionAxis2D_Statics::NewProp_ElapsedSeconds = { "ElapsedSeconds", nullptr, (EPropertyFlags)0x0010000000000080, UE4CodeGen_Private::EPropertyGenFlags::Float, RF_Public|RF_Transient|RF_MarkAsNative, 1, STRUCT_OFFSET(UnLuaManager_eventEnhancedInputActionAxis2D_Parms, ElapsedSeconds), METADATA_PARAMS(nullptr, 0) };
	const UE4CodeGen_Private::FFloatPropertyParams Z_Construct_UFunction_UUnLuaManager_EnhancedInputActionAxis2D_Statics::NewProp_TriggeredSeconds = { "TriggeredSeconds", nullptr, (EPropertyFlags)0x0010000000000080, UE4CodeGen_Private::EPropertyGenFlags::Float, RF_Public|RF_Transient|RF_MarkAsNative, 1, STRUCT_OFFSET(UnLuaManager_eventEnhancedInputActionAxis2D_Parms, TriggeredSeconds), METADATA_PARAMS(nullptr, 0) };
	const UE4CodeGen_Private::FPropertyParamsBase* const Z_Construct_UFunction_UUnLuaManager_EnhancedInputActionAxis2D_Statics::PropPointers[] = {
		(const UE4CodeGen_Private::FPropertyParamsBase*)&Z_Construct_UFunction_UUnLuaManager_EnhancedInputActionAxis2D_Statics::NewProp_ActionValue,
		(const UE4CodeGen_Private::FPropertyParamsBase*)&Z_Construct_UFunction_UUnLuaManager_EnhancedInputActionAxis2D_Statics::NewProp_ElapsedSeconds,
		(const UE4CodeGen_Private::FPropertyParamsBase*)&Z_Construct_UFunction_UUnLuaManager_EnhancedInputActionAxis2D_Statics::NewProp_TriggeredSeconds,
	};
#if WITH_METADATA
	const UE4CodeGen_Private::FMetaDataPairParam Z_Construct_UFunction_UUnLuaManager_EnhancedInputActionAxis2D_Statics::Function_MetaDataParams[] = {
		{ "ModuleRelativePath", "Public/UnLuaManager.h" },
	};
#endif
	const UE4CodeGen_Private::FFunctionParams Z_Construct_UFunction_UUnLuaManager_EnhancedInputActionAxis2D_Statics::FuncParams = { (UObject*(*)())Z_Construct_UClass_UUnLuaManager, nullptr, "EnhancedInputActionAxis2D", nullptr, nullptr, sizeof(UnLuaManager_eventEnhancedInputActionAxis2D_Parms), Z_Construct_UFunction_UUnLuaManager_EnhancedInputActionAxis2D_Statics::PropPointers, UE_ARRAY_COUNT(Z_Construct_UFunction_UUnLuaManager_EnhancedInputActionAxis2D_Statics::PropPointers), RF_Public|RF_Transient|RF_MarkAsNative, (EFunctionFlags)0x08C20800, 0, 0, METADATA_PARAMS(Z_Construct_UFunction_UUnLuaManager_EnhancedInputActionAxis2D_Statics::Function_MetaDataParams, UE_ARRAY_COUNT(Z_Construct_UFunction_UUnLuaManager_EnhancedInputActionAxis2D_Statics::Function_MetaDataParams)) };
	UFunction* Z_Construct_UFunction_UUnLuaManager_EnhancedInputActionAxis2D()
	{
		static UFunction* ReturnFunction = nullptr;
		if (!ReturnFunction)
		{
			UE4CodeGen_Private::ConstructUFunction(ReturnFunction, Z_Construct_UFunction_UUnLuaManager_EnhancedInputActionAxis2D_Statics::FuncParams);
		}
		return ReturnFunction;
	}
	struct Z_Construct_UFunction_UUnLuaManager_EnhancedInputActionAxis3D_Statics
	{
#if WITH_METADATA
		static const UE4CodeGen_Private::FMetaDataPairParam NewProp_ActionValue_MetaData[];
#endif
		static const UE4CodeGen_Private::FStructPropertyParams NewProp_ActionValue;
		static const UE4CodeGen_Private::FFloatPropertyParams NewProp_ElapsedSeconds;
		static const UE4CodeGen_Private::FFloatPropertyParams NewProp_TriggeredSeconds;
		static const UE4CodeGen_Private::FPropertyParamsBase* const PropPointers[];
#if WITH_METADATA
		static const UE4CodeGen_Private::FMetaDataPairParam Function_MetaDataParams[];
#endif
		static const UE4CodeGen_Private::FFunctionParams FuncParams;
	};
#if WITH_METADATA
	const UE4CodeGen_Private::FMetaDataPairParam Z_Construct_UFunction_UUnLuaManager_EnhancedInputActionAxis3D_Statics::NewProp_ActionValue_MetaData[] = {
		{ "NativeConst", "" },
	};
#endif
	const UE4CodeGen_Private::FStructPropertyParams Z_Construct_UFunction_UUnLuaManager_EnhancedInputActionAxis3D_Statics::NewProp_ActionValue = { "ActionValue", nullptr, (EPropertyFlags)0x0010000008000182, UE4CodeGen_Private::EPropertyGenFlags::Struct, RF_Public|RF_Transient|RF_MarkAsNative, 1, STRUCT_OFFSET(UnLuaManager_eventEnhancedInputActionAxis3D_Parms, ActionValue), Z_Construct_UScriptStruct_FVector, METADATA_PARAMS(Z_Construct_UFunction_UUnLuaManager_EnhancedInputActionAxis3D_Statics::NewProp_ActionValue_MetaData, UE_ARRAY_COUNT(Z_Construct_UFunction_UUnLuaManager_EnhancedInputActionAxis3D_Statics::NewProp_ActionValue_MetaData)) };
	const UE4CodeGen_Private::FFloatPropertyParams Z_Construct_UFunction_UUnLuaManager_EnhancedInputActionAxis3D_Statics::NewProp_ElapsedSeconds = { "ElapsedSeconds", nullptr, (EPropertyFlags)0x0010000000000080, UE4CodeGen_Private::EPropertyGenFlags::Float, RF_Public|RF_Transient|RF_MarkAsNative, 1, STRUCT_OFFSET(UnLuaManager_eventEnhancedInputActionAxis3D_Parms, ElapsedSeconds), METADATA_PARAMS(nullptr, 0) };
	const UE4CodeGen_Private::FFloatPropertyParams Z_Construct_UFunction_UUnLuaManager_EnhancedInputActionAxis3D_Statics::NewProp_TriggeredSeconds = { "TriggeredSeconds", nullptr, (EPropertyFlags)0x0010000000000080, UE4CodeGen_Private::EPropertyGenFlags::Float, RF_Public|RF_Transient|RF_MarkAsNative, 1, STRUCT_OFFSET(UnLuaManager_eventEnhancedInputActionAxis3D_Parms, TriggeredSeconds), METADATA_PARAMS(nullptr, 0) };
	const UE4CodeGen_Private::FPropertyParamsBase* const Z_Construct_UFunction_UUnLuaManager_EnhancedInputActionAxis3D_Statics::PropPointers[] = {
		(const UE4CodeGen_Private::FPropertyParamsBase*)&Z_Construct_UFunction_UUnLuaManager_EnhancedInputActionAxis3D_Statics::NewProp_ActionValue,
		(const UE4CodeGen_Private::FPropertyParamsBase*)&Z_Construct_UFunction_UUnLuaManager_EnhancedInputActionAxis3D_Statics::NewProp_ElapsedSeconds,
		(const UE4CodeGen_Private::FPropertyParamsBase*)&Z_Construct_UFunction_UUnLuaManager_EnhancedInputActionAxis3D_Statics::NewProp_TriggeredSeconds,
	};
#if WITH_METADATA
	const UE4CodeGen_Private::FMetaDataPairParam Z_Construct_UFunction_UUnLuaManager_EnhancedInputActionAxis3D_Statics::Function_MetaDataParams[] = {
		{ "ModuleRelativePath", "Public/UnLuaManager.h" },
	};
#endif
	const UE4CodeGen_Private::FFunctionParams Z_Construct_UFunction_UUnLuaManager_EnhancedInputActionAxis3D_Statics::FuncParams = { (UObject*(*)())Z_Construct_UClass_UUnLuaManager, nullptr, "EnhancedInputActionAxis3D", nullptr, nullptr, sizeof(UnLuaManager_eventEnhancedInputActionAxis3D_Parms), Z_Construct_UFunction_UUnLuaManager_EnhancedInputActionAxis3D_Statics::PropPointers, UE_ARRAY_COUNT(Z_Construct_UFunction_UUnLuaManager_EnhancedInputActionAxis3D_Statics::PropPointers), RF_Public|RF_Transient|RF_MarkAsNative, (EFunctionFlags)0x08C20800, 0, 0, METADATA_PARAMS(Z_Construct_UFunction_UUnLuaManager_EnhancedInputActionAxis3D_Statics::Function_MetaDataParams, UE_ARRAY_COUNT(Z_Construct_UFunction_UUnLuaManager_EnhancedInputActionAxis3D_Statics::Function_MetaDataParams)) };
	UFunction* Z_Construct_UFunction_UUnLuaManager_EnhancedInputActionAxis3D()
	{
		static UFunction* ReturnFunction = nullptr;
		if (!ReturnFunction)
		{
			UE4CodeGen_Private::ConstructUFunction(ReturnFunction, Z_Construct_UFunction_UUnLuaManager_EnhancedInputActionAxis3D_Statics::FuncParams);
		}
		return ReturnFunction;
	}
	struct Z_Construct_UFunction_UUnLuaManager_EnhancedInputActionDigital_Statics
	{
		static void NewProp_ActionValue_SetBit(void* Obj);
		static const UE4CodeGen_Private::FBoolPropertyParams NewProp_ActionValue;
		static const UE4CodeGen_Private::FFloatPropertyParams NewProp_ElapsedSeconds;
		static const UE4CodeGen_Private::FFloatPropertyParams NewProp_TriggeredSeconds;
		static const UE4CodeGen_Private::FPropertyParamsBase* const PropPointers[];
#if WITH_METADATA
		static const UE4CodeGen_Private::FMetaDataPairParam Function_MetaDataParams[];
#endif
		static const UE4CodeGen_Private::FFunctionParams FuncParams;
	};
	void Z_Construct_UFunction_UUnLuaManager_EnhancedInputActionDigital_Statics::NewProp_ActionValue_SetBit(void* Obj)
	{
		((UnLuaManager_eventEnhancedInputActionDigital_Parms*)Obj)->ActionValue = 1;
	}
	const UE4CodeGen_Private::FBoolPropertyParams Z_Construct_UFunction_UUnLuaManager_EnhancedInputActionDigital_Statics::NewProp_ActionValue = { "ActionValue", nullptr, (EPropertyFlags)0x0010000000000080, UE4CodeGen_Private::EPropertyGenFlags::Bool | UE4CodeGen_Private::EPropertyGenFlags::NativeBool, RF_Public|RF_Transient|RF_MarkAsNative, 1, sizeof(bool), sizeof(UnLuaManager_eventEnhancedInputActionDigital_Parms), &Z_Construct_UFunction_UUnLuaManager_EnhancedInputActionDigital_Statics::NewProp_ActionValue_SetBit, METADATA_PARAMS(nullptr, 0) };
	const UE4CodeGen_Private::FFloatPropertyParams Z_Construct_UFunction_UUnLuaManager_EnhancedInputActionDigital_Statics::NewProp_ElapsedSeconds = { "ElapsedSeconds", nullptr, (EPropertyFlags)0x0010000000000080, UE4CodeGen_Private::EPropertyGenFlags::Float, RF_Public|RF_Transient|RF_MarkAsNative, 1, STRUCT_OFFSET(UnLuaManager_eventEnhancedInputActionDigital_Parms, ElapsedSeconds), METADATA_PARAMS(nullptr, 0) };
	const UE4CodeGen_Private::FFloatPropertyParams Z_Construct_UFunction_UUnLuaManager_EnhancedInputActionDigital_Statics::NewProp_TriggeredSeconds = { "TriggeredSeconds", nullptr, (EPropertyFlags)0x0010000000000080, UE4CodeGen_Private::EPropertyGenFlags::Float, RF_Public|RF_Transient|RF_MarkAsNative, 1, STRUCT_OFFSET(UnLuaManager_eventEnhancedInputActionDigital_Parms, TriggeredSeconds), METADATA_PARAMS(nullptr, 0) };
	const UE4CodeGen_Private::FPropertyParamsBase* const Z_Construct_UFunction_UUnLuaManager_EnhancedInputActionDigital_Statics::PropPointers[] = {
		(const UE4CodeGen_Private::FPropertyParamsBase*)&Z_Construct_UFunction_UUnLuaManager_EnhancedInputActionDigital_Statics::NewProp_ActionValue,
		(const UE4CodeGen_Private::FPropertyParamsBase*)&Z_Construct_UFunction_UUnLuaManager_EnhancedInputActionDigital_Statics::NewProp_ElapsedSeconds,
		(const UE4CodeGen_Private::FPropertyParamsBase*)&Z_Construct_UFunction_UUnLuaManager_EnhancedInputActionDigital_Statics::NewProp_TriggeredSeconds,
	};
#if WITH_METADATA
	const UE4CodeGen_Private::FMetaDataPairParam Z_Construct_UFunction_UUnLuaManager_EnhancedInputActionDigital_Statics::Function_MetaDataParams[] = {
		{ "ModuleRelativePath", "Public/UnLuaManager.h" },
	};
#endif
	const UE4CodeGen_Private::FFunctionParams Z_Construct_UFunction_UUnLuaManager_EnhancedInputActionDigital_Statics::FuncParams = { (UObject*(*)())Z_Construct_UClass_UUnLuaManager, nullptr, "EnhancedInputActionDigital", nullptr, nullptr, sizeof(UnLuaManager_eventEnhancedInputActionDigital_Parms), Z_Construct_UFunction_UUnLuaManager_EnhancedInputActionDigital_Statics::PropPointers, UE_ARRAY_COUNT(Z_Construct_UFunction_UUnLuaManager_EnhancedInputActionDigital_Statics::PropPointers), RF_Public|RF_Transient|RF_MarkAsNative, (EFunctionFlags)0x08020800, 0, 0, METADATA_PARAMS(Z_Construct_UFunction_UUnLuaManager_EnhancedInputActionDigital_Statics::Function_MetaDataParams, UE_ARRAY_COUNT(Z_Construct_UFunction_UUnLuaManager_EnhancedInputActionDigital_Statics::Function_MetaDataParams)) };
	UFunction* Z_Construct_UFunction_UUnLuaManager_EnhancedInputActionDigital()
	{
		static UFunction* ReturnFunction = nullptr;
		if (!ReturnFunction)
		{
			UE4CodeGen_Private::ConstructUFunction(ReturnFunction, Z_Construct_UFunction_UUnLuaManager_EnhancedInputActionDigital_Statics::FuncParams);
		}
		return ReturnFunction;
	}
	struct Z_Construct_UFunction_UUnLuaManager_GetOrAddBindingObject_Statics
	{
		struct UnLuaManager_eventGetOrAddBindingObject_Parms
		{
			UClass* Class;
			UClass* BindingClass;
			UDynamicBlueprintBinding* ReturnValue;
		};
		static const UE4CodeGen_Private::FClassPropertyParams NewProp_Class;
		static const UE4CodeGen_Private::FClassPropertyParams NewProp_BindingClass;
		static const UE4CodeGen_Private::FObjectPropertyParams NewProp_ReturnValue;
		static const UE4CodeGen_Private::FPropertyParamsBase* const PropPointers[];
#if WITH_METADATA
		static const UE4CodeGen_Private::FMetaDataPairParam Function_MetaDataParams[];
#endif
		static const UE4CodeGen_Private::FFunctionParams FuncParams;
	};
	const UE4CodeGen_Private::FClassPropertyParams Z_Construct_UFunction_UUnLuaManager_GetOrAddBindingObject_Statics::NewProp_Class = { "Class", nullptr, (EPropertyFlags)0x0010000000000080, UE4CodeGen_Private::EPropertyGenFlags::Class, RF_Public|RF_Transient|RF_MarkAsNative, 1, STRUCT_OFFSET(UnLuaManager_eventGetOrAddBindingObject_Parms, Class), Z_Construct_UClass_UObject_NoRegister, Z_Construct_UClass_UClass, METADATA_PARAMS(nullptr, 0) };
	const UE4CodeGen_Private::FClassPropertyParams Z_Construct_UFunction_UUnLuaManager_GetOrAddBindingObject_Statics::NewProp_BindingClass = { "BindingClass", nullptr, (EPropertyFlags)0x0010000000000080, UE4CodeGen_Private::EPropertyGenFlags::Class, RF_Public|RF_Transient|RF_MarkAsNative, 1, STRUCT_OFFSET(UnLuaManager_eventGetOrAddBindingObject_Parms, BindingClass), Z_Construct_UClass_UObject_NoRegister, Z_Construct_UClass_UClass, METADATA_PARAMS(nullptr, 0) };
	const UE4CodeGen_Private::FObjectPropertyParams Z_Construct_UFunction_UUnLuaManager_GetOrAddBindingObject_Statics::NewProp_ReturnValue = { "ReturnValue", nullptr, (EPropertyFlags)0x0010000000000580, UE4CodeGen_Private::EPropertyGenFlags::Object, RF_Public|RF_Transient|RF_MarkAsNative, 1, STRUCT_OFFSET(UnLuaManager_eventGetOrAddBindingObject_Parms, ReturnValue), Z_Construct_UClass_UDynamicBlueprintBinding_NoRegister, METADATA_PARAMS(nullptr, 0) };
	const UE4CodeGen_Private::FPropertyParamsBase* const Z_Construct_UFunction_UUnLuaManager_GetOrAddBindingObject_Statics::PropPointers[] = {
		(const UE4CodeGen_Private::FPropertyParamsBase*)&Z_Construct_UFunction_UUnLuaManager_GetOrAddBindingObject_Statics::NewProp_Class,
		(const UE4CodeGen_Private::FPropertyParamsBase*)&Z_Construct_UFunction_UUnLuaManager_GetOrAddBindingObject_Statics::NewProp_BindingClass,
		(const UE4CodeGen_Private::FPropertyParamsBase*)&Z_Construct_UFunction_UUnLuaManager_GetOrAddBindingObject_Statics::NewProp_ReturnValue,
	};
#if WITH_METADATA
	const UE4CodeGen_Private::FMetaDataPairParam Z_Construct_UFunction_UUnLuaManager_GetOrAddBindingObject_Statics::Function_MetaDataParams[] = {
		{ "ModuleRelativePath", "Public/UnLuaManager.h" },
	};
#endif
	const UE4CodeGen_Private::FFunctionParams Z_Construct_UFunction_UUnLuaManager_GetOrAddBindingObject_Statics::FuncParams = { (UObject*(*)())Z_Construct_UClass_UUnLuaManager, nullptr, "GetOrAddBindingObject", nullptr, nullptr, sizeof(UnLuaManager_eventGetOrAddBindingObject_Parms), Z_Construct_UFunction_UUnLuaManager_GetOrAddBindingObject_Statics::PropPointers, UE_ARRAY_COUNT(Z_Construct_UFunction_UUnLuaManager_GetOrAddBindingObject_Statics::PropPointers), RF_Public|RF_Transient|RF_MarkAsNative, (EFunctionFlags)0x04020401, 0, 0, METADATA_PARAMS(Z_Construct_UFunction_UUnLuaManager_GetOrAddBindingObject_Statics::Function_MetaDataParams, UE_ARRAY_COUNT(Z_Construct_UFunction_UUnLuaManager_GetOrAddBindingObject_Statics::Function_MetaDataParams)) };
	UFunction* Z_Construct_UFunction_UUnLuaManager_GetOrAddBindingObject()
	{
		static UFunction* ReturnFunction = nullptr;
		if (!ReturnFunction)
		{
			UE4CodeGen_Private::ConstructUFunction(ReturnFunction, Z_Construct_UFunction_UUnLuaManager_GetOrAddBindingObject_Statics::FuncParams);
		}
		return ReturnFunction;
	}
	struct Z_Construct_UFunction_UUnLuaManager_InputAction_Statics
	{
		static const UE4CodeGen_Private::FStructPropertyParams NewProp_Key;
		static const UE4CodeGen_Private::FPropertyParamsBase* const PropPointers[];
#if WITH_METADATA
		static const UE4CodeGen_Private::FMetaDataPairParam Function_MetaDataParams[];
#endif
		static const UE4CodeGen_Private::FFunctionParams FuncParams;
	};
	const UE4CodeGen_Private::FStructPropertyParams Z_Construct_UFunction_UUnLuaManager_InputAction_Statics::NewProp_Key = { "Key", nullptr, (EPropertyFlags)0x0010000000000080, UE4CodeGen_Private::EPropertyGenFlags::Struct, RF_Public|RF_Transient|RF_MarkAsNative, 1, STRUCT_OFFSET(UnLuaManager_eventInputAction_Parms, Key), Z_Construct_UScriptStruct_FKey, METADATA_PARAMS(nullptr, 0) };
	const UE4CodeGen_Private::FPropertyParamsBase* const Z_Construct_UFunction_UUnLuaManager_InputAction_Statics::PropPointers[] = {
		(const UE4CodeGen_Private::FPropertyParamsBase*)&Z_Construct_UFunction_UUnLuaManager_InputAction_Statics::NewProp_Key,
	};
#if WITH_METADATA
	const UE4CodeGen_Private::FMetaDataPairParam Z_Construct_UFunction_UUnLuaManager_InputAction_Statics::Function_MetaDataParams[] = {
		{ "ModuleRelativePath", "Public/UnLuaManager.h" },
	};
#endif
	const UE4CodeGen_Private::FFunctionParams Z_Construct_UFunction_UUnLuaManager_InputAction_Statics::FuncParams = { (UObject*(*)())Z_Construct_UClass_UUnLuaManager, nullptr, "InputAction", nullptr, nullptr, sizeof(UnLuaManager_eventInputAction_Parms), Z_Construct_UFunction_UUnLuaManager_InputAction_Statics::PropPointers, UE_ARRAY_COUNT(Z_Construct_UFunction_UUnLuaManager_InputAction_Statics::PropPointers), RF_Public|RF_Transient|RF_MarkAsNative, (EFunctionFlags)0x08020800, 0, 0, METADATA_PARAMS(Z_Construct_UFunction_UUnLuaManager_InputAction_Statics::Function_MetaDataParams, UE_ARRAY_COUNT(Z_Construct_UFunction_UUnLuaManager_InputAction_Statics::Function_MetaDataParams)) };
	UFunction* Z_Construct_UFunction_UUnLuaManager_InputAction()
	{
		static UFunction* ReturnFunction = nullptr;
		if (!ReturnFunction)
		{
			UE4CodeGen_Private::ConstructUFunction(ReturnFunction, Z_Construct_UFunction_UUnLuaManager_InputAction_Statics::FuncParams);
		}
		return ReturnFunction;
	}
	struct Z_Construct_UFunction_UUnLuaManager_InputAxis_Statics
	{
		static const UE4CodeGen_Private::FFloatPropertyParams NewProp_AxisValue;
		static const UE4CodeGen_Private::FPropertyParamsBase* const PropPointers[];
#if WITH_METADATA
		static const UE4CodeGen_Private::FMetaDataPairParam Function_MetaDataParams[];
#endif
		static const UE4CodeGen_Private::FFunctionParams FuncParams;
	};
	const UE4CodeGen_Private::FFloatPropertyParams Z_Construct_UFunction_UUnLuaManager_InputAxis_Statics::NewProp_AxisValue = { "AxisValue", nullptr, (EPropertyFlags)0x0010000000000080, UE4CodeGen_Private::EPropertyGenFlags::Float, RF_Public|RF_Transient|RF_MarkAsNative, 1, STRUCT_OFFSET(UnLuaManager_eventInputAxis_Parms, AxisValue), METADATA_PARAMS(nullptr, 0) };
	const UE4CodeGen_Private::FPropertyParamsBase* const Z_Construct_UFunction_UUnLuaManager_InputAxis_Statics::PropPointers[] = {
		(const UE4CodeGen_Private::FPropertyParamsBase*)&Z_Construct_UFunction_UUnLuaManager_InputAxis_Statics::NewProp_AxisValue,
	};
#if WITH_METADATA
	const UE4CodeGen_Private::FMetaDataPairParam Z_Construct_UFunction_UUnLuaManager_InputAxis_Statics::Function_MetaDataParams[] = {
		{ "ModuleRelativePath", "Public/UnLuaManager.h" },
	};
#endif
	const UE4CodeGen_Private::FFunctionParams Z_Construct_UFunction_UUnLuaManager_InputAxis_Statics::FuncParams = { (UObject*(*)())Z_Construct_UClass_UUnLuaManager, nullptr, "InputAxis", nullptr, nullptr, sizeof(UnLuaManager_eventInputAxis_Parms), Z_Construct_UFunction_UUnLuaManager_InputAxis_Statics::PropPointers, UE_ARRAY_COUNT(Z_Construct_UFunction_UUnLuaManager_InputAxis_Statics::PropPointers), RF_Public|RF_Transient|RF_MarkAsNative, (EFunctionFlags)0x08020800, 0, 0, METADATA_PARAMS(Z_Construct_UFunction_UUnLuaManager_InputAxis_Statics::Function_MetaDataParams, UE_ARRAY_COUNT(Z_Construct_UFunction_UUnLuaManager_InputAxis_Statics::Function_MetaDataParams)) };
	UFunction* Z_Construct_UFunction_UUnLuaManager_InputAxis()
	{
		static UFunction* ReturnFunction = nullptr;
		if (!ReturnFunction)
		{
			UE4CodeGen_Private::ConstructUFunction(ReturnFunction, Z_Construct_UFunction_UUnLuaManager_InputAxis_Statics::FuncParams);
		}
		return ReturnFunction;
	}
	struct Z_Construct_UFunction_UUnLuaManager_InputGesture_Statics
	{
		static const UE4CodeGen_Private::FFloatPropertyParams NewProp_Value;
		static const UE4CodeGen_Private::FPropertyParamsBase* const PropPointers[];
#if WITH_METADATA
		static const UE4CodeGen_Private::FMetaDataPairParam Function_MetaDataParams[];
#endif
		static const UE4CodeGen_Private::FFunctionParams FuncParams;
	};
	const UE4CodeGen_Private::FFloatPropertyParams Z_Construct_UFunction_UUnLuaManager_InputGesture_Statics::NewProp_Value = { "Value", nullptr, (EPropertyFlags)0x0010000000000080, UE4CodeGen_Private::EPropertyGenFlags::Float, RF_Public|RF_Transient|RF_MarkAsNative, 1, STRUCT_OFFSET(UnLuaManager_eventInputGesture_Parms, Value), METADATA_PARAMS(nullptr, 0) };
	const UE4CodeGen_Private::FPropertyParamsBase* const Z_Construct_UFunction_UUnLuaManager_InputGesture_Statics::PropPointers[] = {
		(const UE4CodeGen_Private::FPropertyParamsBase*)&Z_Construct_UFunction_UUnLuaManager_InputGesture_Statics::NewProp_Value,
	};
#if WITH_METADATA
	const UE4CodeGen_Private::FMetaDataPairParam Z_Construct_UFunction_UUnLuaManager_InputGesture_Statics::Function_MetaDataParams[] = {
		{ "ModuleRelativePath", "Public/UnLuaManager.h" },
	};
#endif
	const UE4CodeGen_Private::FFunctionParams Z_Construct_UFunction_UUnLuaManager_InputGesture_Statics::FuncParams = { (UObject*(*)())Z_Construct_UClass_UUnLuaManager, nullptr, "InputGesture", nullptr, nullptr, sizeof(UnLuaManager_eventInputGesture_Parms), Z_Construct_UFunction_UUnLuaManager_InputGesture_Statics::PropPointers, UE_ARRAY_COUNT(Z_Construct_UFunction_UUnLuaManager_InputGesture_Statics::PropPointers), RF_Public|RF_Transient|RF_MarkAsNative, (EFunctionFlags)0x08020800, 0, 0, METADATA_PARAMS(Z_Construct_UFunction_UUnLuaManager_InputGesture_Statics::Function_MetaDataParams, UE_ARRAY_COUNT(Z_Construct_UFunction_UUnLuaManager_InputGesture_Statics::Function_MetaDataParams)) };
	UFunction* Z_Construct_UFunction_UUnLuaManager_InputGesture()
	{
		static UFunction* ReturnFunction = nullptr;
		if (!ReturnFunction)
		{
			UE4CodeGen_Private::ConstructUFunction(ReturnFunction, Z_Construct_UFunction_UUnLuaManager_InputGesture_Statics::FuncParams);
		}
		return ReturnFunction;
	}
	struct Z_Construct_UFunction_UUnLuaManager_InputTouch_Statics
	{
		static const UE4CodeGen_Private::FBytePropertyParams NewProp_FingerIndex;
#if WITH_METADATA
		static const UE4CodeGen_Private::FMetaDataPairParam NewProp_Location_MetaData[];
#endif
		static const UE4CodeGen_Private::FStructPropertyParams NewProp_Location;
		static const UE4CodeGen_Private::FPropertyParamsBase* const PropPointers[];
#if WITH_METADATA
		static const UE4CodeGen_Private::FMetaDataPairParam Function_MetaDataParams[];
#endif
		static const UE4CodeGen_Private::FFunctionParams FuncParams;
	};
	const UE4CodeGen_Private::FBytePropertyParams Z_Construct_UFunction_UUnLuaManager_InputTouch_Statics::NewProp_FingerIndex = { "FingerIndex", nullptr, (EPropertyFlags)0x0010000000000080, UE4CodeGen_Private::EPropertyGenFlags::Byte, RF_Public|RF_Transient|RF_MarkAsNative, 1, STRUCT_OFFSET(UnLuaManager_eventInputTouch_Parms, FingerIndex), Z_Construct_UEnum_InputCore_ETouchIndex, METADATA_PARAMS(nullptr, 0) };
#if WITH_METADATA
	const UE4CodeGen_Private::FMetaDataPairParam Z_Construct_UFunction_UUnLuaManager_InputTouch_Statics::NewProp_Location_MetaData[] = {
		{ "NativeConst", "" },
	};
#endif
	const UE4CodeGen_Private::FStructPropertyParams Z_Construct_UFunction_UUnLuaManager_InputTouch_Statics::NewProp_Location = { "Location", nullptr, (EPropertyFlags)0x0010000008000182, UE4CodeGen_Private::EPropertyGenFlags::Struct, RF_Public|RF_Transient|RF_MarkAsNative, 1, STRUCT_OFFSET(UnLuaManager_eventInputTouch_Parms, Location), Z_Construct_UScriptStruct_FVector, METADATA_PARAMS(Z_Construct_UFunction_UUnLuaManager_InputTouch_Statics::NewProp_Location_MetaData, UE_ARRAY_COUNT(Z_Construct_UFunction_UUnLuaManager_InputTouch_Statics::NewProp_Location_MetaData)) };
	const UE4CodeGen_Private::FPropertyParamsBase* const Z_Construct_UFunction_UUnLuaManager_InputTouch_Statics::PropPointers[] = {
		(const UE4CodeGen_Private::FPropertyParamsBase*)&Z_Construct_UFunction_UUnLuaManager_InputTouch_Statics::NewProp_FingerIndex,
		(const UE4CodeGen_Private::FPropertyParamsBase*)&Z_Construct_UFunction_UUnLuaManager_InputTouch_Statics::NewProp_Location,
	};
#if WITH_METADATA
	const UE4CodeGen_Private::FMetaDataPairParam Z_Construct_UFunction_UUnLuaManager_InputTouch_Statics::Function_MetaDataParams[] = {
		{ "ModuleRelativePath", "Public/UnLuaManager.h" },
	};
#endif
	const UE4CodeGen_Private::FFunctionParams Z_Construct_UFunction_UUnLuaManager_InputTouch_Statics::FuncParams = { (UObject*(*)())Z_Construct_UClass_UUnLuaManager, nullptr, "InputTouch", nullptr, nullptr, sizeof(UnLuaManager_eventInputTouch_Parms), Z_Construct_UFunction_UUnLuaManager_InputTouch_Statics::PropPointers, UE_ARRAY_COUNT(Z_Construct_UFunction_UUnLuaManager_InputTouch_Statics::PropPointers), RF_Public|RF_Transient|RF_MarkAsNative, (EFunctionFlags)0x08C20800, 0, 0, METADATA_PARAMS(Z_Construct_UFunction_UUnLuaManager_InputTouch_Statics::Function_MetaDataParams, UE_ARRAY_COUNT(Z_Construct_UFunction_UUnLuaManager_InputTouch_Statics::Function_MetaDataParams)) };
	UFunction* Z_Construct_UFunction_UUnLuaManager_InputTouch()
	{
		static UFunction* ReturnFunction = nullptr;
		if (!ReturnFunction)
		{
			UE4CodeGen_Private::ConstructUFunction(ReturnFunction, Z_Construct_UFunction_UUnLuaManager_InputTouch_Statics::FuncParams);
		}
		return ReturnFunction;
	}
	struct Z_Construct_UFunction_UUnLuaManager_InputVectorAxis_Statics
	{
#if WITH_METADATA
		static const UE4CodeGen_Private::FMetaDataPairParam NewProp_AxisValue_MetaData[];
#endif
		static const UE4CodeGen_Private::FStructPropertyParams NewProp_AxisValue;
		static const UE4CodeGen_Private::FPropertyParamsBase* const PropPointers[];
#if WITH_METADATA
		static const UE4CodeGen_Private::FMetaDataPairParam Function_MetaDataParams[];
#endif
		static const UE4CodeGen_Private::FFunctionParams FuncParams;
	};
#if WITH_METADATA
	const UE4CodeGen_Private::FMetaDataPairParam Z_Construct_UFunction_UUnLuaManager_InputVectorAxis_Statics::NewProp_AxisValue_MetaData[] = {
		{ "NativeConst", "" },
	};
#endif
	const UE4CodeGen_Private::FStructPropertyParams Z_Construct_UFunction_UUnLuaManager_InputVectorAxis_Statics::NewProp_AxisValue = { "AxisValue", nullptr, (EPropertyFlags)0x0010000008000182, UE4CodeGen_Private::EPropertyGenFlags::Struct, RF_Public|RF_Transient|RF_MarkAsNative, 1, STRUCT_OFFSET(UnLuaManager_eventInputVectorAxis_Parms, AxisValue), Z_Construct_UScriptStruct_FVector, METADATA_PARAMS(Z_Construct_UFunction_UUnLuaManager_InputVectorAxis_Statics::NewProp_AxisValue_MetaData, UE_ARRAY_COUNT(Z_Construct_UFunction_UUnLuaManager_InputVectorAxis_Statics::NewProp_AxisValue_MetaData)) };
	const UE4CodeGen_Private::FPropertyParamsBase* const Z_Construct_UFunction_UUnLuaManager_InputVectorAxis_Statics::PropPointers[] = {
		(const UE4CodeGen_Private::FPropertyParamsBase*)&Z_Construct_UFunction_UUnLuaManager_InputVectorAxis_Statics::NewProp_AxisValue,
	};
#if WITH_METADATA
	const UE4CodeGen_Private::FMetaDataPairParam Z_Construct_UFunction_UUnLuaManager_InputVectorAxis_Statics::Function_MetaDataParams[] = {
		{ "ModuleRelativePath", "Public/UnLuaManager.h" },
	};
#endif
	const UE4CodeGen_Private::FFunctionParams Z_Construct_UFunction_UUnLuaManager_InputVectorAxis_Statics::FuncParams = { (UObject*(*)())Z_Construct_UClass_UUnLuaManager, nullptr, "InputVectorAxis", nullptr, nullptr, sizeof(UnLuaManager_eventInputVectorAxis_Parms), Z_Construct_UFunction_UUnLuaManager_InputVectorAxis_Statics::PropPointers, UE_ARRAY_COUNT(Z_Construct_UFunction_UUnLuaManager_InputVectorAxis_Statics::PropPointers), RF_Public|RF_Transient|RF_MarkAsNative, (EFunctionFlags)0x08C20800, 0, 0, METADATA_PARAMS(Z_Construct_UFunction_UUnLuaManager_InputVectorAxis_Statics::Function_MetaDataParams, UE_ARRAY_COUNT(Z_Construct_UFunction_UUnLuaManager_InputVectorAxis_Statics::Function_MetaDataParams)) };
	UFunction* Z_Construct_UFunction_UUnLuaManager_InputVectorAxis()
	{
		static UFunction* ReturnFunction = nullptr;
		if (!ReturnFunction)
		{
			UE4CodeGen_Private::ConstructUFunction(ReturnFunction, Z_Construct_UFunction_UUnLuaManager_InputVectorAxis_Statics::FuncParams);
		}
		return ReturnFunction;
	}
	struct Z_Construct_UFunction_UUnLuaManager_OnLatentActionCompleted_Statics
	{
		struct UnLuaManager_eventOnLatentActionCompleted_Parms
		{
			int32 LinkID;
		};
		static const UE4CodeGen_Private::FIntPropertyParams NewProp_LinkID;
		static const UE4CodeGen_Private::FPropertyParamsBase* const PropPointers[];
#if WITH_METADATA
		static const UE4CodeGen_Private::FMetaDataPairParam Function_MetaDataParams[];
#endif
		static const UE4CodeGen_Private::FFunctionParams FuncParams;
	};
	const UE4CodeGen_Private::FIntPropertyParams Z_Construct_UFunction_UUnLuaManager_OnLatentActionCompleted_Statics::NewProp_LinkID = { "LinkID", nullptr, (EPropertyFlags)0x0010000000000080, UE4CodeGen_Private::EPropertyGenFlags::Int, RF_Public|RF_Transient|RF_MarkAsNative, 1, STRUCT_OFFSET(UnLuaManager_eventOnLatentActionCompleted_Parms, LinkID), METADATA_PARAMS(nullptr, 0) };
	const UE4CodeGen_Private::FPropertyParamsBase* const Z_Construct_UFunction_UUnLuaManager_OnLatentActionCompleted_Statics::PropPointers[] = {
		(const UE4CodeGen_Private::FPropertyParamsBase*)&Z_Construct_UFunction_UUnLuaManager_OnLatentActionCompleted_Statics::NewProp_LinkID,
	};
#if WITH_METADATA
	const UE4CodeGen_Private::FMetaDataPairParam Z_Construct_UFunction_UUnLuaManager_OnLatentActionCompleted_Statics::Function_MetaDataParams[] = {
		{ "ModuleRelativePath", "Public/UnLuaManager.h" },
	};
#endif
	const UE4CodeGen_Private::FFunctionParams Z_Construct_UFunction_UUnLuaManager_OnLatentActionCompleted_Statics::FuncParams = { (UObject*(*)())Z_Construct_UClass_UUnLuaManager, nullptr, "OnLatentActionCompleted", nullptr, nullptr, sizeof(UnLuaManager_eventOnLatentActionCompleted_Parms), Z_Construct_UFunction_UUnLuaManager_OnLatentActionCompleted_Statics::PropPointers, UE_ARRAY_COUNT(Z_Construct_UFunction_UUnLuaManager_OnLatentActionCompleted_Statics::PropPointers), RF_Public|RF_Transient|RF_MarkAsNative, (EFunctionFlags)0x00020401, 0, 0, METADATA_PARAMS(Z_Construct_UFunction_UUnLuaManager_OnLatentActionCompleted_Statics::Function_MetaDataParams, UE_ARRAY_COUNT(Z_Construct_UFunction_UUnLuaManager_OnLatentActionCompleted_Statics::Function_MetaDataParams)) };
	UFunction* Z_Construct_UFunction_UUnLuaManager_OnLatentActionCompleted()
	{
		static UFunction* ReturnFunction = nullptr;
		if (!ReturnFunction)
		{
			UE4CodeGen_Private::ConstructUFunction(ReturnFunction, Z_Construct_UFunction_UUnLuaManager_OnLatentActionCompleted_Statics::FuncParams);
		}
		return ReturnFunction;
	}
	struct Z_Construct_UFunction_UUnLuaManager_Override_Statics
	{
		struct UnLuaManager_eventOverride_Parms
		{
			UClass* Class;
			FName FunctionName;
			FName LuaFunctionName;
		};
		static const UE4CodeGen_Private::FClassPropertyParams NewProp_Class;
		static const UE4CodeGen_Private::FNamePropertyParams NewProp_FunctionName;
		static const UE4CodeGen_Private::FNamePropertyParams NewProp_LuaFunctionName;
		static const UE4CodeGen_Private::FPropertyParamsBase* const PropPointers[];
#if WITH_METADATA
		static const UE4CodeGen_Private::FMetaDataPairParam Function_MetaDataParams[];
#endif
		static const UE4CodeGen_Private::FFunctionParams FuncParams;
	};
	const UE4CodeGen_Private::FClassPropertyParams Z_Construct_UFunction_UUnLuaManager_Override_Statics::NewProp_Class = { "Class", nullptr, (EPropertyFlags)0x0010000000000080, UE4CodeGen_Private::EPropertyGenFlags::Class, RF_Public|RF_Transient|RF_MarkAsNative, 1, STRUCT_OFFSET(UnLuaManager_eventOverride_Parms, Class), Z_Construct_UClass_UObject_NoRegister, Z_Construct_UClass_UClass, METADATA_PARAMS(nullptr, 0) };
	const UE4CodeGen_Private::FNamePropertyParams Z_Construct_UFunction_UUnLuaManager_Override_Statics::NewProp_FunctionName = { "FunctionName", nullptr, (EPropertyFlags)0x0010000000000080, UE4CodeGen_Private::EPropertyGenFlags::Name, RF_Public|RF_Transient|RF_MarkAsNative, 1, STRUCT_OFFSET(UnLuaManager_eventOverride_Parms, FunctionName), METADATA_PARAMS(nullptr, 0) };
	const UE4CodeGen_Private::FNamePropertyParams Z_Construct_UFunction_UUnLuaManager_Override_Statics::NewProp_LuaFunctionName = { "LuaFunctionName", nullptr, (EPropertyFlags)0x0010000000000080, UE4CodeGen_Private::EPropertyGenFlags::Name, RF_Public|RF_Transient|RF_MarkAsNative, 1, STRUCT_OFFSET(UnLuaManager_eventOverride_Parms, LuaFunctionName), METADATA_PARAMS(nullptr, 0) };
	const UE4CodeGen_Private::FPropertyParamsBase* const Z_Construct_UFunction_UUnLuaManager_Override_Statics::PropPointers[] = {
		(const UE4CodeGen_Private::FPropertyParamsBase*)&Z_Construct_UFunction_UUnLuaManager_Override_Statics::NewProp_Class,
		(const UE4CodeGen_Private::FPropertyParamsBase*)&Z_Construct_UFunction_UUnLuaManager_Override_Statics::NewProp_FunctionName,
		(const UE4CodeGen_Private::FPropertyParamsBase*)&Z_Construct_UFunction_UUnLuaManager_Override_Statics::NewProp_LuaFunctionName,
	};
#if WITH_METADATA
	const UE4CodeGen_Private::FMetaDataPairParam Z_Construct_UFunction_UUnLuaManager_Override_Statics::Function_MetaDataParams[] = {
		{ "ModuleRelativePath", "Public/UnLuaManager.h" },
	};
#endif
	const UE4CodeGen_Private::FFunctionParams Z_Construct_UFunction_UUnLuaManager_Override_Statics::FuncParams = { (UObject*(*)())Z_Construct_UClass_UUnLuaManager, nullptr, "Override", nullptr, nullptr, sizeof(UnLuaManager_eventOverride_Parms), Z_Construct_UFunction_UUnLuaManager_Override_Statics::PropPointers, UE_ARRAY_COUNT(Z_Construct_UFunction_UUnLuaManager_Override_Statics::PropPointers), RF_Public|RF_Transient|RF_MarkAsNative, (EFunctionFlags)0x04020401, 0, 0, METADATA_PARAMS(Z_Construct_UFunction_UUnLuaManager_Override_Statics::Function_MetaDataParams, UE_ARRAY_COUNT(Z_Construct_UFunction_UUnLuaManager_Override_Statics::Function_MetaDataParams)) };
	UFunction* Z_Construct_UFunction_UUnLuaManager_Override()
	{
		static UFunction* ReturnFunction = nullptr;
		if (!ReturnFunction)
		{
			UE4CodeGen_Private::ConstructUFunction(ReturnFunction, Z_Construct_UFunction_UUnLuaManager_Override_Statics::FuncParams);
		}
		return ReturnFunction;
	}
	struct Z_Construct_UFunction_UUnLuaManager_TriggerAnimNotify_Statics
	{
#if WITH_METADATA
		static const UE4CodeGen_Private::FMetaDataPairParam Function_MetaDataParams[];
#endif
		static const UE4CodeGen_Private::FFunctionParams FuncParams;
	};
#if WITH_METADATA
	const UE4CodeGen_Private::FMetaDataPairParam Z_Construct_UFunction_UUnLuaManager_TriggerAnimNotify_Statics::Function_MetaDataParams[] = {
		{ "ModuleRelativePath", "Public/UnLuaManager.h" },
	};
#endif
	const UE4CodeGen_Private::FFunctionParams Z_Construct_UFunction_UUnLuaManager_TriggerAnimNotify_Statics::FuncParams = { (UObject*(*)())Z_Construct_UClass_UUnLuaManager, nullptr, "TriggerAnimNotify", nullptr, nullptr, 0, nullptr, 0, RF_Public|RF_Transient|RF_MarkAsNative, (EFunctionFlags)0x08020800, 0, 0, METADATA_PARAMS(Z_Construct_UFunction_UUnLuaManager_TriggerAnimNotify_Statics::Function_MetaDataParams, UE_ARRAY_COUNT(Z_Construct_UFunction_UUnLuaManager_TriggerAnimNotify_Statics::Function_MetaDataParams)) };
	UFunction* Z_Construct_UFunction_UUnLuaManager_TriggerAnimNotify()
	{
		static UFunction* ReturnFunction = nullptr;
		if (!ReturnFunction)
		{
			UE4CodeGen_Private::ConstructUFunction(ReturnFunction, Z_Construct_UFunction_UUnLuaManager_TriggerAnimNotify_Statics::FuncParams);
		}
		return ReturnFunction;
	}
	UClass* Z_Construct_UClass_UUnLuaManager_NoRegister()
	{
		return UUnLuaManager::StaticClass();
	}
	struct Z_Construct_UClass_UUnLuaManager_Statics
	{
		static UObject* (*const DependentSingletons[])();
		static const FClassFunctionLinkInfo FuncInfo[];
#if WITH_METADATA
		static const UE4CodeGen_Private::FMetaDataPairParam Class_MetaDataParams[];
#endif
		static const FCppClassTypeInfoStatic StaticCppClassTypeInfo;
		static const UE4CodeGen_Private::FClassParams ClassParams;
	};
	UObject* (*const Z_Construct_UClass_UUnLuaManager_Statics::DependentSingletons[])() = {
		(UObject* (*)())Z_Construct_UClass_UObject,
		(UObject* (*)())Z_Construct_UPackage__Script_UnLua,
	};
	const FClassFunctionLinkInfo Z_Construct_UClass_UUnLuaManager_Statics::FuncInfo[] = {
		{ &Z_Construct_UFunction_UUnLuaManager_EnhancedInputActionAxis1D, "EnhancedInputActionAxis1D" }, // 1705780688
		{ &Z_Construct_UFunction_UUnLuaManager_EnhancedInputActionAxis2D, "EnhancedInputActionAxis2D" }, // 3143115913
		{ &Z_Construct_UFunction_UUnLuaManager_EnhancedInputActionAxis3D, "EnhancedInputActionAxis3D" }, // 806631658
		{ &Z_Construct_UFunction_UUnLuaManager_EnhancedInputActionDigital, "EnhancedInputActionDigital" }, // 4077930361
		{ &Z_Construct_UFunction_UUnLuaManager_GetOrAddBindingObject, "GetOrAddBindingObject" }, // 3240791386
		{ &Z_Construct_UFunction_UUnLuaManager_InputAction, "InputAction" }, // 1066521864
		{ &Z_Construct_UFunction_UUnLuaManager_InputAxis, "InputAxis" }, // 2607465063
		{ &Z_Construct_UFunction_UUnLuaManager_InputGesture, "InputGesture" }, // 2510780800
		{ &Z_Construct_UFunction_UUnLuaManager_InputTouch, "InputTouch" }, // 2247337667
		{ &Z_Construct_UFunction_UUnLuaManager_InputVectorAxis, "InputVectorAxis" }, // 2636532891
		{ &Z_Construct_UFunction_UUnLuaManager_OnLatentActionCompleted, "OnLatentActionCompleted" }, // 3596860434
		{ &Z_Construct_UFunction_UUnLuaManager_Override, "Override" }, // 905038181
		{ &Z_Construct_UFunction_UUnLuaManager_TriggerAnimNotify, "TriggerAnimNotify" }, // 426723416
	};
#if WITH_METADATA
	const UE4CodeGen_Private::FMetaDataPairParam Z_Construct_UClass_UUnLuaManager_Statics::Class_MetaDataParams[] = {
		{ "IncludePath", "UnLuaManager.h" },
		{ "ModuleRelativePath", "Public/UnLuaManager.h" },
	};
#endif
	const FCppClassTypeInfoStatic Z_Construct_UClass_UUnLuaManager_Statics::StaticCppClassTypeInfo = {
		TCppClassTypeTraits<UUnLuaManager>::IsAbstract,
	};
	const UE4CodeGen_Private::FClassParams Z_Construct_UClass_UUnLuaManager_Statics::ClassParams = {
		&UUnLuaManager::StaticClass,
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
		METADATA_PARAMS(Z_Construct_UClass_UUnLuaManager_Statics::Class_MetaDataParams, UE_ARRAY_COUNT(Z_Construct_UClass_UUnLuaManager_Statics::Class_MetaDataParams))
	};
	UClass* Z_Construct_UClass_UUnLuaManager()
	{
		static UClass* OuterClass = nullptr;
		if (!OuterClass)
		{
			UE4CodeGen_Private::ConstructUClass(OuterClass, Z_Construct_UClass_UUnLuaManager_Statics::ClassParams);
		}
		return OuterClass;
	}
	IMPLEMENT_CLASS(UUnLuaManager, 186689882);
	template<> UNLUA_API UClass* StaticClass<UUnLuaManager>()
	{
		return UUnLuaManager::StaticClass();
	}
	static FCompiledInDefer Z_CompiledInDefer_UClass_UUnLuaManager(Z_Construct_UClass_UUnLuaManager, &UUnLuaManager::StaticClass, TEXT("/Script/UnLua"), TEXT("UUnLuaManager"), false, nullptr, nullptr, nullptr);
	DEFINE_VTABLE_PTR_HELPER_CTOR(UUnLuaManager);
PRAGMA_ENABLE_DEPRECATION_WARNINGS
#ifdef _MSC_VER
#pragma warning (pop)
#endif
