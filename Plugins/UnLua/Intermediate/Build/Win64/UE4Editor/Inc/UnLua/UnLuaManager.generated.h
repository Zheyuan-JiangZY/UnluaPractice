// Copyright Epic Games, Inc. All Rights Reserved.
/*===========================================================================
	Generated code exported from UnrealHeaderTool.
	DO NOT modify this manually! Edit the corresponding .h files instead!
===========================================================================*/

#include "UObject/ObjectMacros.h"
#include "UObject/ScriptMacros.h"

PRAGMA_DISABLE_DEPRECATION_WARNINGS
class UObject;
class UDynamicBlueprintBinding;
struct FVector2D;
struct FVector;
struct FKey;
#ifdef UNLUA_UnLuaManager_generated_h
#error "UnLuaManager.generated.h already included, missing '#pragma once' in UnLuaManager.h"
#endif
#define UNLUA_UnLuaManager_generated_h

#define TestProject_Plugins_UnLua_Source_UnLua_Public_UnLuaManager_h_31_SPARSE_DATA
#define TestProject_Plugins_UnLua_Source_UnLua_Public_UnLuaManager_h_31_RPC_WRAPPERS \
 \
	DECLARE_FUNCTION(execOnLatentActionCompleted); \
	DECLARE_FUNCTION(execOverride); \
	DECLARE_FUNCTION(execGetOrAddBindingObject);


#define TestProject_Plugins_UnLua_Source_UnLua_Public_UnLuaManager_h_31_RPC_WRAPPERS_NO_PURE_DECLS \
 \
	DECLARE_FUNCTION(execOnLatentActionCompleted); \
	DECLARE_FUNCTION(execOverride); \
	DECLARE_FUNCTION(execGetOrAddBindingObject);


#define TestProject_Plugins_UnLua_Source_UnLua_Public_UnLuaManager_h_31_EVENT_PARMS \
	struct UnLuaManager_eventEnhancedInputActionAxis1D_Parms \
	{ \
		float ActionValue; \
		float ElapsedSeconds; \
		float TriggeredSeconds; \
	}; \
	struct UnLuaManager_eventEnhancedInputActionAxis2D_Parms \
	{ \
		FVector2D ActionValue; \
		float ElapsedSeconds; \
		float TriggeredSeconds; \
	}; \
	struct UnLuaManager_eventEnhancedInputActionAxis3D_Parms \
	{ \
		FVector ActionValue; \
		float ElapsedSeconds; \
		float TriggeredSeconds; \
	}; \
	struct UnLuaManager_eventEnhancedInputActionDigital_Parms \
	{ \
		bool ActionValue; \
		float ElapsedSeconds; \
		float TriggeredSeconds; \
	}; \
	struct UnLuaManager_eventInputAction_Parms \
	{ \
		FKey Key; \
	}; \
	struct UnLuaManager_eventInputAxis_Parms \
	{ \
		float AxisValue; \
	}; \
	struct UnLuaManager_eventInputGesture_Parms \
	{ \
		float Value; \
	}; \
	struct UnLuaManager_eventInputTouch_Parms \
	{ \
		TEnumAsByte<ETouchIndex::Type> FingerIndex; \
		FVector Location; \
	}; \
	struct UnLuaManager_eventInputVectorAxis_Parms \
	{ \
		FVector AxisValue; \
	};


#define TestProject_Plugins_UnLua_Source_UnLua_Public_UnLuaManager_h_31_CALLBACK_WRAPPERS
#define TestProject_Plugins_UnLua_Source_UnLua_Public_UnLuaManager_h_31_INCLASS_NO_PURE_DECLS \
private: \
	static void StaticRegisterNativesUUnLuaManager(); \
	friend struct Z_Construct_UClass_UUnLuaManager_Statics; \
public: \
	DECLARE_CLASS(UUnLuaManager, UObject, COMPILED_IN_FLAGS(0), CASTCLASS_None, TEXT("/Script/UnLua"), NO_API) \
	DECLARE_SERIALIZER(UUnLuaManager)


#define TestProject_Plugins_UnLua_Source_UnLua_Public_UnLuaManager_h_31_INCLASS \
private: \
	static void StaticRegisterNativesUUnLuaManager(); \
	friend struct Z_Construct_UClass_UUnLuaManager_Statics; \
public: \
	DECLARE_CLASS(UUnLuaManager, UObject, COMPILED_IN_FLAGS(0), CASTCLASS_None, TEXT("/Script/UnLua"), NO_API) \
	DECLARE_SERIALIZER(UUnLuaManager)


