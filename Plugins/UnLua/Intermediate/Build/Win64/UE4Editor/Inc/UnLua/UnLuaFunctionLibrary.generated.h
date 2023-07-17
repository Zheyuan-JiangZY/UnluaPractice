// Copyright Epic Games, Inc. All Rights Reserved.
/*===========================================================================
	Generated code exported from UnrealHeaderTool.
	DO NOT modify this manually! Edit the corresponding .h files instead!
===========================================================================*/

#include "UObject/ObjectMacros.h"
#include "UObject/ScriptMacros.h"

PRAGMA_DISABLE_DEPRECATION_WARNINGS
#ifdef UNLUA_UnLuaFunctionLibrary_generated_h
#error "UnLuaFunctionLibrary.generated.h already included, missing '#pragma once' in UnLuaFunctionLibrary.h"
#endif
#define UNLUA_UnLuaFunctionLibrary_generated_h

#define TestProject_Plugins_UnLua_Source_UnLua_Public_UnLuaFunctionLibrary_h_24_SPARSE_DATA
#define TestProject_Plugins_UnLua_Source_UnLua_Public_UnLuaFunctionLibrary_h_24_RPC_WRAPPERS \
 \
	DECLARE_FUNCTION(execHotReload); \
	DECLARE_FUNCTION(execGetFileLastModifiedTimestamp); \
	DECLARE_FUNCTION(execGetScriptRootPath);


#define TestProject_Plugins_UnLua_Source_UnLua_Public_UnLuaFunctionLibrary_h_24_RPC_WRAPPERS_NO_PURE_DECLS \
 \
	DECLARE_FUNCTION(execHotReload); \
	DECLARE_FUNCTION(execGetFileLastModifiedTimestamp); \
	DECLARE_FUNCTION(execGetScriptRootPath);


#define TestProject_Plugins_UnLua_Source_UnLua_Public_UnLuaFunctionLibrary_h_24_INCLASS_NO_PURE_DECLS \
private: \
	static void StaticRegisterNativesUUnLuaFunctionLibrary(); \
	friend struct Z_Construct_UClass_UUnLuaFunctionLibrary_Statics; \
public: \
	DECLARE_CLASS(UUnLuaFunctionLibrary, UBlueprintFunctionLibrary, COMPILED_IN_FLAGS(0), CASTCLASS_None, TEXT("/Script/UnLua"), NO_API) \
	DECLARE_SERIALIZER(UUnLuaFunctionLibrary)


#define TestProject_Plugins_UnLua_Source_UnLua_Public_UnLuaFunctionLibrary_h_24_INCLASS \
private: \
	static void StaticRegisterNativesUUnLuaFunctionLibrary(); \
	friend struct Z_Construct_UClass_UUnLuaFunctionLibrary_Statics; \
public: \
	DECLARE_CLASS(UUnLuaFunctionLibrary, UBlueprintFunctionLibrary, COMPILED_IN_FLAGS(0), CASTCLASS_None, TEXT("/Script/UnLua"), NO_API) \
	DECLARE_SERIALIZER(UUnLuaFunctionLibrary)


#define TestProject_Plugins_UnLua_Source_UnLua_Public_UnLuaFunctionLibrary_h_24_STANDARD_CONSTRUCTORS \
	/** Standard constructor, called after all reflected properties have been initialized */ \
	NO_API UUnLuaFunctionLibrary(const FObjectInitializer& ObjectInitializer = FObjectInitializer::Get()); \
	DEFINE_DEFAULT_OBJECT_INITIALIZER_CONSTRUCTOR_CALL(UUnLuaFunctionLibrary) \
	DECLARE_VTABLE_PTR_HELPER_CTOR(NO_API, UUnLuaFunctionLibrary); \
	DEFINE_VTABLE_PTR_HELPER_CTOR_CALLER(UUnLuaFunctionLibrary); \
private: \
	/** Private move- and copy-constructors, should never be used */ \
	NO_API UUnLuaFunctionLibrary(UUnLuaFunctionLibrary&&); \
	NO_API UUnLuaFunctionLibrary(const UUnLuaFunctionLibrary&); \
