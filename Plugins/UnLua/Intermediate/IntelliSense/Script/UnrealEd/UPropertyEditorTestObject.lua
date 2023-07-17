---@class UPropertyEditorTestObject : UObject
---@field private Int8Property integer
---@field private Int16Property integer
---@field private Int32Property integer
---@field private Int64Property integer
---@field private ByteProperty integer
---@field private UnsignedInt16Property integer
---@field private UnsignedInt32Property integer
---@field private UnsignedInt64Property integer
---@field private FloatProperty number
---@field private DoubleProperty number
---@field private NameProperty string
---@field private BoolProperty boolean
---@field private StringProperty string
---@field private TextProperty string
---@field private IntPointProperty FIntPoint
---@field private Vector3Property FVector
---@field private Vector2Property FVector2D
---@field private Vector4Property FVector4
---@field private RotatorProperty FRotator
---@field private ObjectProperty UObject
---@field private LinearColorProperty FLinearColor
---@field private ColorProperty FColor
---@field private EnumByteProperty integer
---@field private EnumProperty EditColor
---@field private MatrixProperty FMatrix
---@field private TransformProperty FTransform
---@field private ClassProperty TSubclassOf<UObject>
---@field private ClassPropertyWithAllowed TSubclassOf<UObject>
---@field private ClassPropertyWithDisallowed TSubclassOf<UObject>
---@field private SubclassOfTexture TSubclassOf<UTexture>
---@field private SubclassOfWithAllowed TSubclassOf<UTexture>
---@field private SubclassOfWithDisallowed TSubclassOf<UTexture>
---@field private AssetPointerWithAllowedAndWhitespace TSoftObjectPtr<UObject>
---@field private IntProperty32Array TArray<integer> @Integer
---@field private BytePropertyArray TArray<integer> @Byte
---@field private FloatPropertyArray TArray<number>
---@field private NamePropertyArray TArray<string>
---@field private BoolPropertyArray TArray<boolean>
---@field private StringPropertyArray TArray<string>
---@field private TextPropertyArray TArray<string>
---@field private Vector3PropertyArray TArray<FVector>
---@field private Vector2PropertyArray TArray<FVector2D>
---@field private Vector4PropertyArray TArray<FVector4>
---@field private RotatorPropertyArray TArray<FRotator>
---@field private ObjectPropertyArray TArray<UObject>
---@field private ActorPropertyArray TArray<AActor>
---@field private LinearColorPropertyArray TArray<FLinearColor>
---@field private ColorPropertyArray TArray<FColor>
---@field private EnumPropertyArray TArray<integer>
---@field private StructPropertyArray TArray<FPropertyEditorTestBasicStruct>
---@field private StructPropertyArrayWithTitle TArray<FPropertyEditorTestBasicStruct>
---@field private InstancedStructArray TArray<FPropertyEditorTestInstancedStruct>
---@field private InstancedUObjectArray TArray<UPropertyEditorTestInstancedObject>
---@field private FixedArrayOfInts TArray<integer>
---@field private StaticArrayOfInts integer
---@field private StaticArrayOfIntsWithEnumLabels integer
---@field private FloatPropertyWithClampedRange number @This is a custom tooltip that should be shown
---@field private IntPropertyWithClampedRange integer
---@field private IntThatCannotBeChanged integer
---@field private StringThatCannotBeChanged string
---@field private ObjectThatCannotBeChanged UPrimitiveComponent
---@field private EnumBitflags integer
---@field private StringPasswordProperty string
---@field private TextPasswordProperty string
---@field private ThisIsBrokenIfItsVisibleInADetailsView FPropertyEditorTestBasicStruct
---@field private StructWithMultipleInstances1 FPropertyEditorTestBasicStruct
---@field private bEditConditionStructWithMultipleInstances2 boolean
---@field private StructWithMultipleInstances2 FPropertyEditorTestBasicStruct
---@field private RichCurve FRichCurve
---@field private AssetReferenceCustomStruct FSoftObjectPath
---@field private AssetReferenceCustomStructWithThumbnail FSoftObjectPath
---@field private ExactlyPointLightActorReference FSoftObjectPath
---@field private LightActorReference FSoftObjectPath
---@field private ExactPointOrSpotLightActorReference FSoftObjectPath
---@field private LightOrStaticMeshActorReference FSoftObjectPath
---@field private NotLightActorReference FSoftObjectPath
---@field private MaterialOrTextureAssetReference FSoftObjectPath
---@field private ActorWithMetaClass FSoftObjectPath
---@field private DisabledByCanEditChange FSoftObjectPath
---@field private bEditCondition boolean
---@field private SimplePropertyWithEditCondition integer
---@field private bEditConditionAssetReferenceCustomStructWithEditCondition boolean
---@field private AssetReferenceCustomStructWithEditCondition FSoftObjectPath
---@field private ArrayOfStructs TArray<FPropertyEditorTestBasicStruct>
---@field private Struct FPropertyEditTestTextStruct
---@field private EditInlineNewStaticMeshComponent UStaticMeshComponent
---@field private ArrayOfEditInlineNewSMCs TArray<UStaticMeshComponent>
---@field private TextureProp UTexture
---@field private StaticMeshProp UStaticMesh
---@field private AnyMaterialInterface UMaterialInterface
---@field private OnlyActorsAllowed AActor
---@field private Int32Set TSet<integer>
---@field private FloatSet TSet<number>
---@field private StringSet TSet<string>
---@field private ObjectSet TSet<UObject>
---@field private ActorSet TSet<AActor>
---@field private EditColorSet TSet<EditColor>
---@field private NameSet TSet<string>
---@field private Int32ToStringMap TMap<integer, string>
---@field private StringToColorMap TMap<string, FLinearColor>
---@field private Int32ToStructMap TMap<integer, FPropertyEditorTestBasicStruct>
---@field private StringToFloatMap TMap<string, number>
---@field private StringToObjectMap TMap<string, UObject>
---@field private StringToActorMap TMap<string, AActor>
---@field private ObjectToInt32Map TMap<UObject, integer>
---@field private ObjectToColorMap TMap<UObject, FLinearColor>
---@field private IntToEnumMap TMap<integer, integer>
---@field private NameToNameMap TMap<string, string>
---@field private NameToObjectMap TMap<string, UObject>
---@field private NameToCustomMap TMap<string, FPropertyEditorTestBasicStruct>
---@field private NameToColorMap TMap<string, FLinearColor>
---@field private IntToCustomMap TMap<integer, FPropertyEditorTestBasicStruct>
---@field private IntToSubStructMap TMap<integer, FPropertyEditorTestSubStruct>
---@field private LinearColorSet TSet<FLinearColor>
---@field private VectorSet TSet<FVector>
---@field private LinearColorToStringMap TMap<FLinearColor, string>
---@field private VectorToFloatMap TMap<FVector, number>
---@field private LinearColorToVectorMap TMap<FLinearColor, FVector>
---@field private BlendableInterface TScriptInterface<UBlendableInterface>
---@field private AnimClassInterface TScriptInterface<UAnimClassInterface>
---@field private LightPropagationVolumeBlendable TScriptInterface<UBlendableInterface> @This is an IBlendableInterface that only allows for ULightPropagationVolumeBlendable objects
---@field private TextureOrBlendableInterface UObject @Allows either an object that's derived from UTexture or IBlendableInterface, to ensure that Object Property handles know how to filter for AllowedClasses correctly.
---@field private bSubcategory boolean
---@field private bSubcategoryAdvanced boolean
---@field private bSubcategoryFooSimple boolean
---@field private bSubcategoryFooAdvanced boolean
---@field private bSubcategoryBarSimple boolean
---@field private bSubcategoryBarAdvanced boolean
---@field private bSubcategoryLast boolean
---@field private bEnablesNext boolean
---@field private bEnabledByPrevious boolean
---@field private EnumEditCondition EditColor
---@field private bEnabledWhenBlue boolean
---@field private bEnabledWhenPink boolean
---@field private EnumAsByteEditCondition integer
---@field private bEnabledWhenEnumIs2 boolean
---@field private bEnabledWhenEnumIs4 boolean
---@field private IntegerEditCondition integer
---@field private bEnabledWhenIntGreaterOrEqual5 boolean
---@field private bEnabledWhenIntLessOrEqual10 boolean
---@field private FloatEditCondition number
---@field private bEnabledWhenFloatGreaterThan5 boolean
---@field private bEnabledWhenFloatLessThan10 boolean
---@field private bEditConditionForArrays boolean
---@field private ArrayWithEditCondition TArray<UTexture2D>
---@field private ArrayOfStructsWithEditCondition TArray<FPropertyEditorTestBasicStruct>
---@field private bEditConditionForFixedArray boolean
---@field private FixedArrayWithEditCondition string
---@field private EditConditionFlags integer
---@field private bEnabledWhenFlagsHasTwoOrFour boolean
---@field private bDisabledWhenFlagsIsOdd boolean
---@field private InlineProperty integer
---@field private PropertyThatHides integer
---@field private bVisibleWhenStatic boolean
---@field private VisibleWhenStationary integer
---@field private DateTime FDateTime
---@field private bInlineEditConditionWithoutMetaToggle boolean
---@field private InlineEditConditionWithoutMeta number
---@field private bInlineEditConditionWithMetaToggle boolean
---@field private InlineEditConditionWithMeta number
---@field private bInlineEditConditionNotEditable boolean
---@field private HasNonEditableInlineCondition number
---@field private bSharedEditCondition boolean
---@field private UsesSharedEditCondition1 number
---@field private UsesSharedEditCondition2 number
---@field private StructWithInlineCondition FPropertyEditorTestInlineEditCondition
---@field private ArrayOfStructsWithInlineCondition TArray<FPropertyEditorTestInlineEditCondition>
local UPropertyEditorTestObject = {}
