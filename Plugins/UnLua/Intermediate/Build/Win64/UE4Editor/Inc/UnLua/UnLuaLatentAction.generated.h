// Copyright Epic Games, Inc. All Rights Reserved.
/*===========================================================================
	Generated code exported from UnrealHeaderTool.
	DO NOT modify this manually! Edit the corresponding .h files instead!
===========================================================================*/

#include "UObject/ObjectMacros.h"
#include "UObject/ScriptMacros.h"

PRAGMA_DISABLE_DEPRECATION_WARNINGS
#ifdef UNLUA_UnLuaLatentAction_generated_h
#error "UnLuaLatentAction.generated.h already included, missing '#pragma once' in UnLuaLatentAction.h"
#endif
#define UNLUA_UnLuaLatentAction_generated_h

#define TestProject_Plugins_UnLua_Source_UnLua_Public_UnLuaLatentAction_h_22_DELEGATE \
struct _Script_UnLua_eventUnLuaLatentActionCallback_Parms \
{ \
	int32 InLinkage; \
}; \
static inline void FUnLuaLatentActionCallback_DelegateWrapper(const FScriptDelegate& UnLuaLatentActionCallback, int32 InLinkage) \
{ \
	_Script_UnLua_eventUnLuaLatentActionCallback_Parms Parms; \
	Parms.InLinkage=InLinkage; \
	UnLuaLatentActionCallback.ProcessDelegate<UObject>(&Parms); \
}


#define TestProject_Plugins_UnLua_Source_UnLua_Public_UnLuaLatentAction_h_27_SPARSE_DATA
#define TestProject_Plugins_UnLua_Source_UnLua_Public_UnLuaLatentAction_h_27_RPC_WRAPPERS \
 \
	DECLARE_FUNCTION(execOnLegacyCallback); \
	DECLARE_FUNCTION(execSetTickableWhenPaused); \
	DECLARE_FUNCTION(execGetTickableWhenPaused); \
	DECLARE_FUNCTION(execOnCompleted);


#define TestProject_Plugins_UnLua_Source_UnLua_Public_UnLuaLatentAction_h_27_RPC_WRAPPERS_NO_PURE_DECLS \
 \
	DECLARE_FUNCTION(execOnLegacyCallback); \
	DECLARE_FUNCTION(execSetTickableWhenPaused); \
	DECLARE_FUNCTION(execGetTickableWhenPaused); \
	DECLARE_FUNCTION(execOnCompleted);


#define TestProject_Plugins_UnLua_Source_UnLua_Public_UnLuaLatentAction_h_27_INCLASS_NO_PURE_DECLS \
private: \
	static void StaticRegisterNativesUUnLuaLatentAction(); \
	friend struct Z_Construct_UClass_UUnLuaLatentAction_Statics; \
public: \
	DECLARE_CLASS(UUnLuaLatentAction, UObject, COMPILED_IN_FLAGS(0), CASTCLASS_None, TEXT("/Script/UnLua"), NO_API) \
	DECLARE_SERIALIZER(UUnLuaLatentAction)


#define TestProject_Plugins_UnLua_Source_UnLua_Public_UnLuaLatentAction_h_27_INCLASS \
private: \
	static void StaticRegisterNativesUUnLuaLatentAction(); \
	friend struct Z_Construct_UClass_UUnLuaLatentAction_Statics; \
public: \
	DECLARE_CLASS(UUnLuaLatentAction, UObject, COMPILED_IN_FLAGS(0), CASTCLASS_None, TEXT("/Script/UnLua"), NO_API) \
	DECLARE_SERIALIZER(UUnLuaLatentAction)


#define TestProject_Plugins_UnLua_Source_UnLua_Public_UnLuaLatentAction_h_27_STANDARD_CONSTRUCTORS \
	/** Standard constructor, called after all reflected properties have been initialized */ \
	NO_API UUnLuaLatentAction(const FObjectInitializer& ObjectInitializer = FObjectInitializer::Get()); \
	DEFINE_DEFAULT_OBJECT_INITIALIZER_CONSTRUCTOR_CALL(UUnLuaLatentAction) \
	DECLARE_VTABLE_PTR_HELPER_CTOR(NO_API, UUnLuaLatentAction); \
	DEFINE_VTABLE_PTR_HELPER_CTOR_CALLER(UUnLuaLatentAction); \