#define TestProject_Plugins_UnLua_Source_UnLua_Public_UnLuaManager_h_31_STANDARD_CONSTRUCTORS \
	/** Standard constructor, called after all reflected properties have been initialized */ \
	NO_API UUnLuaManager(const FObjectInitializer& ObjectInitializer); \
	DEFINE_DEFAULT_OBJECT_INITIALIZER_CONSTRUCTOR_CALL(UUnLuaManager) \
	DECLARE_VTABLE_PTR_HELPER_CTOR(NO_API, UUnLuaManager); \
	DEFINE_VTABLE_PTR_HELPER_CTOR_CALLER(UUnLuaManager); \
private: \
	/** Private move- and copy-constructors, should never be used */ \
	NO_API UUnLuaManager(UUnLuaManager&&); \
	NO_API UUnLuaManager(const UUnLuaManager&); \
public:


#define TestProject_Plugins_UnLua_Source_UnLua_Public_UnLuaManager_h_31_ENHANCED_CONSTRUCTORS \
private: \
	/** Private move- and copy-constructors, should never be used */ \
	NO_API UUnLuaManager(UUnLuaManager&&); \
	NO_API UUnLuaManager(const UUnLuaManager&); \
public: \
	DECLARE_VTABLE_PTR_HELPER_CTOR(NO_API, UUnLuaManager); \
	DEFINE_VTABLE_PTR_HELPER_CTOR_CALLER(UUnLuaManager); \
	DEFINE_DEFAULT_CONSTRUCTOR_CALL(UUnLuaManager)


#define TestProject_Plugins_UnLua_Source_UnLua_Public_UnLuaManager_h_31_PRIVATE_PROPERTY_OFFSET
#define TestProject_Plugins_UnLua_Source_UnLua_Public_UnLuaManager_h_28_PROLOG \
	TestProject_Plugins_UnLua_Source_UnLua_Public_UnLuaManager_h_31_EVENT_PARMS


#define TestProject_Plugins_UnLua_Source_UnLua_Public_UnLuaManager_h_31_GENERATED_BODY_LEGACY \
PRAGMA_DISABLE_DEPRECATION_WARNINGS \
public: \
	TestProject_Plugins_UnLua_Source_UnLua_Public_UnLuaManager_h_31_PRIVATE_PROPERTY_OFFSET \
	TestProject_Plugins_UnLua_Source_UnLua_Public_UnLuaManager_h_31_SPARSE_DATA \
	TestProject_Plugins_UnLua_Source_UnLua_Public_UnLuaManager_h_31_RPC_WRAPPERS \
	TestProject_Plugins_UnLua_Source_UnLua_Public_UnLuaManager_h_31_CALLBACK_WRAPPERS \
	TestProject_Plugins_UnLua_Source_UnLua_Public_UnLuaManager_h_31_INCLASS \
	TestProject_Plugins_UnLua_Source_UnLua_Public_UnLuaManager_h_31_STANDARD_CONSTRUCTORS \
public: \
PRAGMA_ENABLE_DEPRECATION_WARNINGS


#define TestProject_Plugins_UnLua_Source_UnLua_Public_UnLuaManager_h_31_GENERATED_BODY \
PRAGMA_DISABLE_DEPRECATION_WARNINGS \
public: \
	TestProject_Plugins_UnLua_Source_UnLua_Public_UnLuaManager_h_31_PRIVATE_PROPERTY_OFFSET \
	TestProject_Plugins_UnLua_Source_UnLua_Public_UnLuaManager_h_31_SPARSE_DATA \
	TestProject_Plugins_UnLua_Source_UnLua_Public_UnLuaManager_h_31_RPC_WRAPPERS_NO_PURE_DECLS \
	TestProject_Plugins_UnLua_Source_UnLua_Public_UnLuaManager_h_31_CALLBACK_WRAPPERS \
	TestProject_Plugins_UnLua_Source_UnLua_Public_UnLuaManager_h_31_INCLASS_NO_PURE_DECLS \
	TestProject_Plugins_UnLua_Source_UnLua_Public_UnLuaManager_h_31_ENHANCED_CONSTRUCTORS \
private: \
PRAGMA_ENABLE_DEPRECATION_WARNINGS


template<> UNLUA_API UClass* StaticClass<class UUnLuaManager>();

#undef CURRENT_FILE_ID
#define CURRENT_FILE_ID TestProject_Plugins_UnLua_Source_UnLua_Public_UnLuaManager_h


PRAGMA_ENABLE_DEPRECATION_WARNINGS
