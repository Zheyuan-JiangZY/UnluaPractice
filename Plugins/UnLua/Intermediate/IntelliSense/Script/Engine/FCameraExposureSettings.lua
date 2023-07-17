---@class FCameraExposureSettings
---@field public Method integer @Luminance computation method
---@field public LowPercent number @The eye adaptation will adapt to a value extracted from the luminance histogram of the scene color. The value is defined as having x percent below this brightness. Higher values give bright spots on the screen more priority but can lead to less stable results. Lower values give the medium and darker values more priority but might cause burn out of bright spots. >0, <100, good values are in the range 70 .. 80
---@field public HighPercent number @The eye adaptation will adapt to a value extracted from the luminance histogram of the scene color. The value is defined as having x percent below this brightness. Higher values give bright spots on the screen more priority but can lead to less stable results. Lower values give the medium and darker values more priority but might cause burn out of bright spots. >0, <100, good values are in the range 80 .. 95
---@field public MinBrightness number @A good value should be positive near 0. This is the minimum brightness the auto exposure can adapt to. It should be tweaked in a dark lighting situation (too small: image appears too bright, too large: image appears too dark). Note: Tweaking emissive materials and lights or tweaking auto exposure can look the same. Tweaking auto exposure has global effect and defined the HDR range - you don't want to change that late in the project development. Eye Adaptation is disabled if MinBrightness = MaxBrightness
---@field public MaxBrightness number @A good value should be positive (2 is a good value). This is the maximum brightness the auto exposure can adapt to. It should be tweaked in a bright lighting situation (too small: image appears too bright, too large: image appears too dark). Note: Tweaking emissive materials and lights or tweaking auto exposure can look the same. Tweaking auto exposure has global effect and defined the HDR range - you don't want to change that late in the project development. Eye Adaptation is disabled if MinBrightness = MaxBrightness
---@field public SpeedUp number @In F-stops per second, should be >0
---@field public SpeedDown number @In F-stops per second, should be >0
---@field public Bias number @Logarithmic adjustment for the exposure. Only used if a tonemapper is specified. 0: no adjustment, -1:2x darker, -2:4x darker, 1:2x brighter, 2:4x brighter, ...
---@field public BiasCurve UCurveFloat @Exposure compensation based on the scene EV100. Used to calibrate the final exposure differently depending on the average scene luminance. 0: no adjustment, -1:2x darker, -2:4x darker, 1:2x brighter, 2:4x brighter, ...
---@field public MeterMask UTexture @Exposure metering mask. Bright spots on the mask will have high influence on auto-exposure metering and dark spots will have low influence.
---@field public HistogramLogMin number @temporary exposed until we found good values, -8: 1/256, -10: 1/1024
---@field public HistogramLogMax number @temporary exposed until we found good values 4: 16, 8: 256
---@field public CalibrationConstant number @Calibration constant for 18% albedo.
---@field public ApplyPhysicalCameraExposure boolean @Enables physical camera exposure using ShutterSpeed/ISO/Aperture.
local FCameraExposureSettings = {}