private: \
	/** Private move- and copy-constructors, should never be used */ \
	NO_API UUnLuaLatentAction(UUnLuaLatentAction&&); \
	NO_API UUnLuaLatentAction(const UUnLuaLatentAction&); \
public:


#define TestProject_Plugins_UnLua_Source_UnLua_Public_UnLuaLatentAction_h_27_ENHANCED_CONSTRUCTORS \
	/** Standard constructor, called after all reflected properties have been initialized */ \
	NO_API UUnLuaLatentAction(const FObjectInitializer& ObjectInitializer = FObjectInitializer::Get()) : Super(ObjectInitializer) { }; \
private: \
	/** Private move- and copy-constructors, should never be used */ \
	NO_API UUnLuaLatentAction(UUnLuaLatentAction&&); \
	NO_API UUnLuaLatentAction(const UUnLuaLatentAction&); \
public: \
	DECLARE_VTABLE_PTR_HELPER_CTOR(NO_API, UUnLuaLatentAction); \
	DEFINE_VTABLE_PTR_HELPER_CTOR_CALLER(UUnLuaLatentAction); \
	DEFINE_DEFAULT_OBJECT_INITIALIZER_CONSTRUCTOR_CALL(UUnLuaLatentAction)


#define TestProject_Plugins_UnLua_Source_UnLua_Public_UnLuaLatentAction_h_27_PRIVATE_PROPERTY_OFFSET
#define TestProject_Plugins_UnLua_Source_UnLua_Public_UnLuaLatentAction_h_24_PROLOG
#define TestProject_Plugins_UnLua_Source_UnLua_Public_UnLuaLatentAction_h_27_GENERATED_BODY_LEGACY \
PRAGMA_DISABLE_DEPRECATION_WARNINGS \
public: \
	TestProject_Plugins_UnLua_Source_UnLua_Public_UnLuaLatentAction_h_27_PRIVATE_PROPERTY_OFFSET \
	TestProject_Plugins_UnLua_Source_UnLua_Public_UnLuaLatentAction_h_27_SPARSE_DATA \
	TestProject_Plugins_UnLua_Source_UnLua_Public_UnLuaLatentAction_h_27_RPC_WRAPPERS \
	TestProject_Plugins_UnLua_Source_UnLua_Public_UnLuaLatentAction_h_27_INCLASS \
	TestProject_Plugins_UnLua_Source_UnLua_Public_UnLuaLatentAction_h_27_STANDARD_CONSTRUCTORS \
public: \
PRAGMA_ENABLE_DEPRECATION_WARNINGS


#define TestProject_Plugins_UnLua_Source_UnLua_Public_UnLuaLatentAction_h_27_GENERATED_BODY \
PRAGMA_DISABLE_DEPRECATION_WARNINGS \
public: \
	TestProject_Plugins_UnLua_Source_UnLua_Public_UnLuaLatentAction_h_27_PRIVATE_PROPERTY_OFFSET \
	TestProject_Plugins_UnLua_Source_UnLua_Public_UnLuaLatentAction_h_27_SPARSE_DATA \
	TestProject_Plugins_UnLua_Source_UnLua_Public_UnLuaLatentAction_h_27_RPC_WRAPPERS_NO_PURE_DECLS \
	TestProject_Plugins_UnLua_Source_UnLua_Public_UnLuaLatentAction_h_27_INCLASS_NO_PURE_DECLS \
	TestProject_Plugins_UnLua_Source_UnLua_Public_UnLuaLatentAction_h_27_ENHANCED_CONSTRUCTORS \
private: \
PRAGMA_ENABLE_DEPRECATION_WARNINGS


template<> UNLUA_API UClass* StaticClass<class UUnLuaLatentAction>();

#undef CURRENT_FILE_ID
#define CURRENT_FILE_ID TestProject_Plugins_UnLua_Source_UnLua_Public_UnLuaLatentAction_h


PRAGMA_ENABLE_DEPRECATION_WARNINGS