public:


#define TestProject_Plugins_UnLua_Source_UnLua_Public_UnLuaFunctionLibrary_h_24_ENHANCED_CONSTRUCTORS \
	/** Standard constructor, called after all reflected properties have been initialized */ \
	NO_API UUnLuaFunctionLibrary(const FObjectInitializer& ObjectInitializer = FObjectInitializer::Get()) : Super(ObjectInitializer) { }; \
private: \
	/** Private move- and copy-constructors, should never be used */ \
	NO_API UUnLuaFunctionLibrary(UUnLuaFunctionLibrary&&); \
	NO_API UUnLuaFunctionLibrary(const UUnLuaFunctionLibrary&); \
public: \
	DECLARE_VTABLE_PTR_HELPER_CTOR(NO_API, UUnLuaFunctionLibrary); \
	DEFINE_VTABLE_PTR_HELPER_CTOR_CALLER(UUnLuaFunctionLibrary); \
	DEFINE_DEFAULT_OBJECT_INITIALIZER_CONSTRUCTOR_CALL(UUnLuaFunctionLibrary)


#define TestProject_Plugins_UnLua_Source_UnLua_Public_UnLuaFunctionLibrary_h_24_PRIVATE_PROPERTY_OFFSET
#define TestProject_Plugins_UnLua_Source_UnLua_Public_UnLuaFunctionLibrary_h_21_PROLOG
#define TestProject_Plugins_UnLua_Source_UnLua_Public_UnLuaFunctionLibrary_h_24_GENERATED_BODY_LEGACY \
PRAGMA_DISABLE_DEPRECATION_WARNINGS \
public: \
	TestProject_Plugins_UnLua_Source_UnLua_Public_UnLuaFunctionLibrary_h_24_PRIVATE_PROPERTY_OFFSET \
	TestProject_Plugins_UnLua_Source_UnLua_Public_UnLuaFunctionLibrary_h_24_SPARSE_DATA \
	TestProject_Plugins_UnLua_Source_UnLua_Public_UnLuaFunctionLibrary_h_24_RPC_WRAPPERS \
	TestProject_Plugins_UnLua_Source_UnLua_Public_UnLuaFunctionLibrary_h_24_INCLASS \
	TestProject_Plugins_UnLua_Source_UnLua_Public_UnLuaFunctionLibrary_h_24_STANDARD_CONSTRUCTORS \
public: \
PRAGMA_ENABLE_DEPRECATION_WARNINGS


#define TestProject_Plugins_UnLua_Source_UnLua_Public_UnLuaFunctionLibrary_h_24_GENERATED_BODY \
PRAGMA_DISABLE_DEPRECATION_WARNINGS \
public: \
	TestProject_Plugins_UnLua_Source_UnLua_Public_UnLuaFunctionLibrary_h_24_PRIVATE_PROPERTY_OFFSET \
	TestProject_Plugins_UnLua_Source_UnLua_Public_UnLuaFunctionLibrary_h_24_SPARSE_DATA \
	TestProject_Plugins_UnLua_Source_UnLua_Public_UnLuaFunctionLibrary_h_24_RPC_WRAPPERS_NO_PURE_DECLS \
	TestProject_Plugins_UnLua_Source_UnLua_Public_UnLuaFunctionLibrary_h_24_INCLASS_NO_PURE_DECLS \
	TestProject_Plugins_UnLua_Source_UnLua_Public_UnLuaFunctionLibrary_h_24_ENHANCED_CONSTRUCTORS \
private: \
PRAGMA_ENABLE_DEPRECATION_WARNINGS


template<> UNLUA_API UClass* StaticClass<class UUnLuaFunctionLibrary>();

#undef CURRENT_FILE_ID
#define CURRENT_FILE_ID TestProject_Plugins_UnLua_Source_UnLua_Public_UnLuaFunctionLibrary_h


PRAGMA_ENABLE_DEPRECATION_WARNINGS
