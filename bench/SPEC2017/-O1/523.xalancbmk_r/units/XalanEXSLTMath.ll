; ModuleID = 'XalanEXSLTMath.cpp'
source_filename = "XalanEXSLTMath.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanEXSLTFunctionAbs" = type { %"class.xalanc_1_10::Function" }
%"class.xalanc_1_10::Function" = type { ptr }
%"class.xalanc_1_10::XalanEXSLTFunctionAcos" = type { %"class.xalanc_1_10::Function" }
%"class.xalanc_1_10::XalanEXSLTFunctionAsin" = type { %"class.xalanc_1_10::Function" }
%"class.xalanc_1_10::XalanEXSLTFunctionAtan" = type { %"class.xalanc_1_10::Function" }
%"class.xalanc_1_10::XalanEXSLTFunctionConstant" = type { %"class.xalanc_1_10::Function" }
%"class.xalanc_1_10::XalanEXSLTFunctionCos" = type { %"class.xalanc_1_10::Function" }
%"class.xalanc_1_10::XalanEXSLTFunctionExp" = type { %"class.xalanc_1_10::Function" }
%"class.xalanc_1_10::XalanEXSLTFunctionHighest" = type { %"class.xalanc_1_10::Function" }
%"class.xalanc_1_10::XalanEXSLTFunctionLog" = type { %"class.xalanc_1_10::Function" }
%"class.xalanc_1_10::XalanEXSLTFunctionLowest" = type { %"class.xalanc_1_10::Function" }
%"class.xalanc_1_10::XalanEXSLTFunctionMax" = type { %"class.xalanc_1_10::Function" }
%"class.xalanc_1_10::XalanEXSLTFunctionMin" = type { %"class.xalanc_1_10::Function" }
%"class.xalanc_1_10::XalanEXSLTFunctionPower" = type { %"class.xalanc_1_10::Function" }
%"class.xalanc_1_10::XalanEXSLTFunctionSin" = type { %"class.xalanc_1_10::Function" }
%"class.xalanc_1_10::XalanEXSLTFunctionSqrt" = type { %"class.xalanc_1_10::Function" }
%"class.xalanc_1_10::XalanEXSLTFunctionTan" = type { %"class.xalanc_1_10::Function" }
%"class.xalanc_1_10::XalanEXSLTFunctionRandom" = type { %"class.xalanc_1_10::Function" }
%"struct.xalanc_1_10::XalanExtensionsInstaller::FunctionTableEntry" = type { ptr, ptr }
%"union.xalanc_1_10::DoubleSupport::NumberUnion" = type { double }
%"class.xalanc_1_10::XObjectPtr" = type { ptr }
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XPathExecutionContext::BorrowReturnMutableNodeRefList" = type { ptr, ptr }
%"class.xalanc_1_10::MutableNodeRefList" = type <{ %"class.xalanc_1_10::NodeRefList", i32, [4 x i8] }>
%"class.xalanc_1_10::NodeRefList" = type { %"class.xalanc_1_10::NodeRefListBase", %"class.xalanc_1_10::XalanVector.5" }
%"class.xalanc_1_10::NodeRefListBase" = type { ptr }
%"class.xalanc_1_10::XalanVector.5" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::ExecutionContext" = type { ptr, ptr }
%"class.xalanc_1_10::XalanVector.0" = type { ptr, i64, i64, ptr }
%struct.anon = type { i32, i32 }
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector.0", i32, [4 x i8] }>
%"class.xalanc_1_10::XPathExecutionContext" = type { %"class.xalanc_1_10::ExecutionContext", ptr }

$_ZN11xalanc_1_109findNodesIPFbddEEENS_10XObjectPtrERNS_21XPathExecutionContextERKNS_15NodeRefListBaseET_ = comdat any

$_ZN11xalanc_1_109findValueIPFbddEEENS_10XObjectPtrERNS_21XPathExecutionContextERKNS_15NodeRefListBaseET_ = comdat any

$_ZN11xalanc_1_1021XalanEXSLTFunctionAbsD0Ev = comdat any

$_ZNK11xalanc_1_1021XalanEXSLTFunctionAbs5cloneERN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1024XalanEXSLTFunctionRandomD0Ev = comdat any

$_ZNK11xalanc_1_1024XalanEXSLTFunctionRandom5cloneERN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1022XalanEXSLTFunctionAcosD0Ev = comdat any

$_ZNK11xalanc_1_1022XalanEXSLTFunctionAcos5cloneERN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1022XalanEXSLTFunctionAsinD0Ev = comdat any

$_ZNK11xalanc_1_1022XalanEXSLTFunctionAsin5cloneERN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1022XalanEXSLTFunctionAtanD0Ev = comdat any

$_ZNK11xalanc_1_1022XalanEXSLTFunctionAtan5cloneERN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1023XalanEXSLTFunctionAtan2D0Ev = comdat any

$_ZNK11xalanc_1_1023XalanEXSLTFunctionAtan25cloneERN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1026XalanEXSLTFunctionConstantD0Ev = comdat any

$_ZNK11xalanc_1_1026XalanEXSLTFunctionConstant5cloneERN11xercesc_2_713MemoryManagerE = comdat any

$_ZNK11xalanc_1_1026XalanEXSLTFunctionConstant8getErrorERNS_14XalanDOMStringE = comdat any

$_ZN11xalanc_1_1021XalanEXSLTFunctionCosD0Ev = comdat any

$_ZNK11xalanc_1_1021XalanEXSLTFunctionCos5cloneERN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1021XalanEXSLTFunctionExpD0Ev = comdat any

$_ZNK11xalanc_1_1021XalanEXSLTFunctionExp5cloneERN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1025XalanEXSLTFunctionHighestD0Ev = comdat any

$_ZNK11xalanc_1_1025XalanEXSLTFunctionHighest5cloneERN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1021XalanEXSLTFunctionLogD0Ev = comdat any

$_ZNK11xalanc_1_1021XalanEXSLTFunctionLog5cloneERN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1024XalanEXSLTFunctionLowestD0Ev = comdat any

$_ZNK11xalanc_1_1024XalanEXSLTFunctionLowest5cloneERN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1021XalanEXSLTFunctionMaxD0Ev = comdat any

$_ZNK11xalanc_1_1021XalanEXSLTFunctionMax5cloneERN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1021XalanEXSLTFunctionMinD0Ev = comdat any

$_ZNK11xalanc_1_1021XalanEXSLTFunctionMin5cloneERN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1023XalanEXSLTFunctionPowerD0Ev = comdat any

$_ZNK11xalanc_1_1023XalanEXSLTFunctionPower5cloneERN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1021XalanEXSLTFunctionSinD0Ev = comdat any

$_ZNK11xalanc_1_1021XalanEXSLTFunctionSin5cloneERN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1022XalanEXSLTFunctionSqrtD0Ev = comdat any

$_ZNK11xalanc_1_1022XalanEXSLTFunctionSqrt5cloneERN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1021XalanEXSLTFunctionTanD0Ev = comdat any

$_ZNK11xalanc_1_1021XalanEXSLTFunctionTan5cloneERN11xercesc_2_713MemoryManagerE = comdat any

$__clang_call_terminate = comdat any

@_ZN11xalanc_1_10L21s_highestFunctionNameE = internal constant [8 x i16] [i16 104, i16 105, i16 103, i16 104, i16 101, i16 115, i16 116, i16 0], align 16
@_ZN11xalanc_1_10L20s_lowestFunctionNameE = internal constant [7 x i16] [i16 108, i16 111, i16 119, i16 101, i16 115, i16 116, i16 0], align 2
@_ZN11xalanc_1_10L17s_minFunctionNameE = internal constant [4 x i16] [i16 109, i16 105, i16 110, i16 0], align 2
@_ZN11xalanc_1_10L17s_maxFunctionNameE = internal constant [4 x i16] [i16 109, i16 97, i16 120, i16 0], align 2
@_ZN11xalanc_1_10L17s_absFunctionNameE = internal constant [4 x i16] [i16 97, i16 98, i16 115, i16 0], align 2
@_ZN11xalanc_1_10L20s_randomFunctionNameE = internal constant [7 x i16] [i16 114, i16 97, i16 110, i16 100, i16 111, i16 109, i16 0], align 2
@_ZN11xalanc_1_10L18s_acosFunctionNameE = internal constant [5 x i16] [i16 97, i16 99, i16 111, i16 115, i16 0], align 2
@_ZN11xalanc_1_10L18s_asinFunctionNameE = internal constant [5 x i16] [i16 97, i16 115, i16 105, i16 110, i16 0], align 2
@_ZN11xalanc_1_10L18s_atanFunctionNameE = internal constant [5 x i16] [i16 97, i16 116, i16 97, i16 110, i16 0], align 2
@_ZN11xalanc_1_10L19s_atan2FunctionNameE = internal constant [6 x i16] [i16 97, i16 116, i16 97, i16 110, i16 50, i16 0], align 2
@_ZN11xalanc_1_1026XalanEXSLTFunctionConstant9s_eStringE = dso_local constant [2 x i16] [i16 69, i16 0], align 2
@_ZN11xalanc_1_1026XalanEXSLTFunctionConstant12s_ln10StringE = dso_local constant [5 x i16] [i16 76, i16 78, i16 49, i16 48, i16 0], align 2
@_ZN11xalanc_1_1026XalanEXSLTFunctionConstant11s_ln2StringE = dso_local constant [4 x i16] [i16 76, i16 78, i16 50, i16 0], align 2
@_ZN11xalanc_1_1026XalanEXSLTFunctionConstant13s_log2EStringE = dso_local constant [6 x i16] [i16 76, i16 79, i16 71, i16 50, i16 69, i16 0], align 2
@_ZN11xalanc_1_1026XalanEXSLTFunctionConstant10s_piStringE = dso_local constant [3 x i16] [i16 80, i16 73, i16 0], align 2
@_ZN11xalanc_1_1026XalanEXSLTFunctionConstant15s_sqrt1_2StringE = dso_local constant [8 x i16] [i16 83, i16 81, i16 82, i16 84, i16 49, i16 95, i16 50, i16 0], align 16
@_ZN11xalanc_1_1026XalanEXSLTFunctionConstant13s_sqrt2StringE = dso_local constant [7 x i16] [i16 83, i16 81, i16 82, i16 82, i16 84, i16 50, i16 0], align 2
@_ZN11xalanc_1_1026XalanEXSLTFunctionConstant9s_eValuesE = dso_local local_unnamed_addr constant [51 x double] [double 0.000000e+00, double 2.700000e+00, double 2.710000e+00, double 2.718000e+00, double 2.718200e+00, double 2.718280e+00, double 0x4005BF0A1BE2B496, double 0x4005BF0A87427F01, double 0x4005BF0A89F1B0DD, double 0x4005BF0A8B04919B, double 0x4005BF0A8B12500B, double 0x4005BF0A8B1407D9, double 0x4005BF0A8B145703, double 0x4005BF0A8B145703, double 0x4005BF0A8B14575E, double 0x4005BF0A8B145769, double 0x4005BF0A8B145769, double 0x4005BF0A8B145769, double 0x4005BF0A8B145769, double 0x4005BF0A8B145769, double 0x4005BF0A8B145769, double 0x4005BF0A8B145769, double 0x4005BF0A8B145769, double 0x4005BF0A8B145769, double 0x4005BF0A8B145769, double 0x4005BF0A8B145769, double 0x4005BF0A8B145769, double 0x4005BF0A8B145769, double 0x4005BF0A8B145769, double 0x4005BF0A8B145769, double 0x4005BF0A8B145769, double 0x4005BF0A8B145769, double 0x4005BF0A8B145769, double 0x4005BF0A8B145769, double 0x4005BF0A8B145769, double 0x4005BF0A8B145769, double 0x4005BF0A8B145769, double 0x4005BF0A8B145769, double 0x4005BF0A8B145769, double 0x4005BF0A8B145769, double 0x4005BF0A8B145769, double 0x4005BF0A8B145769, double 0x4005BF0A8B145769, double 0x4005BF0A8B145769, double 0x4005BF0A8B145769, double 0x4005BF0A8B145769, double 0x4005BF0A8B145769, double 0x4005BF0A8B145769, double 0x4005BF0A8B145769, double 0x4005BF0A8B145769, double 0x4005BF0A8B145769], align 16
@_ZN11xalanc_1_1026XalanEXSLTFunctionConstant12s_ln10ValuesE = dso_local local_unnamed_addr constant [16 x double] [double 0.000000e+00, double 2.300000e+00, double 2.300000e+00, double 2.302000e+00, double 2.302500e+00, double 2.302580e+00, double 0x40026BB1AF3A14CF, double 0x40026BB1AF3A14CF, double 0x40026BB1BB4E752E, double 0x40026BB1BB932D5E, double 0x40026BB1BBB219D9, double 0x40026BB1BBB5317F, double 0x40026BB1BBB554AF, double 0x40026BB1BBB554AF, double 0x40026BB1BBB55509, double 0x40026BB1BBB55516], align 16
@_ZN11xalanc_1_1026XalanEXSLTFunctionConstant11s_ln2ValuesE = dso_local local_unnamed_addr constant [51 x double] [double 0.000000e+00, double 6.000000e-01, double 6.900000e-01, double 6.930000e-01, double 6.931000e-01, double 6.931400e-01, double 0x3FE62E429E0A41A2, double 0x3FE62E42D3BA26D8, double 0x3FE62E42FEAD449C, double 0x3FE62E42FEAD449C, double 0x3FE62E42FEF1FCCC, double 0x3FE62E42FEF8DC04, double 0x3FE62E42FEFA18AD, double 0x3FE62E42FEFA3857, double 0x3FE62E42FEFA39BF, double 0x3FE62E42FEFA39EC, double 0x3FE62E42FEFA39EF, double 0x3FE62E42FEFA39EF, double 0x3FE62E42FEFA39EF, double 0x3FE62E42FEFA39EF, double 0x3FE62E42FEFA39EF, double 0x3FE62E42FEFA39EF, double 0x3FE62E42FEFA39EF, double 0x3FE62E42FEFA39EF, double 0x3FE62E42FEFA39EF, double 0x3FE62E42FEFA39EF, double 0x3FE62E42FEFA39EF, double 0x3FE62E42FEFA39EF, double 0x3FE62E42FEFA39EF, double 0x3FE62E42FEFA39EF, double 0x3FE62E42FEFA39EF, double 0x3FE62E42FEFA39EF, double 0x3FE62E42FEFA39EF, double 0x3FE62E42FEFA39EF, double 0x3FE62E42FEFA39EF, double 0x3FE62E42FEFA39EF, double 0x3FE62E42FEFA39EF, double 0x3FE62E42FEFA39EF, double 0x3FE62E42FEFA39EF, double 0x3FE62E42FEFA39EF, double 0x3FE62E42FEFA39EF, double 0x3FE62E42FEFA39EF, double 0x3FE62E42FEFA39EF, double 0x3FE62E42FEFA39EF, double 0x3FE62E42FEFA39EF, double 0x3FE62E42FEFA39EF, double 0x3FE62E42FEFA39EF, double 0x3FE62E42FEFA39EF, double 0x3FE62E42FEFA39EF, double 0x3FE62E42FEFA39EF, double 0x3FE62E42FEFA39EF], align 16
@_ZN11xalanc_1_1026XalanEXSLTFunctionConstant13s_log2EValuesE = dso_local local_unnamed_addr constant [17 x double] [double 0.000000e+00, double 1.400000e+00, double 1.440000e+00, double 1.442000e+00, double 1.442600e+00, double 1.442690e+00, double 0x3FF715475A31A4BE, double 0x3FF715475A31A4BE, double 0x3FF7154764EE6C2F, double 0x3FF7154764EE6C2F, double 0x3FF71547652565EF, double 0x3FF71547652AE54E, double 0x3FF71547652B720B, double 0x3FF71547652B81E1, double 0x3FF71547652B82EF, double 0x3FF71547652B82FC, double 0x3FF71547652B82FE], align 16
@_ZN11xalanc_1_1026XalanEXSLTFunctionConstant10s_piValuesE = dso_local local_unnamed_addr constant [50 x double] [double 0.000000e+00, double 3.100000e+00, double 3.140000e+00, double 3.141000e+00, double 3.141500e+00, double 3.141590e+00, double 0x400921FAFC8B007A, double 0x400921FB4D12D84A, double 0x400921FB53C8D4F1, double 0x400921FB542FE938, double 0x400921FB54411744, double 0x400921FB5443D6F4, double 0x400921FB5444261E, double 0x400921FB54442C46, double 0x400921FB54442D11, double 0x400921FB54442D18, double 0x400921FB54442D18, double 0x400921FB54442D18, double 0x400921FB54442D18, double 0x400921FB54442D18, double 0x400921FB54442D18, double 0x400921FB54442D18, double 0x400921FB54442D18, double 0x400921FB54442D18, double 0x400921FB54442D18, double 0x400921FB54442D18, double 0x400921FB54442D18, double 0x400921FB54442D18, double 0x400921FB54442D18, double 0x400921FB54442D18, double 0x400921FB54442D18, double 0x400921FB54442D18, double 0x400921FB54442D18, double 0x400921FB54442D18, double 0x400921FB54442D18, double 0x400921FB54442D18, double 0x400921FB54442D18, double 0x400921FB54442D18, double 0x400921FB54442D18, double 0x400921FB54442D18, double 0x400921FB54442D18, double 0x400921FB54442D18, double 0x400921FB54442D18, double 0x400921FB54442D18, double 0x400921FB54442D18, double 0x400921FB54442D18, double 0x400921FB54442D18, double 0x400921FB54442D18, double 0x400921FB54442D18, double 0x400921FB54442D18], align 16
@_ZN11xalanc_1_1026XalanEXSLTFunctionConstant15s_sqrt1_2ValuesE = dso_local local_unnamed_addr constant [17 x double] [double 0.000000e+00, double 0x3FE6666666666666, double 0x3FE6666666666666, double 7.070000e-01, double 7.071000e-01, double 7.071000e-01, double 7.071060e-01, double 0x3FE6A09E3AE90A1A, double 0x3FE6A09E65DC27DF, double 0x3FE6A09E6665983E, double 0x3FE6A09E667356AE, double 0x3FE6A09E667E556E, double 0x3FE6A09E667F2889, double 0x3FE6A09E667F3A21, double 0x3FE6A09E667F3B89, double 0x3FE6A09E667F3BC8, double 0x3FE6A09E667F3BCD], align 16
@_ZN11xalanc_1_1026XalanEXSLTFunctionConstant13s_sqrt2ValuesE = dso_local local_unnamed_addr constant [51 x double] [double 0.000000e+00, double 1.400000e+00, double 1.410000e+00, double 1.414000e+00, double 1.414200e+00, double 1.414210e+00, double 0x3FF6A09DCF893FAF, double 0x3FF6A09E55C0FCB5, double 0x3FF6A09E65DC27DF, double 0x3FF6A09E6665983E, double 0x3FF6A09E667A35E6, double 0x3FF6A09E667F055A, double 0x3FF6A09E667F3A21, double 0x3FF6A09E667F3A21, double 0x3FF6A09E667F3BB6, double 0x3FF6A09E667F3BCC, double 0x3FF6A09E667F3BCC, double 0x3FF6A09E667F3BCD, double 0x3FF6A09E667F3BCD, double 0x3FF6A09E667F3BCD, double 0x3FF6A09E667F3BCD, double 0x3FF6A09E667F3BCD, double 0x3FF6A09E667F3BCD, double 0x3FF6A09E667F3BCD, double 0x3FF6A09E667F3BCD, double 0x3FF6A09E667F3BCD, double 0x3FF6A09E667F3BCD, double 0x3FF6A09E667F3BCD, double 0x3FF6A09E667F3BCD, double 0x3FF6A09E667F3BCD, double 0x3FF6A09E667F3BCD, double 0x3FF6A09E667F3BCD, double 0x3FF6A09E667F3BCD, double 0x3FF6A09E667F3BCD, double 0x3FF6A09E667F3BCD, double 0x3FF6A09E667F3BCD, double 0x3FF6A09E667F3BCD, double 0x3FF6A09E667F3BCD, double 0x3FF6A09E667F3BCD, double 0x3FF6A09E667F3BCD, double 0x3FF6A09E667F3BCD, double 0x3FF6A09E667F3BCD, double 0x3FF6A09E667F3BCD, double 0x3FF6A09E667F3BCD, double 0x3FF6A09E667F3BCD, double 0x3FF6A09E667F3BCD, double 0x3FF6A09E667F3BCD, double 0x3FF6A09E667F3BCD, double 0x3FF6A09E667F3BCD, double 0x3FF6A09E667F3BCD, double 0x3FF6A09E667F3BCD], align 16
@_ZN11xalanc_1_10L17s_cosFunctionNameE = internal constant [4 x i16] [i16 99, i16 111, i16 115, i16 0], align 2
@_ZN11xalanc_1_10L17s_expFunctionNameE = internal constant [4 x i16] [i16 101, i16 120, i16 112, i16 0], align 2
@_ZN11xalanc_1_10L17s_logFunctionNameE = internal constant [4 x i16] [i16 108, i16 111, i16 103, i16 0], align 2
@_ZN11xalanc_1_10L19s_powerFunctionNameE = internal constant [6 x i16] [i16 112, i16 111, i16 119, i16 101, i16 114, i16 0], align 2
@_ZN11xalanc_1_10L17s_sinFunctionNameE = internal constant [4 x i16] [i16 115, i16 105, i16 110, i16 0], align 2
@_ZN11xalanc_1_10L18s_sqrtFunctionNameE = internal constant [5 x i16] [i16 115, i16 113, i16 114, i16 116, i16 0], align 2
@_ZN11xalanc_1_10L17s_tanFunctionNameE = internal constant [4 x i16] [i16 116, i16 97, i16 110, i16 0], align 2
@_ZN11xalanc_1_10L13s_absFunctionE = internal global %"class.xalanc_1_10::XalanEXSLTFunctionAbs" zeroinitializer, align 8
@__dso_handle = external hidden global i8
@_ZN11xalanc_1_10L14s_acosFunctionE = internal global %"class.xalanc_1_10::XalanEXSLTFunctionAcos" zeroinitializer, align 8
@_ZN11xalanc_1_10L14s_asinFunctionE = internal global %"class.xalanc_1_10::XalanEXSLTFunctionAsin" zeroinitializer, align 8
@_ZN11xalanc_1_10L14s_atanFunctionE = internal global %"class.xalanc_1_10::XalanEXSLTFunctionAtan" zeroinitializer, align 8
@_ZN11xalanc_1_10L15s_atan2FunctionE = internal global %"class.xalanc_1_10::XalanEXSLTFunctionAtan" zeroinitializer, align 8
@_ZN11xalanc_1_10L18s_constantFunctionE = internal global %"class.xalanc_1_10::XalanEXSLTFunctionConstant" zeroinitializer, align 8
@_ZN11xalanc_1_10L13s_cosFunctionE = internal global %"class.xalanc_1_10::XalanEXSLTFunctionCos" zeroinitializer, align 8
@_ZN11xalanc_1_10L13s_expFunctionE = internal global %"class.xalanc_1_10::XalanEXSLTFunctionExp" zeroinitializer, align 8
@_ZN11xalanc_1_10L17s_highestFunctionE = internal global %"class.xalanc_1_10::XalanEXSLTFunctionHighest" zeroinitializer, align 8
@_ZN11xalanc_1_10L13s_logFunctionE = internal global %"class.xalanc_1_10::XalanEXSLTFunctionLog" zeroinitializer, align 8
@_ZN11xalanc_1_10L16s_lowestFunctionE = internal global %"class.xalanc_1_10::XalanEXSLTFunctionLowest" zeroinitializer, align 8
@_ZN11xalanc_1_10L13s_maxFunctionE = internal global %"class.xalanc_1_10::XalanEXSLTFunctionMax" zeroinitializer, align 8
@_ZN11xalanc_1_10L13s_minFunctionE = internal global %"class.xalanc_1_10::XalanEXSLTFunctionMin" zeroinitializer, align 8
@_ZN11xalanc_1_10L15s_powerFunctionE = internal global %"class.xalanc_1_10::XalanEXSLTFunctionPower" zeroinitializer, align 8
@_ZN11xalanc_1_10L13s_sinFunctionE = internal global %"class.xalanc_1_10::XalanEXSLTFunctionSin" zeroinitializer, align 8
@_ZN11xalanc_1_10L14s_sqrtFunctionE = internal global %"class.xalanc_1_10::XalanEXSLTFunctionSqrt" zeroinitializer, align 8
@_ZN11xalanc_1_10L13s_tanFunctionE = internal global %"class.xalanc_1_10::XalanEXSLTFunctionTan" zeroinitializer, align 8
@_ZN11xalanc_1_10L16s_randomFunctionE = internal global %"class.xalanc_1_10::XalanEXSLTFunctionRandom" zeroinitializer, align 8
@_ZN11xalanc_1_10L15s_mathNamespaceE = internal constant [22 x i16] [i16 104, i16 116, i16 116, i16 112, i16 58, i16 47, i16 47, i16 101, i16 120, i16 115, i16 108, i16 116, i16 46, i16 111, i16 114, i16 103, i16 47, i16 109, i16 97, i16 116, i16 104, i16 0], align 16
@_ZN11xalanc_1_10L16theFunctionTableE = internal constant [19 x %"struct.xalanc_1_10::XalanExtensionsInstaller::FunctionTableEntry"] [%"struct.xalanc_1_10::XalanExtensionsInstaller::FunctionTableEntry" { ptr @_ZN11xalanc_1_10L17s_absFunctionNameE, ptr @_ZN11xalanc_1_10L13s_absFunctionE }, %"struct.xalanc_1_10::XalanExtensionsInstaller::FunctionTableEntry" { ptr @_ZN11xalanc_1_10L18s_acosFunctionNameE, ptr @_ZN11xalanc_1_10L14s_acosFunctionE }, %"struct.xalanc_1_10::XalanExtensionsInstaller::FunctionTableEntry" { ptr @_ZN11xalanc_1_10L18s_asinFunctionNameE, ptr @_ZN11xalanc_1_10L14s_asinFunctionE }, %"struct.xalanc_1_10::XalanExtensionsInstaller::FunctionTableEntry" { ptr @_ZN11xalanc_1_10L18s_atanFunctionNameE, ptr @_ZN11xalanc_1_10L14s_atanFunctionE }, %"struct.xalanc_1_10::XalanExtensionsInstaller::FunctionTableEntry" { ptr @_ZN11xalanc_1_10L19s_atan2FunctionNameE, ptr @_ZN11xalanc_1_10L15s_atan2FunctionE }, %"struct.xalanc_1_10::XalanExtensionsInstaller::FunctionTableEntry" { ptr @_ZN11xalanc_1_10L22s_constantFunctionNameE, ptr @_ZN11xalanc_1_10L18s_constantFunctionE }, %"struct.xalanc_1_10::XalanExtensionsInstaller::FunctionTableEntry" { ptr @_ZN11xalanc_1_10L17s_cosFunctionNameE, ptr @_ZN11xalanc_1_10L13s_cosFunctionE }, %"struct.xalanc_1_10::XalanExtensionsInstaller::FunctionTableEntry" { ptr @_ZN11xalanc_1_10L17s_expFunctionNameE, ptr @_ZN11xalanc_1_10L13s_expFunctionE }, %"struct.xalanc_1_10::XalanExtensionsInstaller::FunctionTableEntry" { ptr @_ZN11xalanc_1_10L21s_highestFunctionNameE, ptr @_ZN11xalanc_1_10L17s_highestFunctionE }, %"struct.xalanc_1_10::XalanExtensionsInstaller::FunctionTableEntry" { ptr @_ZN11xalanc_1_10L17s_logFunctionNameE, ptr @_ZN11xalanc_1_10L13s_logFunctionE }, %"struct.xalanc_1_10::XalanExtensionsInstaller::FunctionTableEntry" { ptr @_ZN11xalanc_1_10L20s_lowestFunctionNameE, ptr @_ZN11xalanc_1_10L16s_lowestFunctionE }, %"struct.xalanc_1_10::XalanExtensionsInstaller::FunctionTableEntry" { ptr @_ZN11xalanc_1_10L17s_maxFunctionNameE, ptr @_ZN11xalanc_1_10L13s_maxFunctionE }, %"struct.xalanc_1_10::XalanExtensionsInstaller::FunctionTableEntry" { ptr @_ZN11xalanc_1_10L17s_minFunctionNameE, ptr @_ZN11xalanc_1_10L13s_minFunctionE }, %"struct.xalanc_1_10::XalanExtensionsInstaller::FunctionTableEntry" { ptr @_ZN11xalanc_1_10L19s_powerFunctionNameE, ptr @_ZN11xalanc_1_10L15s_powerFunctionE }, %"struct.xalanc_1_10::XalanExtensionsInstaller::FunctionTableEntry" { ptr @_ZN11xalanc_1_10L17s_sinFunctionNameE, ptr @_ZN11xalanc_1_10L13s_sinFunctionE }, %"struct.xalanc_1_10::XalanExtensionsInstaller::FunctionTableEntry" { ptr @_ZN11xalanc_1_10L18s_sqrtFunctionNameE, ptr @_ZN11xalanc_1_10L14s_sqrtFunctionE }, %"struct.xalanc_1_10::XalanExtensionsInstaller::FunctionTableEntry" { ptr @_ZN11xalanc_1_10L17s_tanFunctionNameE, ptr @_ZN11xalanc_1_10L13s_tanFunctionE }, %"struct.xalanc_1_10::XalanExtensionsInstaller::FunctionTableEntry" { ptr @_ZN11xalanc_1_10L20s_randomFunctionNameE, ptr @_ZN11xalanc_1_10L16s_randomFunctionE }, %"struct.xalanc_1_10::XalanExtensionsInstaller::FunctionTableEntry" zeroinitializer], align 16
@_ZTVN11xalanc_1_1021XalanEXSLTFunctionAbsE = dso_local unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1021XalanEXSLTFunctionAbsE, ptr @_ZN11xalanc_1_108FunctionD2Ev, ptr @_ZN11xalanc_1_1021XalanEXSLTFunctionAbsD0Ev, ptr @_ZNK11xalanc_1_1021XalanEXSLTFunctionAbs7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_S5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_1021XalanEXSLTFunctionAbs5cloneERN11xercesc_2_713MemoryManagerE, ptr @_ZNK11xalanc_1_1021XalanEXSLTFunctionAbs8getErrorERNS_14XalanDOMStringE] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1021XalanEXSLTFunctionAbsE = dso_local constant [39 x i8] c"N11xalanc_1_1021XalanEXSLTFunctionAbsE\00", align 1
@_ZTIN11xalanc_1_108FunctionE = external constant ptr
@_ZTIN11xalanc_1_1021XalanEXSLTFunctionAbsE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1021XalanEXSLTFunctionAbsE, ptr @_ZTIN11xalanc_1_108FunctionE }, align 8
@_ZTVN11xalanc_1_1024XalanEXSLTFunctionRandomE = dso_local unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1024XalanEXSLTFunctionRandomE, ptr @_ZN11xalanc_1_108FunctionD2Ev, ptr @_ZN11xalanc_1_1024XalanEXSLTFunctionRandomD0Ev, ptr @_ZNK11xalanc_1_1024XalanEXSLTFunctionRandom7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_S5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_1024XalanEXSLTFunctionRandom5cloneERN11xercesc_2_713MemoryManagerE, ptr @_ZNK11xalanc_1_1024XalanEXSLTFunctionRandom8getErrorERNS_14XalanDOMStringE] }, align 8
@_ZTSN11xalanc_1_1024XalanEXSLTFunctionRandomE = dso_local constant [42 x i8] c"N11xalanc_1_1024XalanEXSLTFunctionRandomE\00", align 1
@_ZTIN11xalanc_1_1024XalanEXSLTFunctionRandomE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1024XalanEXSLTFunctionRandomE, ptr @_ZTIN11xalanc_1_108FunctionE }, align 8
@_ZTVN11xalanc_1_1022XalanEXSLTFunctionAcosE = dso_local unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1022XalanEXSLTFunctionAcosE, ptr @_ZN11xalanc_1_108FunctionD2Ev, ptr @_ZN11xalanc_1_1022XalanEXSLTFunctionAcosD0Ev, ptr @_ZNK11xalanc_1_1022XalanEXSLTFunctionAcos7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_S5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_1022XalanEXSLTFunctionAcos5cloneERN11xercesc_2_713MemoryManagerE, ptr @_ZNK11xalanc_1_1022XalanEXSLTFunctionAcos8getErrorERNS_14XalanDOMStringE] }, align 8
@_ZTSN11xalanc_1_1022XalanEXSLTFunctionAcosE = dso_local constant [40 x i8] c"N11xalanc_1_1022XalanEXSLTFunctionAcosE\00", align 1
@_ZTIN11xalanc_1_1022XalanEXSLTFunctionAcosE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1022XalanEXSLTFunctionAcosE, ptr @_ZTIN11xalanc_1_108FunctionE }, align 8
@_ZTVN11xalanc_1_1022XalanEXSLTFunctionAsinE = dso_local unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1022XalanEXSLTFunctionAsinE, ptr @_ZN11xalanc_1_108FunctionD2Ev, ptr @_ZN11xalanc_1_1022XalanEXSLTFunctionAsinD0Ev, ptr @_ZNK11xalanc_1_1022XalanEXSLTFunctionAsin7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_S5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_1022XalanEXSLTFunctionAsin5cloneERN11xercesc_2_713MemoryManagerE, ptr @_ZNK11xalanc_1_1022XalanEXSLTFunctionAsin8getErrorERNS_14XalanDOMStringE] }, align 8
@_ZTSN11xalanc_1_1022XalanEXSLTFunctionAsinE = dso_local constant [40 x i8] c"N11xalanc_1_1022XalanEXSLTFunctionAsinE\00", align 1
@_ZTIN11xalanc_1_1022XalanEXSLTFunctionAsinE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1022XalanEXSLTFunctionAsinE, ptr @_ZTIN11xalanc_1_108FunctionE }, align 8
@_ZTVN11xalanc_1_1022XalanEXSLTFunctionAtanE = dso_local unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1022XalanEXSLTFunctionAtanE, ptr @_ZN11xalanc_1_108FunctionD2Ev, ptr @_ZN11xalanc_1_1022XalanEXSLTFunctionAtanD0Ev, ptr @_ZNK11xalanc_1_1022XalanEXSLTFunctionAtan7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_S5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_1022XalanEXSLTFunctionAtan5cloneERN11xercesc_2_713MemoryManagerE, ptr @_ZNK11xalanc_1_1022XalanEXSLTFunctionAtan8getErrorERNS_14XalanDOMStringE] }, align 8
@_ZTSN11xalanc_1_1022XalanEXSLTFunctionAtanE = dso_local constant [40 x i8] c"N11xalanc_1_1022XalanEXSLTFunctionAtanE\00", align 1
@_ZTIN11xalanc_1_1022XalanEXSLTFunctionAtanE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1022XalanEXSLTFunctionAtanE, ptr @_ZTIN11xalanc_1_108FunctionE }, align 8
@_ZTVN11xalanc_1_1023XalanEXSLTFunctionAtan2E = dso_local unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1023XalanEXSLTFunctionAtan2E, ptr @_ZN11xalanc_1_108FunctionD2Ev, ptr @_ZN11xalanc_1_1023XalanEXSLTFunctionAtan2D0Ev, ptr @_ZNK11xalanc_1_1023XalanEXSLTFunctionAtan27executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_S5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_1023XalanEXSLTFunctionAtan25cloneERN11xercesc_2_713MemoryManagerE, ptr @_ZNK11xalanc_1_1023XalanEXSLTFunctionAtan28getErrorERNS_14XalanDOMStringE] }, align 8
@_ZTSN11xalanc_1_1023XalanEXSLTFunctionAtan2E = dso_local constant [41 x i8] c"N11xalanc_1_1023XalanEXSLTFunctionAtan2E\00", align 1
@_ZTIN11xalanc_1_1023XalanEXSLTFunctionAtan2E = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1023XalanEXSLTFunctionAtan2E, ptr @_ZTIN11xalanc_1_108FunctionE }, align 8
@_ZTVN11xalanc_1_1026XalanEXSLTFunctionConstantE = dso_local unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1026XalanEXSLTFunctionConstantE, ptr @_ZN11xalanc_1_108FunctionD2Ev, ptr @_ZN11xalanc_1_1026XalanEXSLTFunctionConstantD0Ev, ptr @_ZNK11xalanc_1_1026XalanEXSLTFunctionConstant7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_S5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_1026XalanEXSLTFunctionConstant5cloneERN11xercesc_2_713MemoryManagerE, ptr @_ZNK11xalanc_1_1026XalanEXSLTFunctionConstant8getErrorERNS_14XalanDOMStringE] }, align 8
@_ZTSN11xalanc_1_1026XalanEXSLTFunctionConstantE = dso_local constant [44 x i8] c"N11xalanc_1_1026XalanEXSLTFunctionConstantE\00", align 1
@_ZTIN11xalanc_1_1026XalanEXSLTFunctionConstantE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1026XalanEXSLTFunctionConstantE, ptr @_ZTIN11xalanc_1_108FunctionE }, align 8
@_ZTVN11xalanc_1_1021XalanEXSLTFunctionCosE = dso_local unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1021XalanEXSLTFunctionCosE, ptr @_ZN11xalanc_1_108FunctionD2Ev, ptr @_ZN11xalanc_1_1021XalanEXSLTFunctionCosD0Ev, ptr @_ZNK11xalanc_1_1021XalanEXSLTFunctionCos7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_S5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_1021XalanEXSLTFunctionCos5cloneERN11xercesc_2_713MemoryManagerE, ptr @_ZNK11xalanc_1_1021XalanEXSLTFunctionCos8getErrorERNS_14XalanDOMStringE] }, align 8
@_ZTSN11xalanc_1_1021XalanEXSLTFunctionCosE = dso_local constant [39 x i8] c"N11xalanc_1_1021XalanEXSLTFunctionCosE\00", align 1
@_ZTIN11xalanc_1_1021XalanEXSLTFunctionCosE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1021XalanEXSLTFunctionCosE, ptr @_ZTIN11xalanc_1_108FunctionE }, align 8
@_ZTVN11xalanc_1_1021XalanEXSLTFunctionExpE = dso_local unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1021XalanEXSLTFunctionExpE, ptr @_ZN11xalanc_1_108FunctionD2Ev, ptr @_ZN11xalanc_1_1021XalanEXSLTFunctionExpD0Ev, ptr @_ZNK11xalanc_1_1021XalanEXSLTFunctionExp7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_S5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_1021XalanEXSLTFunctionExp5cloneERN11xercesc_2_713MemoryManagerE, ptr @_ZNK11xalanc_1_1021XalanEXSLTFunctionExp8getErrorERNS_14XalanDOMStringE] }, align 8
@_ZTSN11xalanc_1_1021XalanEXSLTFunctionExpE = dso_local constant [39 x i8] c"N11xalanc_1_1021XalanEXSLTFunctionExpE\00", align 1
@_ZTIN11xalanc_1_1021XalanEXSLTFunctionExpE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1021XalanEXSLTFunctionExpE, ptr @_ZTIN11xalanc_1_108FunctionE }, align 8
@_ZTVN11xalanc_1_1025XalanEXSLTFunctionHighestE = dso_local unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1025XalanEXSLTFunctionHighestE, ptr @_ZN11xalanc_1_108FunctionD2Ev, ptr @_ZN11xalanc_1_1025XalanEXSLTFunctionHighestD0Ev, ptr @_ZNK11xalanc_1_1025XalanEXSLTFunctionHighest7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_S5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_1025XalanEXSLTFunctionHighest5cloneERN11xercesc_2_713MemoryManagerE, ptr @_ZNK11xalanc_1_1025XalanEXSLTFunctionHighest8getErrorERNS_14XalanDOMStringE] }, align 8
@_ZTSN11xalanc_1_1025XalanEXSLTFunctionHighestE = dso_local constant [43 x i8] c"N11xalanc_1_1025XalanEXSLTFunctionHighestE\00", align 1
@_ZTIN11xalanc_1_1025XalanEXSLTFunctionHighestE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1025XalanEXSLTFunctionHighestE, ptr @_ZTIN11xalanc_1_108FunctionE }, align 8
@_ZTVN11xalanc_1_1021XalanEXSLTFunctionLogE = dso_local unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1021XalanEXSLTFunctionLogE, ptr @_ZN11xalanc_1_108FunctionD2Ev, ptr @_ZN11xalanc_1_1021XalanEXSLTFunctionLogD0Ev, ptr @_ZNK11xalanc_1_1021XalanEXSLTFunctionLog7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_S5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_1021XalanEXSLTFunctionLog5cloneERN11xercesc_2_713MemoryManagerE, ptr @_ZNK11xalanc_1_1021XalanEXSLTFunctionLog8getErrorERNS_14XalanDOMStringE] }, align 8
@_ZTSN11xalanc_1_1021XalanEXSLTFunctionLogE = dso_local constant [39 x i8] c"N11xalanc_1_1021XalanEXSLTFunctionLogE\00", align 1
@_ZTIN11xalanc_1_1021XalanEXSLTFunctionLogE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1021XalanEXSLTFunctionLogE, ptr @_ZTIN11xalanc_1_108FunctionE }, align 8
@_ZTVN11xalanc_1_1024XalanEXSLTFunctionLowestE = dso_local unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1024XalanEXSLTFunctionLowestE, ptr @_ZN11xalanc_1_108FunctionD2Ev, ptr @_ZN11xalanc_1_1024XalanEXSLTFunctionLowestD0Ev, ptr @_ZNK11xalanc_1_1024XalanEXSLTFunctionLowest7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_S5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_1024XalanEXSLTFunctionLowest5cloneERN11xercesc_2_713MemoryManagerE, ptr @_ZNK11xalanc_1_1024XalanEXSLTFunctionLowest8getErrorERNS_14XalanDOMStringE] }, align 8
@_ZTSN11xalanc_1_1024XalanEXSLTFunctionLowestE = dso_local constant [42 x i8] c"N11xalanc_1_1024XalanEXSLTFunctionLowestE\00", align 1
@_ZTIN11xalanc_1_1024XalanEXSLTFunctionLowestE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1024XalanEXSLTFunctionLowestE, ptr @_ZTIN11xalanc_1_108FunctionE }, align 8
@_ZTVN11xalanc_1_1021XalanEXSLTFunctionMaxE = dso_local unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1021XalanEXSLTFunctionMaxE, ptr @_ZN11xalanc_1_108FunctionD2Ev, ptr @_ZN11xalanc_1_1021XalanEXSLTFunctionMaxD0Ev, ptr @_ZNK11xalanc_1_1021XalanEXSLTFunctionMax7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_S5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_1021XalanEXSLTFunctionMax5cloneERN11xercesc_2_713MemoryManagerE, ptr @_ZNK11xalanc_1_1021XalanEXSLTFunctionMax8getErrorERNS_14XalanDOMStringE] }, align 8
@_ZTSN11xalanc_1_1021XalanEXSLTFunctionMaxE = dso_local constant [39 x i8] c"N11xalanc_1_1021XalanEXSLTFunctionMaxE\00", align 1
@_ZTIN11xalanc_1_1021XalanEXSLTFunctionMaxE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1021XalanEXSLTFunctionMaxE, ptr @_ZTIN11xalanc_1_108FunctionE }, align 8
@_ZTVN11xalanc_1_1021XalanEXSLTFunctionMinE = dso_local unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1021XalanEXSLTFunctionMinE, ptr @_ZN11xalanc_1_108FunctionD2Ev, ptr @_ZN11xalanc_1_1021XalanEXSLTFunctionMinD0Ev, ptr @_ZNK11xalanc_1_1021XalanEXSLTFunctionMin7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_S5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_1021XalanEXSLTFunctionMin5cloneERN11xercesc_2_713MemoryManagerE, ptr @_ZNK11xalanc_1_1021XalanEXSLTFunctionMin8getErrorERNS_14XalanDOMStringE] }, align 8
@_ZTSN11xalanc_1_1021XalanEXSLTFunctionMinE = dso_local constant [39 x i8] c"N11xalanc_1_1021XalanEXSLTFunctionMinE\00", align 1
@_ZTIN11xalanc_1_1021XalanEXSLTFunctionMinE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1021XalanEXSLTFunctionMinE, ptr @_ZTIN11xalanc_1_108FunctionE }, align 8
@_ZTVN11xalanc_1_1023XalanEXSLTFunctionPowerE = dso_local unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1023XalanEXSLTFunctionPowerE, ptr @_ZN11xalanc_1_108FunctionD2Ev, ptr @_ZN11xalanc_1_1023XalanEXSLTFunctionPowerD0Ev, ptr @_ZNK11xalanc_1_1023XalanEXSLTFunctionPower7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_S5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_1023XalanEXSLTFunctionPower5cloneERN11xercesc_2_713MemoryManagerE, ptr @_ZNK11xalanc_1_1023XalanEXSLTFunctionPower8getErrorERNS_14XalanDOMStringE] }, align 8
@_ZTSN11xalanc_1_1023XalanEXSLTFunctionPowerE = dso_local constant [41 x i8] c"N11xalanc_1_1023XalanEXSLTFunctionPowerE\00", align 1
@_ZTIN11xalanc_1_1023XalanEXSLTFunctionPowerE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1023XalanEXSLTFunctionPowerE, ptr @_ZTIN11xalanc_1_108FunctionE }, align 8
@_ZTVN11xalanc_1_1021XalanEXSLTFunctionSinE = dso_local unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1021XalanEXSLTFunctionSinE, ptr @_ZN11xalanc_1_108FunctionD2Ev, ptr @_ZN11xalanc_1_1021XalanEXSLTFunctionSinD0Ev, ptr @_ZNK11xalanc_1_1021XalanEXSLTFunctionSin7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_S5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_1021XalanEXSLTFunctionSin5cloneERN11xercesc_2_713MemoryManagerE, ptr @_ZNK11xalanc_1_1021XalanEXSLTFunctionSin8getErrorERNS_14XalanDOMStringE] }, align 8
@_ZTSN11xalanc_1_1021XalanEXSLTFunctionSinE = dso_local constant [39 x i8] c"N11xalanc_1_1021XalanEXSLTFunctionSinE\00", align 1
@_ZTIN11xalanc_1_1021XalanEXSLTFunctionSinE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1021XalanEXSLTFunctionSinE, ptr @_ZTIN11xalanc_1_108FunctionE }, align 8
@_ZTVN11xalanc_1_1022XalanEXSLTFunctionSqrtE = dso_local unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1022XalanEXSLTFunctionSqrtE, ptr @_ZN11xalanc_1_108FunctionD2Ev, ptr @_ZN11xalanc_1_1022XalanEXSLTFunctionSqrtD0Ev, ptr @_ZNK11xalanc_1_1022XalanEXSLTFunctionSqrt7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_S5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_1022XalanEXSLTFunctionSqrt5cloneERN11xercesc_2_713MemoryManagerE, ptr @_ZNK11xalanc_1_1022XalanEXSLTFunctionSqrt8getErrorERNS_14XalanDOMStringE] }, align 8
@_ZTSN11xalanc_1_1022XalanEXSLTFunctionSqrtE = dso_local constant [40 x i8] c"N11xalanc_1_1022XalanEXSLTFunctionSqrtE\00", align 1
@_ZTIN11xalanc_1_1022XalanEXSLTFunctionSqrtE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1022XalanEXSLTFunctionSqrtE, ptr @_ZTIN11xalanc_1_108FunctionE }, align 8
@_ZTVN11xalanc_1_1021XalanEXSLTFunctionTanE = dso_local unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1021XalanEXSLTFunctionTanE, ptr @_ZN11xalanc_1_108FunctionD2Ev, ptr @_ZN11xalanc_1_1021XalanEXSLTFunctionTanD0Ev, ptr @_ZNK11xalanc_1_1021XalanEXSLTFunctionTan7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_S5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_1021XalanEXSLTFunctionTan5cloneERN11xercesc_2_713MemoryManagerE, ptr @_ZNK11xalanc_1_1021XalanEXSLTFunctionTan8getErrorERNS_14XalanDOMStringE] }, align 8
@_ZTSN11xalanc_1_1021XalanEXSLTFunctionTanE = dso_local constant [39 x i8] c"N11xalanc_1_1021XalanEXSLTFunctionTanE\00", align 1
@_ZTIN11xalanc_1_1021XalanEXSLTFunctionTanE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1021XalanEXSLTFunctionTanE, ptr @_ZTIN11xalanc_1_108FunctionE }, align 8
@_ZN11xalanc_1_1013DoubleSupport5s_NaNE = external local_unnamed_addr global %"union.xalanc_1_10::DoubleSupport::NumberUnion", align 8
@_ZN11xalanc_1_1014XalanDOMString7s_emptyE = external constant i16, align 2
@_ZN11xalanc_1_10L22s_constantFunctionNameE = internal constant [9 x i16] [i16 99, i16 111, i16 110, i16 115, i16 116, i16 97, i16 110, i16 116, i16 0], align 16
@.str = private unnamed_addr constant [11 x i8] c"constant()\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_XalanEXSLTMath.cpp, ptr null }]

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1025XalanEXSLTFunctionHighest7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %4, ptr noundef %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !42 {
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !43
  %9 = icmp eq i64 %8, 1
  br i1 %9, label %41, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %2, align 8, !tbaa !49
  %12 = getelementptr inbounds ptr, ptr %11, i64 23
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef nonnull align 8 dereferenceable(36) ptr %13(ptr noundef nonnull align 8 dereferenceable(24) %2)
  %15 = load ptr, ptr %1, align 8, !tbaa !49
  %16 = getelementptr inbounds ptr, ptr %15, i64 8
  %17 = load ptr, ptr %16, align 8
  %18 = invoke noundef nonnull align 8 dereferenceable(36) ptr %17(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(36) %14)
          to label %19 unwind label %31

19:                                               ; preds = %10
  %20 = load ptr, ptr %2, align 8, !tbaa !49
  %21 = getelementptr inbounds ptr, ptr %20, i64 2
  %22 = load ptr, ptr %21, align 8
  invoke void %22(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %18, ptr noundef %3, ptr noundef %5)
          to label %23 unwind label %31

23:                                               ; preds = %19
  %24 = load ptr, ptr %2, align 8, !tbaa !49
  %25 = getelementptr inbounds ptr, ptr %24, i64 24
  %26 = load ptr, ptr %25, align 8
  %27 = invoke noundef zeroext i1 %26(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %14)
          to label %41 unwind label %28

28:                                               ; preds = %23
  %29 = landingpad { ptr, i32 }
          catch ptr null
  %30 = extractvalue { ptr, i32 } %29, 0
  tail call void @__clang_call_terminate(ptr %30) #10
  unreachable

31:                                               ; preds = %19, %10
  %32 = landingpad { ptr, i32 }
          cleanup
  %33 = load ptr, ptr %2, align 8, !tbaa !49
  %34 = getelementptr inbounds ptr, ptr %33, i64 24
  %35 = load ptr, ptr %34, align 8
  %36 = invoke noundef zeroext i1 %35(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %14)
          to label %40 unwind label %37

37:                                               ; preds = %31
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  tail call void @__clang_call_terminate(ptr %39) #10
  unreachable

40:                                               ; preds = %31
  resume { ptr, i32 } %32

41:                                               ; preds = %23, %6
  %42 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !51
  %44 = load ptr, ptr %43, align 8, !tbaa !52
  %45 = load ptr, ptr %44, align 8, !tbaa !49
  %46 = getelementptr inbounds ptr, ptr %45, i64 13
  %47 = load ptr, ptr %46, align 8
  %48 = tail call noundef nonnull align 8 dereferenceable(8) ptr %47(ptr noundef nonnull align 8 dereferenceable(24) %44)
  tail call void @_ZN11xalanc_1_109findNodesIPFbddEEENS_10XObjectPtrERNS_21XPathExecutionContextERKNS_15NodeRefListBaseET_(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(8) %48, ptr noundef nonnull @_ZN11xalanc_1_1013DoubleSupport11greaterThanEdd)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109findNodesIPFbddEEENS_10XObjectPtrERNS_21XPathExecutionContextERKNS_15NodeRefListBaseET_(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 !prof !42 {
  %5 = alloca %"class.xalanc_1_10::XPathExecutionContext::BorrowReturnMutableNodeRefList", align 8
  %6 = load ptr, ptr %2, align 8, !tbaa !49
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef i32 %8(ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #11
  store ptr %1, ptr %5, align 8, !tbaa !54
  %10 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext::BorrowReturnMutableNodeRefList", ptr %5, i64 0, i32 1
  %11 = load ptr, ptr %1, align 8, !tbaa !49
  %12 = getelementptr inbounds ptr, ptr %11, i64 21
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(24) %1)
  store ptr %14, ptr %10, align 8, !tbaa !56
  %15 = getelementptr inbounds %"class.xalanc_1_10::MutableNodeRefList", ptr %14, i64 0, i32 1
  store i32 1, ptr %15, align 8, !tbaa !57
  %16 = icmp eq i32 %9, 0
  br i1 %16, label %133, label %17

17:                                               ; preds = %4
  %18 = load ptr, ptr %1, align 8, !tbaa !49
  %19 = getelementptr inbounds ptr, ptr %18, i64 23
  %20 = load ptr, ptr %19, align 8
  %21 = invoke noundef nonnull align 8 dereferenceable(36) ptr %20(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %22 unwind label %56

22:                                               ; preds = %17
  %23 = load ptr, ptr %2, align 8, !tbaa !49
  %24 = getelementptr inbounds ptr, ptr %23, i64 2
  %25 = load ptr, ptr %24, align 8
  %26 = invoke noundef ptr %25(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 0)
          to label %27 unwind label %58

27:                                               ; preds = %22
  invoke void @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_9XalanNodeERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef nonnull align 8 dereferenceable(36) %21)
          to label %28 unwind label %58

28:                                               ; preds = %27
  %29 = getelementptr inbounds %"class.xalanc_1_10::ExecutionContext", ptr %1, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !63
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %21, i64 0, i32 1
  %32 = load i64, ptr %31, align 8, !tbaa !65
  %33 = icmp eq i64 %32, 0
  %34 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %21, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8
  %36 = select i1 %33, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %35
  %37 = invoke noundef double @_ZN11xalanc_1_1018WideStringToDoubleEPKtRN11xercesc_2_713MemoryManagerE(ptr noundef %36, ptr noundef nonnull align 8 dereferenceable(8) %30)
          to label %38 unwind label %60

38:                                               ; preds = %28
  %39 = load i32, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, align 8, !tbaa !67
  %40 = bitcast double %37 to i64
  %41 = trunc i64 %40 to i32
  %42 = icmp eq i32 %39, %41
  %43 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, i64 0, i32 1), align 4
  %44 = lshr i64 %40, 32
  %45 = trunc i64 %44 to i32
  %46 = icmp eq i32 %43, %45
  %47 = select i1 %42, i1 %46, i1 false
  br i1 %47, label %116, label %48

48:                                               ; preds = %38
  %49 = load ptr, ptr %10, align 8, !tbaa !56
  invoke void @_ZN11xalanc_1_1018MutableNodeRefList7addNodeEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(44) %49, ptr noundef nonnull %26)
          to label %50 unwind label %60

50:                                               ; preds = %48
  %51 = icmp eq i32 %9, 1
  br i1 %51, label %116, label %52

52:                                               ; preds = %50
  %53 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %21, i64 0, i32 1
  br label %62

54:                                               ; preds = %133
  %55 = landingpad { ptr, i32 }
          cleanup
  br label %153

56:                                               ; preds = %17
  %57 = landingpad { ptr, i32 }
          cleanup
  br label %153

58:                                               ; preds = %27, %22
  %59 = landingpad { ptr, i32 }
          cleanup
  br label %124

60:                                               ; preds = %28, %48
  %61 = landingpad { ptr, i32 }
          cleanup
  br label %124

62:                                               ; preds = %111, %52
  %63 = phi i32 [ 1, %52 ], [ %113, %111 ]
  %64 = phi double [ %37, %52 ], [ %112, %111 ]
  %65 = load ptr, ptr %2, align 8, !tbaa !49
  %66 = getelementptr inbounds ptr, ptr %65, i64 2
  %67 = load ptr, ptr %66, align 8
  %68 = invoke noundef ptr %67(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %63)
          to label %69 unwind label %95

69:                                               ; preds = %62
  %70 = load i64, ptr %31, align 8, !tbaa !65
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %69
  %73 = load i64, ptr %31, align 8, !tbaa !65
  %74 = sub i64 %73, %70
  store i64 %74, ptr %31, align 8, !tbaa !65
  br label %75

75:                                               ; preds = %72, %69
  store i32 0, ptr %53, align 8, !tbaa !68
  invoke void @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_9XalanNodeERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %68, ptr noundef nonnull align 8 dereferenceable(36) %21)
          to label %76 unwind label %95

76:                                               ; preds = %75
  %77 = load ptr, ptr %29, align 8, !tbaa !63
  %78 = load i64, ptr %31, align 8, !tbaa !65
  %79 = icmp eq i64 %78, 0
  %80 = load ptr, ptr %34, align 8
  %81 = select i1 %79, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %80
  %82 = invoke noundef double @_ZN11xalanc_1_1018WideStringToDoubleEPKtRN11xercesc_2_713MemoryManagerE(ptr noundef %81, ptr noundef nonnull align 8 dereferenceable(8) %77)
          to label %83 unwind label %97

83:                                               ; preds = %76
  %84 = load i32, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, align 8, !tbaa !67
  %85 = bitcast double %82 to i64
  %86 = trunc i64 %85 to i32
  %87 = icmp eq i32 %84, %86
  %88 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, i64 0, i32 1), align 4
  %89 = lshr i64 %85, 32
  %90 = trunc i64 %89 to i32
  %91 = icmp eq i32 %88, %90
  %92 = select i1 %87, i1 %91, i1 false
  br i1 %92, label %93, label %99

93:                                               ; preds = %83
  %94 = load ptr, ptr %10, align 8, !tbaa !56
  invoke void @_ZN11xalanc_1_1018MutableNodeRefList5clearEv(ptr noundef nonnull align 8 dereferenceable(44) %94)
          to label %111 unwind label %97

95:                                               ; preds = %75, %62
  %96 = landingpad { ptr, i32 }
          cleanup
  br label %124

97:                                               ; preds = %76, %109, %107, %104, %102, %99, %93
  %98 = landingpad { ptr, i32 }
          cleanup
  br label %124

99:                                               ; preds = %83
  %100 = invoke noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport5equalEdd(double noundef %82, double noundef %64)
          to label %101 unwind label %97

101:                                              ; preds = %99
  br i1 %100, label %102, label %104

102:                                              ; preds = %101
  %103 = load ptr, ptr %10, align 8, !tbaa !56
  invoke void @_ZN11xalanc_1_1018MutableNodeRefList17addNodeInDocOrderEPNS_9XalanNodeERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(44) %103, ptr noundef nonnull %68, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %111 unwind label %97

104:                                              ; preds = %101
  %105 = invoke noundef zeroext i1 %3(double noundef %82, double noundef %64)
          to label %106 unwind label %97

106:                                              ; preds = %104
  br i1 %105, label %107, label %111

107:                                              ; preds = %106
  %108 = load ptr, ptr %10, align 8, !tbaa !56
  invoke void @_ZN11xalanc_1_1018MutableNodeRefList5clearEv(ptr noundef nonnull align 8 dereferenceable(44) %108)
          to label %109 unwind label %97

109:                                              ; preds = %107
  %110 = load ptr, ptr %10, align 8, !tbaa !56
  invoke void @_ZN11xalanc_1_1018MutableNodeRefList7addNodeEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(44) %110, ptr noundef nonnull %68)
          to label %111 unwind label %97

111:                                              ; preds = %109, %102, %106, %93
  %112 = phi double [ %64, %93 ], [ %64, %106 ], [ %64, %102 ], [ %82, %109 ]
  %113 = add nuw i32 %63, 1
  %114 = icmp eq i32 %113, %9
  %115 = select i1 %92, i1 true, i1 %114
  br i1 %115, label %116, label %62, !llvm.loop !71

116:                                              ; preds = %111, %50, %38
  %117 = load ptr, ptr %1, align 8, !tbaa !49
  %118 = getelementptr inbounds ptr, ptr %117, i64 24
  %119 = load ptr, ptr %118, align 8
  %120 = invoke noundef zeroext i1 %119(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %21)
          to label %133 unwind label %121

121:                                              ; preds = %116
  %122 = landingpad { ptr, i32 }
          catch ptr null
  %123 = extractvalue { ptr, i32 } %122, 0
  tail call void @__clang_call_terminate(ptr %123) #10
  unreachable

124:                                              ; preds = %58, %95, %97, %60
  %125 = phi { ptr, i32 } [ %59, %58 ], [ %61, %60 ], [ %98, %97 ], [ %96, %95 ]
  %126 = load ptr, ptr %1, align 8, !tbaa !49
  %127 = getelementptr inbounds ptr, ptr %126, i64 24
  %128 = load ptr, ptr %127, align 8
  %129 = invoke noundef zeroext i1 %128(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %21)
          to label %153 unwind label %130

130:                                              ; preds = %124
  %131 = landingpad { ptr, i32 }
          catch ptr null
  %132 = extractvalue { ptr, i32 } %131, 0
  tail call void @__clang_call_terminate(ptr %132) #10
  unreachable

133:                                              ; preds = %116, %4
  %134 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %1, i64 0, i32 1
  %135 = load ptr, ptr %134, align 8, !tbaa !74
  %136 = load ptr, ptr %135, align 8, !tbaa !49
  %137 = getelementptr inbounds ptr, ptr %136, i64 4
  %138 = load ptr, ptr %137, align 8
  invoke void %138(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %135, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %139 unwind label %54

139:                                              ; preds = %133
  %140 = load ptr, ptr %10, align 8, !tbaa !56
  %141 = icmp eq ptr %140, null
  br i1 %141, label %152, label %142

142:                                              ; preds = %139
  %143 = load ptr, ptr %5, align 8, !tbaa !54
  %144 = load ptr, ptr %143, align 8, !tbaa !49
  %145 = getelementptr inbounds ptr, ptr %144, i64 22
  %146 = load ptr, ptr %145, align 8
  %147 = invoke noundef zeroext i1 %146(ptr noundef nonnull align 8 dereferenceable(24) %143, ptr noundef nonnull %140)
          to label %148 unwind label %149

148:                                              ; preds = %142
  store ptr null, ptr %10, align 8, !tbaa !56
  br label %152

149:                                              ; preds = %142
  %150 = landingpad { ptr, i32 }
          catch ptr null
  %151 = extractvalue { ptr, i32 } %150, 0
  call void @__clang_call_terminate(ptr %151) #10
  unreachable

152:                                              ; preds = %139, %148
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  ret void

153:                                              ; preds = %56, %124, %54
  %154 = phi { ptr, i32 } [ %55, %54 ], [ %57, %56 ], [ %125, %124 ]
  %155 = load ptr, ptr %10, align 8, !tbaa !56
  %156 = icmp eq ptr %155, null
  br i1 %156, label %167, label %157

157:                                              ; preds = %153
  %158 = load ptr, ptr %5, align 8, !tbaa !54
  %159 = load ptr, ptr %158, align 8, !tbaa !49
  %160 = getelementptr inbounds ptr, ptr %159, i64 22
  %161 = load ptr, ptr %160, align 8
  %162 = invoke noundef zeroext i1 %161(ptr noundef nonnull align 8 dereferenceable(24) %158, ptr noundef nonnull %155)
          to label %163 unwind label %164

163:                                              ; preds = %157
  store ptr null, ptr %10, align 8, !tbaa !56
  br label %167

164:                                              ; preds = %157
  %165 = landingpad { ptr, i32 }
          catch ptr null
  %166 = extractvalue { ptr, i32 } %165, 0
  call void @__clang_call_terminate(ptr %166) #10
  unreachable

167:                                              ; preds = %153, %163
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  resume { ptr, i32 } %154
}

declare noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport11greaterThanEdd(double noundef, double noundef) #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1025XalanEXSLTFunctionHighest8getErrorERNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #0 align 2 !prof !42 {
  %3 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKtS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef 145, ptr noundef nonnull @_ZN11xalanc_1_10L21s_highestFunctionNameE, ptr noundef null, ptr noundef null, ptr noundef null)
  ret ptr %3
}

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKtS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1024XalanEXSLTFunctionLowest7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %4, ptr noundef %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !42 {
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !43
  %9 = icmp eq i64 %8, 1
  br i1 %9, label %41, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %2, align 8, !tbaa !49
  %12 = getelementptr inbounds ptr, ptr %11, i64 23
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef nonnull align 8 dereferenceable(36) ptr %13(ptr noundef nonnull align 8 dereferenceable(24) %2)
  %15 = load ptr, ptr %1, align 8, !tbaa !49
  %16 = getelementptr inbounds ptr, ptr %15, i64 8
  %17 = load ptr, ptr %16, align 8
  %18 = invoke noundef nonnull align 8 dereferenceable(36) ptr %17(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(36) %14)
          to label %19 unwind label %31

19:                                               ; preds = %10
  %20 = load ptr, ptr %2, align 8, !tbaa !49
  %21 = getelementptr inbounds ptr, ptr %20, i64 2
  %22 = load ptr, ptr %21, align 8
  invoke void %22(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %18, ptr noundef %3, ptr noundef %5)
          to label %23 unwind label %31

23:                                               ; preds = %19
  %24 = load ptr, ptr %2, align 8, !tbaa !49
  %25 = getelementptr inbounds ptr, ptr %24, i64 24
  %26 = load ptr, ptr %25, align 8
  %27 = invoke noundef zeroext i1 %26(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %14)
          to label %41 unwind label %28

28:                                               ; preds = %23
  %29 = landingpad { ptr, i32 }
          catch ptr null
  %30 = extractvalue { ptr, i32 } %29, 0
  tail call void @__clang_call_terminate(ptr %30) #10
  unreachable

31:                                               ; preds = %19, %10
  %32 = landingpad { ptr, i32 }
          cleanup
  %33 = load ptr, ptr %2, align 8, !tbaa !49
  %34 = getelementptr inbounds ptr, ptr %33, i64 24
  %35 = load ptr, ptr %34, align 8
  %36 = invoke noundef zeroext i1 %35(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %14)
          to label %40 unwind label %37

37:                                               ; preds = %31
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  tail call void @__clang_call_terminate(ptr %39) #10
  unreachable

40:                                               ; preds = %31
  resume { ptr, i32 } %32

41:                                               ; preds = %23, %6
  %42 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !51
  %44 = load ptr, ptr %43, align 8, !tbaa !52
  %45 = load ptr, ptr %44, align 8, !tbaa !49
  %46 = getelementptr inbounds ptr, ptr %45, i64 13
  %47 = load ptr, ptr %46, align 8
  %48 = tail call noundef nonnull align 8 dereferenceable(8) ptr %47(ptr noundef nonnull align 8 dereferenceable(24) %44)
  tail call void @_ZN11xalanc_1_109findNodesIPFbddEEENS_10XObjectPtrERNS_21XPathExecutionContextERKNS_15NodeRefListBaseET_(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(8) %48, ptr noundef nonnull @_ZN11xalanc_1_1013DoubleSupport8lessThanEdd)
  ret void
}

declare noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport8lessThanEdd(double noundef, double noundef) #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1024XalanEXSLTFunctionLowest8getErrorERNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #0 align 2 !prof !42 {
  %3 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKtS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef 145, ptr noundef nonnull @_ZN11xalanc_1_10L20s_lowestFunctionNameE, ptr noundef null, ptr noundef null, ptr noundef null)
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1021XalanEXSLTFunctionMin7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %4, ptr noundef %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !42 {
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !43
  %9 = icmp eq i64 %8, 1
  br i1 %9, label %41, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %2, align 8, !tbaa !49
  %12 = getelementptr inbounds ptr, ptr %11, i64 23
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef nonnull align 8 dereferenceable(36) ptr %13(ptr noundef nonnull align 8 dereferenceable(24) %2)
  %15 = load ptr, ptr %1, align 8, !tbaa !49
  %16 = getelementptr inbounds ptr, ptr %15, i64 8
  %17 = load ptr, ptr %16, align 8
  %18 = invoke noundef nonnull align 8 dereferenceable(36) ptr %17(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(36) %14)
          to label %19 unwind label %31

19:                                               ; preds = %10
  %20 = load ptr, ptr %2, align 8, !tbaa !49
  %21 = getelementptr inbounds ptr, ptr %20, i64 2
  %22 = load ptr, ptr %21, align 8
  invoke void %22(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %18, ptr noundef %3, ptr noundef %5)
          to label %23 unwind label %31

23:                                               ; preds = %19
  %24 = load ptr, ptr %2, align 8, !tbaa !49
  %25 = getelementptr inbounds ptr, ptr %24, i64 24
  %26 = load ptr, ptr %25, align 8
  %27 = invoke noundef zeroext i1 %26(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %14)
          to label %41 unwind label %28

28:                                               ; preds = %23
  %29 = landingpad { ptr, i32 }
          catch ptr null
  %30 = extractvalue { ptr, i32 } %29, 0
  tail call void @__clang_call_terminate(ptr %30) #10
  unreachable

31:                                               ; preds = %19, %10
  %32 = landingpad { ptr, i32 }
          cleanup
  %33 = load ptr, ptr %2, align 8, !tbaa !49
  %34 = getelementptr inbounds ptr, ptr %33, i64 24
  %35 = load ptr, ptr %34, align 8
  %36 = invoke noundef zeroext i1 %35(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %14)
          to label %40 unwind label %37

37:                                               ; preds = %31
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  tail call void @__clang_call_terminate(ptr %39) #10
  unreachable

40:                                               ; preds = %31
  resume { ptr, i32 } %32

41:                                               ; preds = %23, %6
  %42 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !51
  %44 = load ptr, ptr %43, align 8, !tbaa !52
  %45 = load ptr, ptr %44, align 8, !tbaa !49
  %46 = getelementptr inbounds ptr, ptr %45, i64 13
  %47 = load ptr, ptr %46, align 8
  %48 = tail call noundef nonnull align 8 dereferenceable(8) ptr %47(ptr noundef nonnull align 8 dereferenceable(24) %44)
  tail call void @_ZN11xalanc_1_109findValueIPFbddEEENS_10XObjectPtrERNS_21XPathExecutionContextERKNS_15NodeRefListBaseET_(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(8) %48, ptr noundef nonnull @_ZN11xalanc_1_1013DoubleSupport8lessThanEdd)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109findValueIPFbddEEENS_10XObjectPtrERNS_21XPathExecutionContextERKNS_15NodeRefListBaseET_(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 !prof !42 {
  %5 = load ptr, ptr %2, align 8, !tbaa !49
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef i32 %7(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %4
  %11 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %1, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !74
  %13 = load double, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, align 8, !tbaa !67
  %14 = load ptr, ptr %12, align 8, !tbaa !49
  %15 = getelementptr inbounds ptr, ptr %14, i64 7
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %12, double noundef %13)
  br label %114

17:                                               ; preds = %4
  %18 = load ptr, ptr %1, align 8, !tbaa !49
  %19 = getelementptr inbounds ptr, ptr %18, i64 23
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef nonnull align 8 dereferenceable(36) ptr %20(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %22 = load ptr, ptr %2, align 8, !tbaa !49
  %23 = getelementptr inbounds ptr, ptr %22, i64 2
  %24 = load ptr, ptr %23, align 8
  %25 = invoke noundef ptr %24(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 0)
          to label %26 unwind label %41

26:                                               ; preds = %17
  invoke void @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_9XalanNodeERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef nonnull align 8 dereferenceable(36) %21)
          to label %27 unwind label %41

27:                                               ; preds = %26
  %28 = getelementptr inbounds %"class.xalanc_1_10::ExecutionContext", ptr %1, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !63
  %30 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %21, i64 0, i32 1
  %31 = load i64, ptr %30, align 8, !tbaa !65
  %32 = icmp eq i64 %31, 0
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %21, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8
  %35 = select i1 %32, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %34
  %36 = invoke noundef double @_ZN11xalanc_1_1018WideStringToDoubleEPKtRN11xercesc_2_713MemoryManagerE(ptr noundef %35, ptr noundef nonnull align 8 dereferenceable(8) %29)
          to label %37 unwind label %43

37:                                               ; preds = %27
  %38 = icmp eq i32 %8, 1
  br i1 %38, label %89, label %39

39:                                               ; preds = %37
  %40 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %21, i64 0, i32 1
  br label %45

41:                                               ; preds = %26, %17
  %42 = landingpad { ptr, i32 }
          cleanup
  br label %104

43:                                               ; preds = %27, %89
  %44 = landingpad { ptr, i32 }
          cleanup
  br label %104

45:                                               ; preds = %84, %39
  %46 = phi i32 [ 1, %39 ], [ %86, %84 ]
  %47 = phi double [ %36, %39 ], [ %85, %84 ]
  %48 = load i64, ptr %30, align 8, !tbaa !65
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %45
  %51 = load i64, ptr %30, align 8, !tbaa !65
  %52 = sub i64 %51, %48
  store i64 %52, ptr %30, align 8, !tbaa !65
  br label %53

53:                                               ; preds = %50, %45
  store i32 0, ptr %40, align 8, !tbaa !68
  %54 = load ptr, ptr %2, align 8, !tbaa !49
  %55 = getelementptr inbounds ptr, ptr %54, i64 2
  %56 = load ptr, ptr %55, align 8
  %57 = invoke noundef ptr %56(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %46)
          to label %58 unwind label %76

58:                                               ; preds = %53
  invoke void @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_9XalanNodeERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %57, ptr noundef nonnull align 8 dereferenceable(36) %21)
          to label %59 unwind label %76

59:                                               ; preds = %58
  %60 = load ptr, ptr %28, align 8, !tbaa !63
  %61 = load i64, ptr %30, align 8, !tbaa !65
  %62 = icmp eq i64 %61, 0
  %63 = load ptr, ptr %33, align 8
  %64 = select i1 %62, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %63
  %65 = invoke noundef double @_ZN11xalanc_1_1018WideStringToDoubleEPKtRN11xercesc_2_713MemoryManagerE(ptr noundef %64, ptr noundef nonnull align 8 dereferenceable(8) %60)
          to label %66 unwind label %78

66:                                               ; preds = %59
  %67 = load i32, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, align 8, !tbaa !67
  %68 = bitcast double %65 to i64
  %69 = trunc i64 %68 to i32
  %70 = icmp eq i32 %67, %69
  %71 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, i64 0, i32 1), align 4
  %72 = lshr i64 %68, 32
  %73 = trunc i64 %72 to i32
  %74 = icmp eq i32 %71, %73
  %75 = select i1 %70, i1 %74, i1 false
  br i1 %75, label %84, label %80

76:                                               ; preds = %58, %53
  %77 = landingpad { ptr, i32 }
          cleanup
  br label %104

78:                                               ; preds = %59, %80
  %79 = landingpad { ptr, i32 }
          cleanup
  br label %104

80:                                               ; preds = %66
  %81 = invoke noundef zeroext i1 %3(double noundef %65, double noundef %47)
          to label %82 unwind label %78

82:                                               ; preds = %80
  %83 = select i1 %81, double %65, double %47
  br label %84

84:                                               ; preds = %66, %82
  %85 = phi double [ %83, %82 ], [ %65, %66 ]
  %86 = add nuw i32 %46, 1
  %87 = icmp eq i32 %86, %8
  %88 = select i1 %75, i1 true, i1 %87
  br i1 %88, label %89, label %45, !llvm.loop !76

89:                                               ; preds = %84, %37
  %90 = phi double [ %36, %37 ], [ %85, %84 ]
  %91 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %1, i64 0, i32 1
  %92 = load ptr, ptr %91, align 8, !tbaa !74
  %93 = load ptr, ptr %92, align 8, !tbaa !49
  %94 = getelementptr inbounds ptr, ptr %93, i64 7
  %95 = load ptr, ptr %94, align 8
  invoke void %95(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %92, double noundef %90)
          to label %96 unwind label %43

96:                                               ; preds = %89
  %97 = load ptr, ptr %1, align 8, !tbaa !49
  %98 = getelementptr inbounds ptr, ptr %97, i64 24
  %99 = load ptr, ptr %98, align 8
  %100 = invoke noundef zeroext i1 %99(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %21)
          to label %114 unwind label %101

101:                                              ; preds = %96
  %102 = landingpad { ptr, i32 }
          catch ptr null
  %103 = extractvalue { ptr, i32 } %102, 0
  tail call void @__clang_call_terminate(ptr %103) #10
  unreachable

104:                                              ; preds = %41, %76, %78, %43
  %105 = phi { ptr, i32 } [ %42, %41 ], [ %44, %43 ], [ %79, %78 ], [ %77, %76 ]
  %106 = load ptr, ptr %1, align 8, !tbaa !49
  %107 = getelementptr inbounds ptr, ptr %106, i64 24
  %108 = load ptr, ptr %107, align 8
  %109 = invoke noundef zeroext i1 %108(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %21)
          to label %113 unwind label %110

110:                                              ; preds = %104
  %111 = landingpad { ptr, i32 }
          catch ptr null
  %112 = extractvalue { ptr, i32 } %111, 0
  tail call void @__clang_call_terminate(ptr %112) #10
  unreachable

113:                                              ; preds = %104
  resume { ptr, i32 } %105

114:                                              ; preds = %96, %10
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XalanEXSLTFunctionMin8getErrorERNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #0 align 2 !prof !42 {
  %3 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKtS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef 145, ptr noundef nonnull @_ZN11xalanc_1_10L17s_minFunctionNameE, ptr noundef null, ptr noundef null, ptr noundef null)
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1021XalanEXSLTFunctionMax7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %4, ptr noundef %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !42 {
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !43
  %9 = icmp eq i64 %8, 1
  br i1 %9, label %41, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %2, align 8, !tbaa !49
  %12 = getelementptr inbounds ptr, ptr %11, i64 23
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef nonnull align 8 dereferenceable(36) ptr %13(ptr noundef nonnull align 8 dereferenceable(24) %2)
  %15 = load ptr, ptr %1, align 8, !tbaa !49
  %16 = getelementptr inbounds ptr, ptr %15, i64 8
  %17 = load ptr, ptr %16, align 8
  %18 = invoke noundef nonnull align 8 dereferenceable(36) ptr %17(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(36) %14)
          to label %19 unwind label %31

19:                                               ; preds = %10
  %20 = load ptr, ptr %2, align 8, !tbaa !49
  %21 = getelementptr inbounds ptr, ptr %20, i64 2
  %22 = load ptr, ptr %21, align 8
  invoke void %22(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %18, ptr noundef %3, ptr noundef %5)
          to label %23 unwind label %31

23:                                               ; preds = %19
  %24 = load ptr, ptr %2, align 8, !tbaa !49
  %25 = getelementptr inbounds ptr, ptr %24, i64 24
  %26 = load ptr, ptr %25, align 8
  %27 = invoke noundef zeroext i1 %26(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %14)
          to label %41 unwind label %28

28:                                               ; preds = %23
  %29 = landingpad { ptr, i32 }
          catch ptr null
  %30 = extractvalue { ptr, i32 } %29, 0
  tail call void @__clang_call_terminate(ptr %30) #10
  unreachable

31:                                               ; preds = %19, %10
  %32 = landingpad { ptr, i32 }
          cleanup
  %33 = load ptr, ptr %2, align 8, !tbaa !49
  %34 = getelementptr inbounds ptr, ptr %33, i64 24
  %35 = load ptr, ptr %34, align 8
  %36 = invoke noundef zeroext i1 %35(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %14)
          to label %40 unwind label %37

37:                                               ; preds = %31
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  tail call void @__clang_call_terminate(ptr %39) #10
  unreachable

40:                                               ; preds = %31
  resume { ptr, i32 } %32

41:                                               ; preds = %23, %6
  %42 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !51
  %44 = load ptr, ptr %43, align 8, !tbaa !52
  %45 = load ptr, ptr %44, align 8, !tbaa !49
  %46 = getelementptr inbounds ptr, ptr %45, i64 13
  %47 = load ptr, ptr %46, align 8
  %48 = tail call noundef nonnull align 8 dereferenceable(8) ptr %47(ptr noundef nonnull align 8 dereferenceable(24) %44)
  tail call void @_ZN11xalanc_1_109findValueIPFbddEEENS_10XObjectPtrERNS_21XPathExecutionContextERKNS_15NodeRefListBaseET_(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(8) %48, ptr noundef nonnull @_ZN11xalanc_1_1013DoubleSupport11greaterThanEdd)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XalanEXSLTFunctionMax8getErrorERNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #0 align 2 !prof !42 {
  %3 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKtS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef 145, ptr noundef nonnull @_ZN11xalanc_1_10L17s_maxFunctionNameE, ptr noundef null, ptr noundef null, ptr noundef null)
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1021XalanEXSLTFunctionAbs7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %4, ptr noundef %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !42 {
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !43
  %9 = icmp eq i64 %8, 1
  br i1 %9, label %41, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %2, align 8, !tbaa !49
  %12 = getelementptr inbounds ptr, ptr %11, i64 23
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef nonnull align 8 dereferenceable(36) ptr %13(ptr noundef nonnull align 8 dereferenceable(24) %2)
  %15 = load ptr, ptr %1, align 8, !tbaa !49
  %16 = getelementptr inbounds ptr, ptr %15, i64 8
  %17 = load ptr, ptr %16, align 8
  %18 = invoke noundef nonnull align 8 dereferenceable(36) ptr %17(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(36) %14)
          to label %19 unwind label %31

19:                                               ; preds = %10
  %20 = load ptr, ptr %2, align 8, !tbaa !49
  %21 = getelementptr inbounds ptr, ptr %20, i64 2
  %22 = load ptr, ptr %21, align 8
  invoke void %22(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %18, ptr noundef %3, ptr noundef %5)
          to label %23 unwind label %31

23:                                               ; preds = %19
  %24 = load ptr, ptr %2, align 8, !tbaa !49
  %25 = getelementptr inbounds ptr, ptr %24, i64 24
  %26 = load ptr, ptr %25, align 8
  %27 = invoke noundef zeroext i1 %26(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %14)
          to label %41 unwind label %28

28:                                               ; preds = %23
  %29 = landingpad { ptr, i32 }
          catch ptr null
  %30 = extractvalue { ptr, i32 } %29, 0
  tail call void @__clang_call_terminate(ptr %30) #10
  unreachable

31:                                               ; preds = %19, %10
  %32 = landingpad { ptr, i32 }
          cleanup
  %33 = load ptr, ptr %2, align 8, !tbaa !49
  %34 = getelementptr inbounds ptr, ptr %33, i64 24
  %35 = load ptr, ptr %34, align 8
  %36 = invoke noundef zeroext i1 %35(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %14)
          to label %40 unwind label %37

37:                                               ; preds = %31
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  tail call void @__clang_call_terminate(ptr %39) #10
  unreachable

40:                                               ; preds = %31
  resume { ptr, i32 } %32

41:                                               ; preds = %23, %6
  %42 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %2, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !74
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !51
  %46 = load ptr, ptr %45, align 8, !tbaa !52
  %47 = load ptr, ptr %46, align 8, !tbaa !49
  %48 = getelementptr inbounds ptr, ptr %47, i64 6
  %49 = load ptr, ptr %48, align 8
  %50 = tail call noundef double %49(ptr noundef nonnull align 8 dereferenceable(24) %46)
  %51 = tail call noundef double @_ZN11xalanc_1_1013DoubleSupport3absEd(double noundef %50)
  %52 = load ptr, ptr %43, align 8, !tbaa !49
  %53 = getelementptr inbounds ptr, ptr %52, i64 7
  %54 = load ptr, ptr %53, align 8
  tail call void %54(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %43, double noundef %51)
  ret void
}

declare noundef double @_ZN11xalanc_1_1013DoubleSupport3absEd(double noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XalanEXSLTFunctionAbs8getErrorERNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #0 align 2 !prof !42 {
  %3 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKtS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef 145, ptr noundef nonnull @_ZN11xalanc_1_10L17s_absFunctionNameE, ptr noundef null, ptr noundef null, ptr noundef null)
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1024XalanEXSLTFunctionRandom7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %4, ptr noundef %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !42 {
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !43
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %41, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %2, align 8, !tbaa !49
  %12 = getelementptr inbounds ptr, ptr %11, i64 23
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef nonnull align 8 dereferenceable(36) ptr %13(ptr noundef nonnull align 8 dereferenceable(24) %2)
  %15 = load ptr, ptr %1, align 8, !tbaa !49
  %16 = getelementptr inbounds ptr, ptr %15, i64 8
  %17 = load ptr, ptr %16, align 8
  %18 = invoke noundef nonnull align 8 dereferenceable(36) ptr %17(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(36) %14)
          to label %19 unwind label %31

19:                                               ; preds = %10
  %20 = load ptr, ptr %2, align 8, !tbaa !49
  %21 = getelementptr inbounds ptr, ptr %20, i64 2
  %22 = load ptr, ptr %21, align 8
  invoke void %22(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %18, ptr noundef %3, ptr noundef %5)
          to label %23 unwind label %31

23:                                               ; preds = %19
  %24 = load ptr, ptr %2, align 8, !tbaa !49
  %25 = getelementptr inbounds ptr, ptr %24, i64 24
  %26 = load ptr, ptr %25, align 8
  %27 = invoke noundef zeroext i1 %26(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %14)
          to label %41 unwind label %28

28:                                               ; preds = %23
  %29 = landingpad { ptr, i32 }
          catch ptr null
  %30 = extractvalue { ptr, i32 } %29, 0
  tail call void @__clang_call_terminate(ptr %30) #10
  unreachable

31:                                               ; preds = %19, %10
  %32 = landingpad { ptr, i32 }
          cleanup
  %33 = load ptr, ptr %2, align 8, !tbaa !49
  %34 = getelementptr inbounds ptr, ptr %33, i64 24
  %35 = load ptr, ptr %34, align 8
  %36 = invoke noundef zeroext i1 %35(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %14)
          to label %40 unwind label %37

37:                                               ; preds = %31
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  tail call void @__clang_call_terminate(ptr %39) #10
  unreachable

40:                                               ; preds = %31
  resume { ptr, i32 } %32

41:                                               ; preds = %23, %6
  %42 = tail call i32 @rand() #11
  %43 = sitofp i32 %42 to double
  %44 = fdiv double %43, 0x41DFFFFFFFC00000
  %45 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %2, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !74
  %47 = load ptr, ptr %46, align 8, !tbaa !49
  %48 = getelementptr inbounds ptr, ptr %47, i64 7
  %49 = load ptr, ptr %48, align 8
  tail call void %49(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %46, double noundef %44)
  ret void
}

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1024XalanEXSLTFunctionRandom8getErrorERNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #0 align 2 !prof !42 {
  %3 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKtS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef 146, ptr noundef nonnull @_ZN11xalanc_1_10L20s_randomFunctionNameE, ptr noundef null, ptr noundef null, ptr noundef null)
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1022XalanEXSLTFunctionAcos7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %4, ptr noundef %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !42 {
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !43
  %9 = icmp eq i64 %8, 1
  br i1 %9, label %41, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %2, align 8, !tbaa !49
  %12 = getelementptr inbounds ptr, ptr %11, i64 23
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef nonnull align 8 dereferenceable(36) ptr %13(ptr noundef nonnull align 8 dereferenceable(24) %2)
  %15 = load ptr, ptr %1, align 8, !tbaa !49
  %16 = getelementptr inbounds ptr, ptr %15, i64 8
  %17 = load ptr, ptr %16, align 8
  %18 = invoke noundef nonnull align 8 dereferenceable(36) ptr %17(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(36) %14)
          to label %19 unwind label %31

19:                                               ; preds = %10
  %20 = load ptr, ptr %2, align 8, !tbaa !49
  %21 = getelementptr inbounds ptr, ptr %20, i64 2
  %22 = load ptr, ptr %21, align 8
  invoke void %22(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %18, ptr noundef %3, ptr noundef %5)
          to label %23 unwind label %31

23:                                               ; preds = %19
  %24 = load ptr, ptr %2, align 8, !tbaa !49
  %25 = getelementptr inbounds ptr, ptr %24, i64 24
  %26 = load ptr, ptr %25, align 8
  %27 = invoke noundef zeroext i1 %26(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %14)
          to label %41 unwind label %28

28:                                               ; preds = %23
  %29 = landingpad { ptr, i32 }
          catch ptr null
  %30 = extractvalue { ptr, i32 } %29, 0
  tail call void @__clang_call_terminate(ptr %30) #10
  unreachable

31:                                               ; preds = %19, %10
  %32 = landingpad { ptr, i32 }
          cleanup
  %33 = load ptr, ptr %2, align 8, !tbaa !49
  %34 = getelementptr inbounds ptr, ptr %33, i64 24
  %35 = load ptr, ptr %34, align 8
  %36 = invoke noundef zeroext i1 %35(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %14)
          to label %40 unwind label %37

37:                                               ; preds = %31
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  tail call void @__clang_call_terminate(ptr %39) #10
  unreachable

40:                                               ; preds = %31
  resume { ptr, i32 } %32

41:                                               ; preds = %23, %6
  %42 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %2, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !74
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !51
  %46 = load ptr, ptr %45, align 8, !tbaa !52
  %47 = load ptr, ptr %46, align 8, !tbaa !49
  %48 = getelementptr inbounds ptr, ptr %47, i64 6
  %49 = load ptr, ptr %48, align 8
  %50 = tail call noundef double %49(ptr noundef nonnull align 8 dereferenceable(24) %46)
  %51 = tail call double @acos(double noundef %50) #11
  %52 = load ptr, ptr %43, align 8, !tbaa !49
  %53 = getelementptr inbounds ptr, ptr %52, i64 7
  %54 = load ptr, ptr %53, align 8
  tail call void %54(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %43, double noundef %51)
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @acos(double noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1022XalanEXSLTFunctionAcos8getErrorERNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #0 align 2 !prof !42 {
  %3 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKtS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef 145, ptr noundef nonnull @_ZN11xalanc_1_10L18s_acosFunctionNameE, ptr noundef null, ptr noundef null, ptr noundef null)
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1022XalanEXSLTFunctionAsin7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %4, ptr noundef %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !42 {
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !43
  %9 = icmp eq i64 %8, 1
  br i1 %9, label %41, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %2, align 8, !tbaa !49
  %12 = getelementptr inbounds ptr, ptr %11, i64 23
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef nonnull align 8 dereferenceable(36) ptr %13(ptr noundef nonnull align 8 dereferenceable(24) %2)
  %15 = load ptr, ptr %1, align 8, !tbaa !49
  %16 = getelementptr inbounds ptr, ptr %15, i64 8
  %17 = load ptr, ptr %16, align 8
  %18 = invoke noundef nonnull align 8 dereferenceable(36) ptr %17(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(36) %14)
          to label %19 unwind label %31

19:                                               ; preds = %10
  %20 = load ptr, ptr %2, align 8, !tbaa !49
  %21 = getelementptr inbounds ptr, ptr %20, i64 2
  %22 = load ptr, ptr %21, align 8
  invoke void %22(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %18, ptr noundef %3, ptr noundef %5)
          to label %23 unwind label %31

23:                                               ; preds = %19
  %24 = load ptr, ptr %2, align 8, !tbaa !49
  %25 = getelementptr inbounds ptr, ptr %24, i64 24
  %26 = load ptr, ptr %25, align 8
  %27 = invoke noundef zeroext i1 %26(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %14)
          to label %41 unwind label %28

28:                                               ; preds = %23
  %29 = landingpad { ptr, i32 }
          catch ptr null
  %30 = extractvalue { ptr, i32 } %29, 0
  tail call void @__clang_call_terminate(ptr %30) #10
  unreachable

31:                                               ; preds = %19, %10
  %32 = landingpad { ptr, i32 }
          cleanup
  %33 = load ptr, ptr %2, align 8, !tbaa !49
  %34 = getelementptr inbounds ptr, ptr %33, i64 24
  %35 = load ptr, ptr %34, align 8
  %36 = invoke noundef zeroext i1 %35(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %14)
          to label %40 unwind label %37

37:                                               ; preds = %31
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  tail call void @__clang_call_terminate(ptr %39) #10
  unreachable

40:                                               ; preds = %31
  resume { ptr, i32 } %32

41:                                               ; preds = %23, %6
  %42 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %2, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !74
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !51
  %46 = load ptr, ptr %45, align 8, !tbaa !52
  %47 = load ptr, ptr %46, align 8, !tbaa !49
  %48 = getelementptr inbounds ptr, ptr %47, i64 6
  %49 = load ptr, ptr %48, align 8
  %50 = tail call noundef double %49(ptr noundef nonnull align 8 dereferenceable(24) %46)
  %51 = tail call double @asin(double noundef %50) #11
  %52 = load ptr, ptr %43, align 8, !tbaa !49
  %53 = getelementptr inbounds ptr, ptr %52, i64 7
  %54 = load ptr, ptr %53, align 8
  tail call void %54(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %43, double noundef %51)
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @asin(double noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1022XalanEXSLTFunctionAsin8getErrorERNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #0 align 2 !prof !42 {
  %3 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKtS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef 145, ptr noundef nonnull @_ZN11xalanc_1_10L18s_asinFunctionNameE, ptr noundef null, ptr noundef null, ptr noundef null)
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1022XalanEXSLTFunctionAtan7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %4, ptr noundef %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !42 {
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !43
  %9 = icmp eq i64 %8, 1
  br i1 %9, label %41, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %2, align 8, !tbaa !49
  %12 = getelementptr inbounds ptr, ptr %11, i64 23
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef nonnull align 8 dereferenceable(36) ptr %13(ptr noundef nonnull align 8 dereferenceable(24) %2)
  %15 = load ptr, ptr %1, align 8, !tbaa !49
  %16 = getelementptr inbounds ptr, ptr %15, i64 8
  %17 = load ptr, ptr %16, align 8
  %18 = invoke noundef nonnull align 8 dereferenceable(36) ptr %17(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(36) %14)
          to label %19 unwind label %31

19:                                               ; preds = %10
  %20 = load ptr, ptr %2, align 8, !tbaa !49
  %21 = getelementptr inbounds ptr, ptr %20, i64 2
  %22 = load ptr, ptr %21, align 8
  invoke void %22(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %18, ptr noundef %3, ptr noundef %5)
          to label %23 unwind label %31

23:                                               ; preds = %19
  %24 = load ptr, ptr %2, align 8, !tbaa !49
  %25 = getelementptr inbounds ptr, ptr %24, i64 24
  %26 = load ptr, ptr %25, align 8
  %27 = invoke noundef zeroext i1 %26(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %14)
          to label %41 unwind label %28

28:                                               ; preds = %23
  %29 = landingpad { ptr, i32 }
          catch ptr null
  %30 = extractvalue { ptr, i32 } %29, 0
  tail call void @__clang_call_terminate(ptr %30) #10
  unreachable

31:                                               ; preds = %19, %10
  %32 = landingpad { ptr, i32 }
          cleanup
  %33 = load ptr, ptr %2, align 8, !tbaa !49
  %34 = getelementptr inbounds ptr, ptr %33, i64 24
  %35 = load ptr, ptr %34, align 8
  %36 = invoke noundef zeroext i1 %35(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %14)
          to label %40 unwind label %37

37:                                               ; preds = %31
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  tail call void @__clang_call_terminate(ptr %39) #10
  unreachable

40:                                               ; preds = %31
  resume { ptr, i32 } %32

41:                                               ; preds = %23, %6
  %42 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %2, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !74
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !51
  %46 = load ptr, ptr %45, align 8, !tbaa !52
  %47 = load ptr, ptr %46, align 8, !tbaa !49
  %48 = getelementptr inbounds ptr, ptr %47, i64 6
  %49 = load ptr, ptr %48, align 8
  %50 = tail call noundef double %49(ptr noundef nonnull align 8 dereferenceable(24) %46)
  %51 = tail call double @atan(double noundef %50) #11
  %52 = load ptr, ptr %43, align 8, !tbaa !49
  %53 = getelementptr inbounds ptr, ptr %52, i64 7
  %54 = load ptr, ptr %53, align 8
  tail call void %54(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %43, double noundef %51)
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @atan(double noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1022XalanEXSLTFunctionAtan8getErrorERNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #0 align 2 !prof !42 {
  %3 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKtS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef 145, ptr noundef nonnull @_ZN11xalanc_1_10L18s_atanFunctionNameE, ptr noundef null, ptr noundef null, ptr noundef null)
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1023XalanEXSLTFunctionAtan27executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %4, ptr noundef %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !42 {
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !43
  %9 = icmp eq i64 %8, 2
  br i1 %9, label %41, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %2, align 8, !tbaa !49
  %12 = getelementptr inbounds ptr, ptr %11, i64 23
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef nonnull align 8 dereferenceable(36) ptr %13(ptr noundef nonnull align 8 dereferenceable(24) %2)
  %15 = load ptr, ptr %1, align 8, !tbaa !49
  %16 = getelementptr inbounds ptr, ptr %15, i64 8
  %17 = load ptr, ptr %16, align 8
  %18 = invoke noundef nonnull align 8 dereferenceable(36) ptr %17(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(36) %14)
          to label %19 unwind label %31

19:                                               ; preds = %10
  %20 = load ptr, ptr %2, align 8, !tbaa !49
  %21 = getelementptr inbounds ptr, ptr %20, i64 2
  %22 = load ptr, ptr %21, align 8
  invoke void %22(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %18, ptr noundef %3, ptr noundef %5)
          to label %23 unwind label %31

23:                                               ; preds = %19
  %24 = load ptr, ptr %2, align 8, !tbaa !49
  %25 = getelementptr inbounds ptr, ptr %24, i64 24
  %26 = load ptr, ptr %25, align 8
  %27 = invoke noundef zeroext i1 %26(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %14)
          to label %41 unwind label %28

28:                                               ; preds = %23
  %29 = landingpad { ptr, i32 }
          catch ptr null
  %30 = extractvalue { ptr, i32 } %29, 0
  tail call void @__clang_call_terminate(ptr %30) #10
  unreachable

31:                                               ; preds = %19, %10
  %32 = landingpad { ptr, i32 }
          cleanup
  %33 = load ptr, ptr %2, align 8, !tbaa !49
  %34 = getelementptr inbounds ptr, ptr %33, i64 24
  %35 = load ptr, ptr %34, align 8
  %36 = invoke noundef zeroext i1 %35(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %14)
          to label %40 unwind label %37

37:                                               ; preds = %31
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  tail call void @__clang_call_terminate(ptr %39) #10
  unreachable

40:                                               ; preds = %31
  resume { ptr, i32 } %32

41:                                               ; preds = %23, %6
  %42 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %2, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !74
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !51
  %46 = load ptr, ptr %45, align 8, !tbaa !52
  %47 = load ptr, ptr %46, align 8, !tbaa !49
  %48 = getelementptr inbounds ptr, ptr %47, i64 6
  %49 = load ptr, ptr %48, align 8
  %50 = tail call noundef double %49(ptr noundef nonnull align 8 dereferenceable(24) %46)
  %51 = load ptr, ptr %44, align 8, !tbaa !51
  %52 = getelementptr inbounds %"class.xalanc_1_10::XObjectPtr", ptr %51, i64 1
  %53 = load ptr, ptr %52, align 8, !tbaa !52
  %54 = load ptr, ptr %53, align 8, !tbaa !49
  %55 = getelementptr inbounds ptr, ptr %54, i64 6
  %56 = load ptr, ptr %55, align 8
  %57 = tail call noundef double %56(ptr noundef nonnull align 8 dereferenceable(24) %53)
  %58 = tail call double @atan2(double noundef %50, double noundef %57) #11
  %59 = load ptr, ptr %43, align 8, !tbaa !49
  %60 = getelementptr inbounds ptr, ptr %59, i64 7
  %61 = load ptr, ptr %60, align 8
  tail call void %61(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %43, double noundef %58)
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @atan2(double noundef, double noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1023XalanEXSLTFunctionAtan28getErrorERNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #0 align 2 !prof !42 {
  %3 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKtS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef 147, ptr noundef nonnull @_ZN11xalanc_1_10L19s_atan2FunctionNameE, ptr noundef null, ptr noundef null, ptr noundef null)
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_109doConvertERNS_21XPathExecutionContextEPKdmd(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %1, ptr nocapture noundef readonly %2, i64 noundef %3, double noundef %4) local_unnamed_addr #0 !prof !42 {
  %6 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !74
  %8 = uitofp i64 %3 to double
  %9 = fcmp oge double %8, %4
  %10 = select i1 %9, double %4, double %8
  %11 = fptoui double %10 to i32
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds double, ptr %2, i64 %12
  %14 = load double, ptr %13, align 8, !tbaa !77
  %15 = load ptr, ptr %7, align 8, !tbaa !49
  %16 = getelementptr inbounds ptr, ptr %15, i64 7
  %17 = load ptr, ptr %16, align 8
  tail call void %17(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %7, double noundef %14)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1026XalanEXSLTFunctionConstant7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %4, ptr noundef %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !42 {
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !43
  %9 = icmp eq i64 %8, 2
  br i1 %9, label %41, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %2, align 8, !tbaa !49
  %12 = getelementptr inbounds ptr, ptr %11, i64 23
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef nonnull align 8 dereferenceable(36) ptr %13(ptr noundef nonnull align 8 dereferenceable(24) %2)
  %15 = load ptr, ptr %1, align 8, !tbaa !49
  %16 = getelementptr inbounds ptr, ptr %15, i64 8
  %17 = load ptr, ptr %16, align 8
  %18 = invoke noundef nonnull align 8 dereferenceable(36) ptr %17(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(36) %14)
          to label %19 unwind label %31

19:                                               ; preds = %10
  %20 = load ptr, ptr %2, align 8, !tbaa !49
  %21 = getelementptr inbounds ptr, ptr %20, i64 2
  %22 = load ptr, ptr %21, align 8
  invoke void %22(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %18, ptr noundef %3, ptr noundef %5)
          to label %23 unwind label %31

23:                                               ; preds = %19
  %24 = load ptr, ptr %2, align 8, !tbaa !49
  %25 = getelementptr inbounds ptr, ptr %24, i64 24
  %26 = load ptr, ptr %25, align 8
  %27 = invoke noundef zeroext i1 %26(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %14)
          to label %41 unwind label %28

28:                                               ; preds = %23
  %29 = landingpad { ptr, i32 }
          catch ptr null
  %30 = extractvalue { ptr, i32 } %29, 0
  tail call void @__clang_call_terminate(ptr %30) #10
  unreachable

31:                                               ; preds = %19, %10
  %32 = landingpad { ptr, i32 }
          cleanup
  %33 = load ptr, ptr %2, align 8, !tbaa !49
  %34 = getelementptr inbounds ptr, ptr %33, i64 24
  %35 = load ptr, ptr %34, align 8
  %36 = invoke noundef zeroext i1 %35(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %14)
          to label %40 unwind label %37

37:                                               ; preds = %31
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  tail call void @__clang_call_terminate(ptr %39) #10
  unreachable

40:                                               ; preds = %31
  resume { ptr, i32 } %32

41:                                               ; preds = %23, %6
  %42 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !51
  %44 = load ptr, ptr %43, align 8, !tbaa !52
  %45 = load ptr, ptr %44, align 8, !tbaa !49
  %46 = getelementptr inbounds ptr, ptr %45, i64 8
  %47 = load ptr, ptr %46, align 8
  %48 = tail call noundef nonnull align 8 dereferenceable(36) ptr %47(ptr noundef nonnull align 8 dereferenceable(24) %44)
  %49 = load ptr, ptr %42, align 8, !tbaa !51
  %50 = getelementptr inbounds %"class.xalanc_1_10::XObjectPtr", ptr %49, i64 1
  %51 = load ptr, ptr %50, align 8, !tbaa !52
  %52 = load ptr, ptr %51, align 8, !tbaa !49
  %53 = getelementptr inbounds ptr, ptr %52, i64 6
  %54 = load ptr, ptr %53, align 8
  %55 = tail call noundef double %54(ptr noundef nonnull align 8 dereferenceable(24) %51)
  %56 = tail call noundef double @_ZN11xalanc_1_1013DoubleSupport5roundEd(double noundef %55)
  %57 = fcmp ugt double %56, 0.000000e+00
  br i1 %57, label %61, label %58

58:                                               ; preds = %41
  %59 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %2, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !74
  br label %175

61:                                               ; preds = %41
  %62 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %48, i64 0, i32 1
  %63 = load i64, ptr %62, align 8, !tbaa !65
  %64 = icmp eq i64 %63, 0
  %65 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %48, i64 0, i32 3
  %66 = load ptr, ptr %65, align 8
  %67 = select i1 %64, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %66
  %68 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %67)
  %69 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef nonnull @_ZN11xalanc_1_1026XalanEXSLTFunctionConstant9s_eStringE)
  %70 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef %67, i32 noundef %68, ptr noundef nonnull @_ZN11xalanc_1_1026XalanEXSLTFunctionConstant9s_eStringE, i32 noundef %69)
  br i1 %70, label %71, label %79

71:                                               ; preds = %61
  %72 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %2, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !74, !noalias !79
  %74 = fcmp ole double %56, 5.100000e+01
  %75 = select i1 %74, double %56, double 5.100000e+01
  %76 = fptoui double %75 to i32
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds double, ptr @_ZN11xalanc_1_1026XalanEXSLTFunctionConstant9s_eValuesE, i64 %77
  br label %175

79:                                               ; preds = %61
  %80 = load i64, ptr %62, align 8, !tbaa !65
  %81 = icmp eq i64 %80, 0
  %82 = load ptr, ptr %65, align 8
  %83 = select i1 %81, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %82
  %84 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %83)
  %85 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef nonnull @_ZN11xalanc_1_1026XalanEXSLTFunctionConstant12s_ln10StringE)
  %86 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef %83, i32 noundef %84, ptr noundef nonnull @_ZN11xalanc_1_1026XalanEXSLTFunctionConstant12s_ln10StringE, i32 noundef %85)
  br i1 %86, label %87, label %95

87:                                               ; preds = %79
  %88 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %2, i64 0, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !74, !noalias !82
  %90 = fcmp ole double %56, 1.600000e+01
  %91 = select i1 %90, double %56, double 1.600000e+01
  %92 = fptoui double %91 to i32
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds double, ptr @_ZN11xalanc_1_1026XalanEXSLTFunctionConstant12s_ln10ValuesE, i64 %93
  br label %175

95:                                               ; preds = %79
  %96 = load i64, ptr %62, align 8, !tbaa !65
  %97 = icmp eq i64 %96, 0
  %98 = load ptr, ptr %65, align 8
  %99 = select i1 %97, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %98
  %100 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %99)
  %101 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef nonnull @_ZN11xalanc_1_1026XalanEXSLTFunctionConstant11s_ln2StringE)
  %102 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef %99, i32 noundef %100, ptr noundef nonnull @_ZN11xalanc_1_1026XalanEXSLTFunctionConstant11s_ln2StringE, i32 noundef %101)
  br i1 %102, label %103, label %111

103:                                              ; preds = %95
  %104 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %2, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !74, !noalias !85
  %106 = fcmp ole double %56, 5.100000e+01
  %107 = select i1 %106, double %56, double 5.100000e+01
  %108 = fptoui double %107 to i32
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds double, ptr @_ZN11xalanc_1_1026XalanEXSLTFunctionConstant11s_ln2ValuesE, i64 %109
  br label %175

111:                                              ; preds = %95
  %112 = load i64, ptr %62, align 8, !tbaa !65
  %113 = icmp eq i64 %112, 0
  %114 = load ptr, ptr %65, align 8
  %115 = select i1 %113, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %114
  %116 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %115)
  %117 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef nonnull @_ZN11xalanc_1_1026XalanEXSLTFunctionConstant13s_log2EStringE)
  %118 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef %115, i32 noundef %116, ptr noundef nonnull @_ZN11xalanc_1_1026XalanEXSLTFunctionConstant13s_log2EStringE, i32 noundef %117)
  br i1 %118, label %119, label %127

119:                                              ; preds = %111
  %120 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %2, i64 0, i32 1
  %121 = load ptr, ptr %120, align 8, !tbaa !74, !noalias !88
  %122 = fcmp ole double %56, 1.700000e+01
  %123 = select i1 %122, double %56, double 1.700000e+01
  %124 = fptoui double %123 to i32
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds double, ptr @_ZN11xalanc_1_1026XalanEXSLTFunctionConstant13s_log2EValuesE, i64 %125
  br label %175

127:                                              ; preds = %111
  %128 = load i64, ptr %62, align 8, !tbaa !65
  %129 = icmp eq i64 %128, 0
  %130 = load ptr, ptr %65, align 8
  %131 = select i1 %129, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %130
  %132 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %131)
  %133 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef nonnull @_ZN11xalanc_1_1026XalanEXSLTFunctionConstant10s_piStringE)
  %134 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef %131, i32 noundef %132, ptr noundef nonnull @_ZN11xalanc_1_1026XalanEXSLTFunctionConstant10s_piStringE, i32 noundef %133)
  br i1 %134, label %135, label %143

135:                                              ; preds = %127
  %136 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %2, i64 0, i32 1
  %137 = load ptr, ptr %136, align 8, !tbaa !74, !noalias !91
  %138 = fcmp ole double %56, 5.000000e+01
  %139 = select i1 %138, double %56, double 5.000000e+01
  %140 = fptoui double %139 to i32
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds double, ptr @_ZN11xalanc_1_1026XalanEXSLTFunctionConstant10s_piValuesE, i64 %141
  br label %175

143:                                              ; preds = %127
  %144 = load i64, ptr %62, align 8, !tbaa !65
  %145 = icmp eq i64 %144, 0
  %146 = load ptr, ptr %65, align 8
  %147 = select i1 %145, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %146
  %148 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %147)
  %149 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef nonnull @_ZN11xalanc_1_1026XalanEXSLTFunctionConstant15s_sqrt1_2StringE)
  %150 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef %147, i32 noundef %148, ptr noundef nonnull @_ZN11xalanc_1_1026XalanEXSLTFunctionConstant15s_sqrt1_2StringE, i32 noundef %149)
  br i1 %150, label %151, label %159

151:                                              ; preds = %143
  %152 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %2, i64 0, i32 1
  %153 = load ptr, ptr %152, align 8, !tbaa !74, !noalias !94
  %154 = fcmp ole double %56, 1.700000e+01
  %155 = select i1 %154, double %56, double 1.700000e+01
  %156 = fptoui double %155 to i32
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds double, ptr @_ZN11xalanc_1_1026XalanEXSLTFunctionConstant15s_sqrt1_2ValuesE, i64 %157
  br label %175

159:                                              ; preds = %143
  %160 = load i64, ptr %62, align 8, !tbaa !65
  %161 = icmp eq i64 %160, 0
  %162 = load ptr, ptr %65, align 8
  %163 = select i1 %161, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %162
  %164 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %163)
  %165 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef nonnull @_ZN11xalanc_1_1026XalanEXSLTFunctionConstant13s_sqrt2StringE)
  %166 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef %163, i32 noundef %164, ptr noundef nonnull @_ZN11xalanc_1_1026XalanEXSLTFunctionConstant13s_sqrt2StringE, i32 noundef %165)
  %167 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %2, i64 0, i32 1
  %168 = load ptr, ptr %167, align 8, !tbaa !74
  br i1 %166, label %169, label %175

169:                                              ; preds = %159
  %170 = fcmp ole double %56, 5.100000e+01
  %171 = select i1 %170, double %56, double 5.100000e+01
  %172 = fptoui double %171 to i32
  %173 = zext i32 %172 to i64
  %174 = getelementptr inbounds double, ptr @_ZN11xalanc_1_1026XalanEXSLTFunctionConstant13s_sqrt2ValuesE, i64 %173
  br label %175

175:                                              ; preds = %159, %169, %151, %135, %119, %103, %87, %71, %58
  %176 = phi ptr [ %174, %169 ], [ %158, %151 ], [ %142, %135 ], [ %126, %119 ], [ %110, %103 ], [ %94, %87 ], [ %78, %71 ], [ @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, %58 ], [ @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, %159 ]
  %177 = phi ptr [ %168, %169 ], [ %153, %151 ], [ %137, %135 ], [ %121, %119 ], [ %105, %103 ], [ %89, %87 ], [ %73, %71 ], [ %60, %58 ], [ %168, %159 ]
  %178 = load double, ptr %176, align 8, !tbaa !67
  %179 = load ptr, ptr %177, align 8, !tbaa !49
  %180 = getelementptr inbounds ptr, ptr %179, i64 7
  %181 = load ptr, ptr %180, align 8
  tail call void %181(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %177, double noundef %178)
  ret void
}

declare noundef double @_ZN11xalanc_1_1013DoubleSupport5roundEd(double noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1021XalanEXSLTFunctionCos7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %4, ptr noundef %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !42 {
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !43
  %9 = icmp eq i64 %8, 1
  br i1 %9, label %41, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %2, align 8, !tbaa !49
  %12 = getelementptr inbounds ptr, ptr %11, i64 23
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef nonnull align 8 dereferenceable(36) ptr %13(ptr noundef nonnull align 8 dereferenceable(24) %2)
  %15 = load ptr, ptr %1, align 8, !tbaa !49
  %16 = getelementptr inbounds ptr, ptr %15, i64 8
  %17 = load ptr, ptr %16, align 8
  %18 = invoke noundef nonnull align 8 dereferenceable(36) ptr %17(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(36) %14)
          to label %19 unwind label %31

19:                                               ; preds = %10
  %20 = load ptr, ptr %2, align 8, !tbaa !49
  %21 = getelementptr inbounds ptr, ptr %20, i64 2
  %22 = load ptr, ptr %21, align 8
  invoke void %22(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %18, ptr noundef %3, ptr noundef %5)
          to label %23 unwind label %31

23:                                               ; preds = %19
  %24 = load ptr, ptr %2, align 8, !tbaa !49
  %25 = getelementptr inbounds ptr, ptr %24, i64 24
  %26 = load ptr, ptr %25, align 8
  %27 = invoke noundef zeroext i1 %26(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %14)
          to label %41 unwind label %28

28:                                               ; preds = %23
  %29 = landingpad { ptr, i32 }
          catch ptr null
  %30 = extractvalue { ptr, i32 } %29, 0
  tail call void @__clang_call_terminate(ptr %30) #10
  unreachable

31:                                               ; preds = %19, %10
  %32 = landingpad { ptr, i32 }
          cleanup
  %33 = load ptr, ptr %2, align 8, !tbaa !49
  %34 = getelementptr inbounds ptr, ptr %33, i64 24
  %35 = load ptr, ptr %34, align 8
  %36 = invoke noundef zeroext i1 %35(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %14)
          to label %40 unwind label %37

37:                                               ; preds = %31
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  tail call void @__clang_call_terminate(ptr %39) #10
  unreachable

40:                                               ; preds = %31
  resume { ptr, i32 } %32

41:                                               ; preds = %23, %6
  %42 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %2, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !74
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !51
  %46 = load ptr, ptr %45, align 8, !tbaa !52
  %47 = load ptr, ptr %46, align 8, !tbaa !49
  %48 = getelementptr inbounds ptr, ptr %47, i64 6
  %49 = load ptr, ptr %48, align 8
  %50 = tail call noundef double %49(ptr noundef nonnull align 8 dereferenceable(24) %46)
  %51 = tail call double @cos(double noundef %50) #11
  %52 = load ptr, ptr %43, align 8, !tbaa !49
  %53 = getelementptr inbounds ptr, ptr %52, i64 7
  %54 = load ptr, ptr %53, align 8
  tail call void %54(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %43, double noundef %51)
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @cos(double noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XalanEXSLTFunctionCos8getErrorERNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #0 align 2 !prof !42 {
  %3 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKtS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef 145, ptr noundef nonnull @_ZN11xalanc_1_10L17s_cosFunctionNameE, ptr noundef null, ptr noundef null, ptr noundef null)
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1021XalanEXSLTFunctionExp7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %4, ptr noundef %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !42 {
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !43
  %9 = icmp eq i64 %8, 1
  br i1 %9, label %41, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %2, align 8, !tbaa !49
  %12 = getelementptr inbounds ptr, ptr %11, i64 23
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef nonnull align 8 dereferenceable(36) ptr %13(ptr noundef nonnull align 8 dereferenceable(24) %2)
  %15 = load ptr, ptr %1, align 8, !tbaa !49
  %16 = getelementptr inbounds ptr, ptr %15, i64 8
  %17 = load ptr, ptr %16, align 8
  %18 = invoke noundef nonnull align 8 dereferenceable(36) ptr %17(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(36) %14)
          to label %19 unwind label %31

19:                                               ; preds = %10
  %20 = load ptr, ptr %2, align 8, !tbaa !49
  %21 = getelementptr inbounds ptr, ptr %20, i64 2
  %22 = load ptr, ptr %21, align 8
  invoke void %22(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %18, ptr noundef %3, ptr noundef %5)
          to label %23 unwind label %31

23:                                               ; preds = %19
  %24 = load ptr, ptr %2, align 8, !tbaa !49
  %25 = getelementptr inbounds ptr, ptr %24, i64 24
  %26 = load ptr, ptr %25, align 8
  %27 = invoke noundef zeroext i1 %26(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %14)
          to label %41 unwind label %28

28:                                               ; preds = %23
  %29 = landingpad { ptr, i32 }
          catch ptr null
  %30 = extractvalue { ptr, i32 } %29, 0
  tail call void @__clang_call_terminate(ptr %30) #10
  unreachable

31:                                               ; preds = %19, %10
  %32 = landingpad { ptr, i32 }
          cleanup
  %33 = load ptr, ptr %2, align 8, !tbaa !49
  %34 = getelementptr inbounds ptr, ptr %33, i64 24
  %35 = load ptr, ptr %34, align 8
  %36 = invoke noundef zeroext i1 %35(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %14)
          to label %40 unwind label %37

37:                                               ; preds = %31
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  tail call void @__clang_call_terminate(ptr %39) #10
  unreachable

40:                                               ; preds = %31
  resume { ptr, i32 } %32

41:                                               ; preds = %23, %6
  %42 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %2, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !74
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !51
  %46 = load ptr, ptr %45, align 8, !tbaa !52
  %47 = load ptr, ptr %46, align 8, !tbaa !49
  %48 = getelementptr inbounds ptr, ptr %47, i64 6
  %49 = load ptr, ptr %48, align 8
  %50 = tail call noundef double %49(ptr noundef nonnull align 8 dereferenceable(24) %46)
  %51 = tail call double @exp(double noundef %50) #11
  %52 = load ptr, ptr %43, align 8, !tbaa !49
  %53 = getelementptr inbounds ptr, ptr %52, i64 7
  %54 = load ptr, ptr %53, align 8
  tail call void %54(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %43, double noundef %51)
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @exp(double noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XalanEXSLTFunctionExp8getErrorERNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #0 align 2 !prof !42 {
  %3 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKtS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef 145, ptr noundef nonnull @_ZN11xalanc_1_10L17s_expFunctionNameE, ptr noundef null, ptr noundef null, ptr noundef null)
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1021XalanEXSLTFunctionLog7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %4, ptr noundef %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !42 {
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !43
  %9 = icmp eq i64 %8, 1
  br i1 %9, label %41, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %2, align 8, !tbaa !49
  %12 = getelementptr inbounds ptr, ptr %11, i64 23
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef nonnull align 8 dereferenceable(36) ptr %13(ptr noundef nonnull align 8 dereferenceable(24) %2)
  %15 = load ptr, ptr %1, align 8, !tbaa !49
  %16 = getelementptr inbounds ptr, ptr %15, i64 8
  %17 = load ptr, ptr %16, align 8
  %18 = invoke noundef nonnull align 8 dereferenceable(36) ptr %17(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(36) %14)
          to label %19 unwind label %31

19:                                               ; preds = %10
  %20 = load ptr, ptr %2, align 8, !tbaa !49
  %21 = getelementptr inbounds ptr, ptr %20, i64 2
  %22 = load ptr, ptr %21, align 8
  invoke void %22(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %18, ptr noundef %3, ptr noundef %5)
          to label %23 unwind label %31

23:                                               ; preds = %19
  %24 = load ptr, ptr %2, align 8, !tbaa !49
  %25 = getelementptr inbounds ptr, ptr %24, i64 24
  %26 = load ptr, ptr %25, align 8
  %27 = invoke noundef zeroext i1 %26(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %14)
          to label %41 unwind label %28

28:                                               ; preds = %23
  %29 = landingpad { ptr, i32 }
          catch ptr null
  %30 = extractvalue { ptr, i32 } %29, 0
  tail call void @__clang_call_terminate(ptr %30) #10
  unreachable

31:                                               ; preds = %19, %10
  %32 = landingpad { ptr, i32 }
          cleanup
  %33 = load ptr, ptr %2, align 8, !tbaa !49
  %34 = getelementptr inbounds ptr, ptr %33, i64 24
  %35 = load ptr, ptr %34, align 8
  %36 = invoke noundef zeroext i1 %35(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %14)
          to label %40 unwind label %37

37:                                               ; preds = %31
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  tail call void @__clang_call_terminate(ptr %39) #10
  unreachable

40:                                               ; preds = %31
  resume { ptr, i32 } %32

41:                                               ; preds = %23, %6
  %42 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %2, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !74
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !51
  %46 = load ptr, ptr %45, align 8, !tbaa !52
  %47 = load ptr, ptr %46, align 8, !tbaa !49
  %48 = getelementptr inbounds ptr, ptr %47, i64 6
  %49 = load ptr, ptr %48, align 8
  %50 = tail call noundef double %49(ptr noundef nonnull align 8 dereferenceable(24) %46)
  %51 = tail call double @log(double noundef %50) #11
  %52 = load ptr, ptr %43, align 8, !tbaa !49
  %53 = getelementptr inbounds ptr, ptr %52, i64 7
  %54 = load ptr, ptr %53, align 8
  tail call void %54(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %43, double noundef %51)
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @log(double noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XalanEXSLTFunctionLog8getErrorERNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #0 align 2 !prof !42 {
  %3 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKtS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef 145, ptr noundef nonnull @_ZN11xalanc_1_10L17s_logFunctionNameE, ptr noundef null, ptr noundef null, ptr noundef null)
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1023XalanEXSLTFunctionPower7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %4, ptr noundef %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !42 {
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !43
  %9 = icmp eq i64 %8, 2
  br i1 %9, label %41, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %2, align 8, !tbaa !49
  %12 = getelementptr inbounds ptr, ptr %11, i64 23
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef nonnull align 8 dereferenceable(36) ptr %13(ptr noundef nonnull align 8 dereferenceable(24) %2)
  %15 = load ptr, ptr %1, align 8, !tbaa !49
  %16 = getelementptr inbounds ptr, ptr %15, i64 8
  %17 = load ptr, ptr %16, align 8
  %18 = invoke noundef nonnull align 8 dereferenceable(36) ptr %17(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(36) %14)
          to label %19 unwind label %31

19:                                               ; preds = %10
  %20 = load ptr, ptr %2, align 8, !tbaa !49
  %21 = getelementptr inbounds ptr, ptr %20, i64 2
  %22 = load ptr, ptr %21, align 8
  invoke void %22(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %18, ptr noundef %3, ptr noundef %5)
          to label %23 unwind label %31

23:                                               ; preds = %19
  %24 = load ptr, ptr %2, align 8, !tbaa !49
  %25 = getelementptr inbounds ptr, ptr %24, i64 24
  %26 = load ptr, ptr %25, align 8
  %27 = invoke noundef zeroext i1 %26(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %14)
          to label %41 unwind label %28

28:                                               ; preds = %23
  %29 = landingpad { ptr, i32 }
          catch ptr null
  %30 = extractvalue { ptr, i32 } %29, 0
  tail call void @__clang_call_terminate(ptr %30) #10
  unreachable

31:                                               ; preds = %19, %10
  %32 = landingpad { ptr, i32 }
          cleanup
  %33 = load ptr, ptr %2, align 8, !tbaa !49
  %34 = getelementptr inbounds ptr, ptr %33, i64 24
  %35 = load ptr, ptr %34, align 8
  %36 = invoke noundef zeroext i1 %35(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %14)
          to label %40 unwind label %37

37:                                               ; preds = %31
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  tail call void @__clang_call_terminate(ptr %39) #10
  unreachable

40:                                               ; preds = %31
  resume { ptr, i32 } %32

41:                                               ; preds = %23, %6
  %42 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %2, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !74
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !51
  %46 = load ptr, ptr %45, align 8, !tbaa !52
  %47 = load ptr, ptr %46, align 8, !tbaa !49
  %48 = getelementptr inbounds ptr, ptr %47, i64 6
  %49 = load ptr, ptr %48, align 8
  %50 = tail call noundef double %49(ptr noundef nonnull align 8 dereferenceable(24) %46)
  %51 = load ptr, ptr %44, align 8, !tbaa !51
  %52 = getelementptr inbounds %"class.xalanc_1_10::XObjectPtr", ptr %51, i64 1
  %53 = load ptr, ptr %52, align 8, !tbaa !52
  %54 = load ptr, ptr %53, align 8, !tbaa !49
  %55 = getelementptr inbounds ptr, ptr %54, i64 6
  %56 = load ptr, ptr %55, align 8
  %57 = tail call noundef double %56(ptr noundef nonnull align 8 dereferenceable(24) %53)
  %58 = tail call double @pow(double noundef %50, double noundef %57) #11
  %59 = load ptr, ptr %43, align 8, !tbaa !49
  %60 = getelementptr inbounds ptr, ptr %59, i64 7
  %61 = load ptr, ptr %60, align 8
  tail call void %61(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %43, double noundef %58)
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1023XalanEXSLTFunctionPower8getErrorERNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #0 align 2 !prof !42 {
  %3 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKtS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef 147, ptr noundef nonnull @_ZN11xalanc_1_10L19s_powerFunctionNameE, ptr noundef null, ptr noundef null, ptr noundef null)
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1021XalanEXSLTFunctionSin7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %4, ptr noundef %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !42 {
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !43
  %9 = icmp eq i64 %8, 1
  br i1 %9, label %41, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %2, align 8, !tbaa !49
  %12 = getelementptr inbounds ptr, ptr %11, i64 23
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef nonnull align 8 dereferenceable(36) ptr %13(ptr noundef nonnull align 8 dereferenceable(24) %2)
  %15 = load ptr, ptr %1, align 8, !tbaa !49
  %16 = getelementptr inbounds ptr, ptr %15, i64 8
  %17 = load ptr, ptr %16, align 8
  %18 = invoke noundef nonnull align 8 dereferenceable(36) ptr %17(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(36) %14)
          to label %19 unwind label %31

19:                                               ; preds = %10
  %20 = load ptr, ptr %2, align 8, !tbaa !49
  %21 = getelementptr inbounds ptr, ptr %20, i64 2
  %22 = load ptr, ptr %21, align 8
  invoke void %22(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %18, ptr noundef %3, ptr noundef %5)
          to label %23 unwind label %31

23:                                               ; preds = %19
  %24 = load ptr, ptr %2, align 8, !tbaa !49
  %25 = getelementptr inbounds ptr, ptr %24, i64 24
  %26 = load ptr, ptr %25, align 8
  %27 = invoke noundef zeroext i1 %26(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %14)
          to label %41 unwind label %28

28:                                               ; preds = %23
  %29 = landingpad { ptr, i32 }
          catch ptr null
  %30 = extractvalue { ptr, i32 } %29, 0
  tail call void @__clang_call_terminate(ptr %30) #10
  unreachable

31:                                               ; preds = %19, %10
  %32 = landingpad { ptr, i32 }
          cleanup
  %33 = load ptr, ptr %2, align 8, !tbaa !49
  %34 = getelementptr inbounds ptr, ptr %33, i64 24
  %35 = load ptr, ptr %34, align 8
  %36 = invoke noundef zeroext i1 %35(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %14)
          to label %40 unwind label %37

37:                                               ; preds = %31
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  tail call void @__clang_call_terminate(ptr %39) #10
  unreachable

40:                                               ; preds = %31
  resume { ptr, i32 } %32

41:                                               ; preds = %23, %6
  %42 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %2, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !74
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !51
  %46 = load ptr, ptr %45, align 8, !tbaa !52
  %47 = load ptr, ptr %46, align 8, !tbaa !49
  %48 = getelementptr inbounds ptr, ptr %47, i64 6
  %49 = load ptr, ptr %48, align 8
  %50 = tail call noundef double %49(ptr noundef nonnull align 8 dereferenceable(24) %46)
  %51 = tail call double @sin(double noundef %50) #11
  %52 = load ptr, ptr %43, align 8, !tbaa !49
  %53 = getelementptr inbounds ptr, ptr %52, i64 7
  %54 = load ptr, ptr %53, align 8
  tail call void %54(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %43, double noundef %51)
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sin(double noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XalanEXSLTFunctionSin8getErrorERNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #0 align 2 !prof !42 {
  %3 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKtS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef 145, ptr noundef nonnull @_ZN11xalanc_1_10L17s_sinFunctionNameE, ptr noundef null, ptr noundef null, ptr noundef null)
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1022XalanEXSLTFunctionSqrt7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %4, ptr noundef %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !42 {
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !43
  %9 = icmp eq i64 %8, 1
  br i1 %9, label %41, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %2, align 8, !tbaa !49
  %12 = getelementptr inbounds ptr, ptr %11, i64 23
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef nonnull align 8 dereferenceable(36) ptr %13(ptr noundef nonnull align 8 dereferenceable(24) %2)
  %15 = load ptr, ptr %1, align 8, !tbaa !49
  %16 = getelementptr inbounds ptr, ptr %15, i64 8
  %17 = load ptr, ptr %16, align 8
  %18 = invoke noundef nonnull align 8 dereferenceable(36) ptr %17(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(36) %14)
          to label %19 unwind label %31

19:                                               ; preds = %10
  %20 = load ptr, ptr %2, align 8, !tbaa !49
  %21 = getelementptr inbounds ptr, ptr %20, i64 2
  %22 = load ptr, ptr %21, align 8
  invoke void %22(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %18, ptr noundef %3, ptr noundef %5)
          to label %23 unwind label %31

23:                                               ; preds = %19
  %24 = load ptr, ptr %2, align 8, !tbaa !49
  %25 = getelementptr inbounds ptr, ptr %24, i64 24
  %26 = load ptr, ptr %25, align 8
  %27 = invoke noundef zeroext i1 %26(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %14)
          to label %41 unwind label %28

28:                                               ; preds = %23
  %29 = landingpad { ptr, i32 }
          catch ptr null
  %30 = extractvalue { ptr, i32 } %29, 0
  tail call void @__clang_call_terminate(ptr %30) #10
  unreachable

31:                                               ; preds = %19, %10
  %32 = landingpad { ptr, i32 }
          cleanup
  %33 = load ptr, ptr %2, align 8, !tbaa !49
  %34 = getelementptr inbounds ptr, ptr %33, i64 24
  %35 = load ptr, ptr %34, align 8
  %36 = invoke noundef zeroext i1 %35(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %14)
          to label %40 unwind label %37

37:                                               ; preds = %31
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  tail call void @__clang_call_terminate(ptr %39) #10
  unreachable

40:                                               ; preds = %31
  resume { ptr, i32 } %32

41:                                               ; preds = %23, %6
  %42 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %2, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !74
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !51
  %46 = load ptr, ptr %45, align 8, !tbaa !52
  %47 = load ptr, ptr %46, align 8, !tbaa !49
  %48 = getelementptr inbounds ptr, ptr %47, i64 6
  %49 = load ptr, ptr %48, align 8
  %50 = tail call noundef double %49(ptr noundef nonnull align 8 dereferenceable(24) %46)
  %51 = tail call double @sqrt(double noundef %50) #11
  %52 = load ptr, ptr %43, align 8, !tbaa !49
  %53 = getelementptr inbounds ptr, ptr %52, i64 7
  %54 = load ptr, ptr %53, align 8
  tail call void %54(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %43, double noundef %51)
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1022XalanEXSLTFunctionSqrt8getErrorERNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #0 align 2 !prof !42 {
  %3 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKtS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef 145, ptr noundef nonnull @_ZN11xalanc_1_10L18s_sqrtFunctionNameE, ptr noundef null, ptr noundef null, ptr noundef null)
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1021XalanEXSLTFunctionTan7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %4, ptr noundef %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !42 {
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !43
  %9 = icmp eq i64 %8, 1
  br i1 %9, label %41, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %2, align 8, !tbaa !49
  %12 = getelementptr inbounds ptr, ptr %11, i64 23
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef nonnull align 8 dereferenceable(36) ptr %13(ptr noundef nonnull align 8 dereferenceable(24) %2)
  %15 = load ptr, ptr %1, align 8, !tbaa !49
  %16 = getelementptr inbounds ptr, ptr %15, i64 8
  %17 = load ptr, ptr %16, align 8
  %18 = invoke noundef nonnull align 8 dereferenceable(36) ptr %17(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(36) %14)
          to label %19 unwind label %31

19:                                               ; preds = %10
  %20 = load ptr, ptr %2, align 8, !tbaa !49
  %21 = getelementptr inbounds ptr, ptr %20, i64 2
  %22 = load ptr, ptr %21, align 8
  invoke void %22(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %18, ptr noundef %3, ptr noundef %5)
          to label %23 unwind label %31

23:                                               ; preds = %19
  %24 = load ptr, ptr %2, align 8, !tbaa !49
  %25 = getelementptr inbounds ptr, ptr %24, i64 24
  %26 = load ptr, ptr %25, align 8
  %27 = invoke noundef zeroext i1 %26(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %14)
          to label %41 unwind label %28

28:                                               ; preds = %23
  %29 = landingpad { ptr, i32 }
          catch ptr null
  %30 = extractvalue { ptr, i32 } %29, 0
  tail call void @__clang_call_terminate(ptr %30) #10
  unreachable

31:                                               ; preds = %19, %10
  %32 = landingpad { ptr, i32 }
          cleanup
  %33 = load ptr, ptr %2, align 8, !tbaa !49
  %34 = getelementptr inbounds ptr, ptr %33, i64 24
  %35 = load ptr, ptr %34, align 8
  %36 = invoke noundef zeroext i1 %35(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %14)
          to label %40 unwind label %37

37:                                               ; preds = %31
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  tail call void @__clang_call_terminate(ptr %39) #10
  unreachable

40:                                               ; preds = %31
  resume { ptr, i32 } %32

41:                                               ; preds = %23, %6
  %42 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %2, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !74
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !51
  %46 = load ptr, ptr %45, align 8, !tbaa !52
  %47 = load ptr, ptr %46, align 8, !tbaa !49
  %48 = getelementptr inbounds ptr, ptr %47, i64 6
  %49 = load ptr, ptr %48, align 8
  %50 = tail call noundef double %49(ptr noundef nonnull align 8 dereferenceable(24) %46)
  %51 = tail call double @tan(double noundef %50) #11
  %52 = load ptr, ptr %43, align 8, !tbaa !49
  %53 = getelementptr inbounds ptr, ptr %52, i64 7
  %54 = load ptr, ptr %53, align 8
  tail call void %54(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %43, double noundef %51)
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @tan(double noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XalanEXSLTFunctionTan8getErrorERNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #0 align 2 !prof !42 {
  %3 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKtS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef 145, ptr noundef nonnull @_ZN11xalanc_1_10L17s_tanFunctionNameE, ptr noundef null, ptr noundef null, ptr noundef null)
  ret ptr %3
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1032XalanEXSLTMathFunctionsInstaller12installLocalERNS_22XPathEnvSupportDefaultE(ptr noundef nonnull align 8 dereferenceable(280) %0) local_unnamed_addr #0 align 2 !prof !42 {
  tail call void @_ZN11xalanc_1_1024XalanExtensionsInstaller14doInstallLocalEPKtPKNS0_18FunctionTableEntryERNS_22XPathEnvSupportDefaultE(ptr noundef nonnull @_ZN11xalanc_1_10L15s_mathNamespaceE, ptr noundef nonnull @_ZN11xalanc_1_10L16theFunctionTableE, ptr noundef nonnull align 8 dereferenceable(280) %0)
  ret void
}

declare void @_ZN11xalanc_1_1024XalanExtensionsInstaller14doInstallLocalEPKtPKNS0_18FunctionTableEntryERNS_22XPathEnvSupportDefaultE(ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(280)) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1032XalanEXSLTMathFunctionsInstaller13installGlobalERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 !prof !97 {
  tail call void @_ZN11xalanc_1_1024XalanExtensionsInstaller15doInstallGlobalERN11xercesc_2_713MemoryManagerEPKtPKNS0_18FunctionTableEntryE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @_ZN11xalanc_1_10L15s_mathNamespaceE, ptr noundef nonnull @_ZN11xalanc_1_10L16theFunctionTableE)
  %2 = tail call i64 @time(ptr noundef null) #11
  %3 = trunc i64 %2 to i32
  tail call void @srand(i32 noundef %3) #11
  ret void
}

declare void @_ZN11xalanc_1_1024XalanExtensionsInstaller15doInstallGlobalERN11xercesc_2_713MemoryManagerEPKtPKNS0_18FunctionTableEntryE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @srand(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1032XalanEXSLTMathFunctionsInstaller14uninstallLocalERNS_22XPathEnvSupportDefaultE(ptr noundef nonnull align 8 dereferenceable(280) %0) local_unnamed_addr #0 align 2 !prof !42 {
  tail call void @_ZN11xalanc_1_1024XalanExtensionsInstaller16doUninstallLocalEPKtPKNS0_18FunctionTableEntryERNS_22XPathEnvSupportDefaultE(ptr noundef nonnull @_ZN11xalanc_1_10L15s_mathNamespaceE, ptr noundef nonnull @_ZN11xalanc_1_10L16theFunctionTableE, ptr noundef nonnull align 8 dereferenceable(280) %0)
  ret void
}

declare void @_ZN11xalanc_1_1024XalanExtensionsInstaller16doUninstallLocalEPKtPKNS0_18FunctionTableEntryERNS_22XPathEnvSupportDefaultE(ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(280)) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1032XalanEXSLTMathFunctionsInstaller15uninstallGlobalERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 !prof !97 {
  tail call void @_ZN11xalanc_1_1024XalanExtensionsInstaller17doUninstallGlobalERN11xercesc_2_713MemoryManagerEPKtPKNS0_18FunctionTableEntryE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @_ZN11xalanc_1_10L15s_mathNamespaceE, ptr noundef nonnull @_ZN11xalanc_1_10L16theFunctionTableE)
  ret void
}

declare void @_ZN11xalanc_1_1024XalanExtensionsInstaller17doUninstallGlobalERN11xercesc_2_713MemoryManagerEPKtPKNS0_18FunctionTableEntryE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XalanEXSLTFunctionAbsD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 !prof !42 {
  tail call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  tail call void @_ZdlPv(ptr noundef %0) #12
  ret void
}

declare void @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef) unnamed_addr #2

declare void @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #2

declare void @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #2

declare void @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_S5_PKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1021XalanEXSLTFunctionAbs5cloneERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !97 {
  %3 = load ptr, ptr %1, align 8, !tbaa !49
  %4 = getelementptr inbounds ptr, ptr %3, i64 2
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 8), !prof !98
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1021XalanEXSLTFunctionAbsE, i64 0, inrange i32 0, i64 2), ptr %6, align 8, !tbaa !49
  ret ptr %6
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1024XalanEXSLTFunctionRandomD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 !prof !42 {
  tail call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  tail call void @_ZdlPv(ptr noundef %0) #12
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1024XalanEXSLTFunctionRandom5cloneERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !97 {
  %3 = load ptr, ptr %1, align 8, !tbaa !49
  %4 = getelementptr inbounds ptr, ptr %3, i64 2
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 8), !prof !98
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1024XalanEXSLTFunctionRandomE, i64 0, inrange i32 0, i64 2), ptr %6, align 8, !tbaa !49
  ret ptr %6
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1022XalanEXSLTFunctionAcosD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 !prof !42 {
  tail call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  tail call void @_ZdlPv(ptr noundef %0) #12
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1022XalanEXSLTFunctionAcos5cloneERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !97 {
  %3 = load ptr, ptr %1, align 8, !tbaa !49
  %4 = getelementptr inbounds ptr, ptr %3, i64 2
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 8), !prof !98
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1022XalanEXSLTFunctionAcosE, i64 0, inrange i32 0, i64 2), ptr %6, align 8, !tbaa !49
  ret ptr %6
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1022XalanEXSLTFunctionAsinD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 !prof !42 {
  tail call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  tail call void @_ZdlPv(ptr noundef %0) #12
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1022XalanEXSLTFunctionAsin5cloneERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !97 {
  %3 = load ptr, ptr %1, align 8, !tbaa !49
  %4 = getelementptr inbounds ptr, ptr %3, i64 2
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 8), !prof !98
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1022XalanEXSLTFunctionAsinE, i64 0, inrange i32 0, i64 2), ptr %6, align 8, !tbaa !49
  ret ptr %6
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1022XalanEXSLTFunctionAtanD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 !prof !42 {
  tail call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  tail call void @_ZdlPv(ptr noundef %0) #12
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1022XalanEXSLTFunctionAtan5cloneERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !99 {
  %3 = load ptr, ptr %1, align 8, !tbaa !49
  %4 = getelementptr inbounds ptr, ptr %3, i64 2
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 8), !prof !100
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1022XalanEXSLTFunctionAtanE, i64 0, inrange i32 0, i64 2), ptr %6, align 8, !tbaa !49
  ret ptr %6
}

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1023XalanEXSLTFunctionAtan2D0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 !prof !42 {
  tail call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  tail call void @_ZdlPv(ptr noundef %0) #12
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1023XalanEXSLTFunctionAtan25cloneERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !42 {
  %3 = load ptr, ptr %1, align 8, !tbaa !49
  %4 = getelementptr inbounds ptr, ptr %3, i64 2
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 8)
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1023XalanEXSLTFunctionAtan2E, i64 0, inrange i32 0, i64 2), ptr %6, align 8, !tbaa !49
  ret ptr %6
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1026XalanEXSLTFunctionConstantD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 !prof !42 {
  tail call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  tail call void @_ZdlPv(ptr noundef %0) #12
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1026XalanEXSLTFunctionConstant5cloneERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !97 {
  %3 = load ptr, ptr %1, align 8, !tbaa !49
  %4 = getelementptr inbounds ptr, ptr %3, i64 2
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 8), !prof !98
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1026XalanEXSLTFunctionConstantE, i64 0, inrange i32 0, i64 2), ptr %6, align 8, !tbaa !49
  ret ptr %6
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1026XalanEXSLTFunctionConstant8getErrorERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #0 comdat align 2 !prof !42 {
  %3 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKcS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef 147, ptr noundef nonnull @.str, ptr noundef null, ptr noundef null, ptr noundef null)
  ret ptr %3
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XalanEXSLTFunctionCosD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 !prof !42 {
  tail call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  tail call void @_ZdlPv(ptr noundef %0) #12
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1021XalanEXSLTFunctionCos5cloneERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !97 {
  %3 = load ptr, ptr %1, align 8, !tbaa !49
  %4 = getelementptr inbounds ptr, ptr %3, i64 2
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 8), !prof !98
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1021XalanEXSLTFunctionCosE, i64 0, inrange i32 0, i64 2), ptr %6, align 8, !tbaa !49
  ret ptr %6
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XalanEXSLTFunctionExpD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 !prof !42 {
  tail call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  tail call void @_ZdlPv(ptr noundef %0) #12
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1021XalanEXSLTFunctionExp5cloneERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !97 {
  %3 = load ptr, ptr %1, align 8, !tbaa !49
  %4 = getelementptr inbounds ptr, ptr %3, i64 2
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 8), !prof !98
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1021XalanEXSLTFunctionExpE, i64 0, inrange i32 0, i64 2), ptr %6, align 8, !tbaa !49
  ret ptr %6
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1025XalanEXSLTFunctionHighestD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 !prof !42 {
  tail call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  tail call void @_ZdlPv(ptr noundef %0) #12
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1025XalanEXSLTFunctionHighest5cloneERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !97 {
  %3 = load ptr, ptr %1, align 8, !tbaa !49
  %4 = getelementptr inbounds ptr, ptr %3, i64 2
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 8), !prof !98
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1025XalanEXSLTFunctionHighestE, i64 0, inrange i32 0, i64 2), ptr %6, align 8, !tbaa !49
  ret ptr %6
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XalanEXSLTFunctionLogD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 !prof !42 {
  tail call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  tail call void @_ZdlPv(ptr noundef %0) #12
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1021XalanEXSLTFunctionLog5cloneERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !97 {
  %3 = load ptr, ptr %1, align 8, !tbaa !49
  %4 = getelementptr inbounds ptr, ptr %3, i64 2
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 8), !prof !98
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1021XalanEXSLTFunctionLogE, i64 0, inrange i32 0, i64 2), ptr %6, align 8, !tbaa !49
  ret ptr %6
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1024XalanEXSLTFunctionLowestD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 !prof !42 {
  tail call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  tail call void @_ZdlPv(ptr noundef %0) #12
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1024XalanEXSLTFunctionLowest5cloneERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !97 {
  %3 = load ptr, ptr %1, align 8, !tbaa !49
  %4 = getelementptr inbounds ptr, ptr %3, i64 2
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 8), !prof !98
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1024XalanEXSLTFunctionLowestE, i64 0, inrange i32 0, i64 2), ptr %6, align 8, !tbaa !49
  ret ptr %6
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XalanEXSLTFunctionMaxD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 !prof !42 {
  tail call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  tail call void @_ZdlPv(ptr noundef %0) #12
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1021XalanEXSLTFunctionMax5cloneERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !97 {
  %3 = load ptr, ptr %1, align 8, !tbaa !49
  %4 = getelementptr inbounds ptr, ptr %3, i64 2
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 8), !prof !98
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1021XalanEXSLTFunctionMaxE, i64 0, inrange i32 0, i64 2), ptr %6, align 8, !tbaa !49
  ret ptr %6
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XalanEXSLTFunctionMinD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 !prof !42 {
  tail call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  tail call void @_ZdlPv(ptr noundef %0) #12
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1021XalanEXSLTFunctionMin5cloneERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !97 {
  %3 = load ptr, ptr %1, align 8, !tbaa !49
  %4 = getelementptr inbounds ptr, ptr %3, i64 2
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 8), !prof !98
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1021XalanEXSLTFunctionMinE, i64 0, inrange i32 0, i64 2), ptr %6, align 8, !tbaa !49
  ret ptr %6
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1023XalanEXSLTFunctionPowerD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 !prof !42 {
  tail call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  tail call void @_ZdlPv(ptr noundef %0) #12
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1023XalanEXSLTFunctionPower5cloneERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !97 {
  %3 = load ptr, ptr %1, align 8, !tbaa !49
  %4 = getelementptr inbounds ptr, ptr %3, i64 2
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 8), !prof !98
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1023XalanEXSLTFunctionPowerE, i64 0, inrange i32 0, i64 2), ptr %6, align 8, !tbaa !49
  ret ptr %6
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XalanEXSLTFunctionSinD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 !prof !42 {
  tail call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  tail call void @_ZdlPv(ptr noundef %0) #12
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1021XalanEXSLTFunctionSin5cloneERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !97 {
  %3 = load ptr, ptr %1, align 8, !tbaa !49
  %4 = getelementptr inbounds ptr, ptr %3, i64 2
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 8), !prof !98
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1021XalanEXSLTFunctionSinE, i64 0, inrange i32 0, i64 2), ptr %6, align 8, !tbaa !49
  ret ptr %6
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1022XalanEXSLTFunctionSqrtD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 !prof !42 {
  tail call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  tail call void @_ZdlPv(ptr noundef %0) #12
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1022XalanEXSLTFunctionSqrt5cloneERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !97 {
  %3 = load ptr, ptr %1, align 8, !tbaa !49
  %4 = getelementptr inbounds ptr, ptr %3, i64 2
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 8), !prof !98
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1022XalanEXSLTFunctionSqrtE, i64 0, inrange i32 0, i64 2), ptr %6, align 8, !tbaa !49
  ret ptr %6
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XalanEXSLTFunctionTanD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 !prof !42 {
  tail call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  tail call void @_ZdlPv(ptr noundef %0) #12
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1021XalanEXSLTFunctionTan5cloneERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !97 {
  %3 = load ptr, ptr %1, align 8, !tbaa !49
  %4 = getelementptr inbounds ptr, ptr %3, i64 2
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 8), !prof !98
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1021XalanEXSLTFunctionTanE, i64 0, inrange i32 0, i64 2), ptr %6, align 8, !tbaa !49
  ret ptr %6
}

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat !prof !42 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #11
  tail call void @_ZSt9terminatev() #10
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

declare noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef) local_unnamed_addr #2

declare void @_ZN11xalanc_1_108FunctionC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #8

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKcS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_9XalanNodeERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #2

declare void @_ZN11xalanc_1_1018MutableNodeRefList7addNodeEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(44), ptr noundef) local_unnamed_addr #2

declare void @_ZN11xalanc_1_1018MutableNodeRefList5clearEv(ptr noundef nonnull align 8 dereferenceable(44)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport5equalEdd(double noundef, double noundef) local_unnamed_addr #2

declare void @_ZN11xalanc_1_1018MutableNodeRefList17addNodeInDocOrderEPNS_9XalanNodeERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(44), ptr noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare noundef double @_ZN11xalanc_1_1018WideStringToDoubleEPKtRN11xercesc_2_713MemoryManagerE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: cold uwtable
define internal void @_GLOBAL__sub_I_XalanEXSLTMath.cpp() #9 section ".text.startup" !prof !97 !PGOFuncName !101 {
  tail call void @_ZN11xalanc_1_108FunctionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) @_ZN11xalanc_1_10L13s_absFunctionE)
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1021XalanEXSLTFunctionAbsE, i64 0, inrange i32 0, i64 2), ptr @_ZN11xalanc_1_10L13s_absFunctionE, align 8, !tbaa !49
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_108FunctionD2Ev, ptr nonnull @_ZN11xalanc_1_10L13s_absFunctionE, ptr nonnull @__dso_handle) #11
  tail call void @_ZN11xalanc_1_108FunctionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) @_ZN11xalanc_1_10L14s_acosFunctionE)
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1022XalanEXSLTFunctionAcosE, i64 0, inrange i32 0, i64 2), ptr @_ZN11xalanc_1_10L14s_acosFunctionE, align 8, !tbaa !49
  %2 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_108FunctionD2Ev, ptr nonnull @_ZN11xalanc_1_10L14s_acosFunctionE, ptr nonnull @__dso_handle) #11
  tail call void @_ZN11xalanc_1_108FunctionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) @_ZN11xalanc_1_10L14s_asinFunctionE)
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1022XalanEXSLTFunctionAsinE, i64 0, inrange i32 0, i64 2), ptr @_ZN11xalanc_1_10L14s_asinFunctionE, align 8, !tbaa !49
  %3 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_108FunctionD2Ev, ptr nonnull @_ZN11xalanc_1_10L14s_asinFunctionE, ptr nonnull @__dso_handle) #11
  tail call void @_ZN11xalanc_1_108FunctionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) @_ZN11xalanc_1_10L14s_atanFunctionE)
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1022XalanEXSLTFunctionAtanE, i64 0, inrange i32 0, i64 2), ptr @_ZN11xalanc_1_10L14s_atanFunctionE, align 8, !tbaa !49
  %4 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_108FunctionD2Ev, ptr nonnull @_ZN11xalanc_1_10L14s_atanFunctionE, ptr nonnull @__dso_handle) #11
  tail call void @_ZN11xalanc_1_108FunctionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) @_ZN11xalanc_1_10L15s_atan2FunctionE)
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1022XalanEXSLTFunctionAtanE, i64 0, inrange i32 0, i64 2), ptr @_ZN11xalanc_1_10L15s_atan2FunctionE, align 8, !tbaa !49
  %5 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_108FunctionD2Ev, ptr nonnull @_ZN11xalanc_1_10L15s_atan2FunctionE, ptr nonnull @__dso_handle) #11
  tail call void @_ZN11xalanc_1_108FunctionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) @_ZN11xalanc_1_10L18s_constantFunctionE)
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1026XalanEXSLTFunctionConstantE, i64 0, inrange i32 0, i64 2), ptr @_ZN11xalanc_1_10L18s_constantFunctionE, align 8, !tbaa !49
  %6 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_108FunctionD2Ev, ptr nonnull @_ZN11xalanc_1_10L18s_constantFunctionE, ptr nonnull @__dso_handle) #11
  tail call void @_ZN11xalanc_1_108FunctionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) @_ZN11xalanc_1_10L13s_cosFunctionE)
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1021XalanEXSLTFunctionCosE, i64 0, inrange i32 0, i64 2), ptr @_ZN11xalanc_1_10L13s_cosFunctionE, align 8, !tbaa !49
  %7 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_108FunctionD2Ev, ptr nonnull @_ZN11xalanc_1_10L13s_cosFunctionE, ptr nonnull @__dso_handle) #11
  tail call void @_ZN11xalanc_1_108FunctionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) @_ZN11xalanc_1_10L13s_expFunctionE)
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1021XalanEXSLTFunctionExpE, i64 0, inrange i32 0, i64 2), ptr @_ZN11xalanc_1_10L13s_expFunctionE, align 8, !tbaa !49
  %8 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_108FunctionD2Ev, ptr nonnull @_ZN11xalanc_1_10L13s_expFunctionE, ptr nonnull @__dso_handle) #11
  tail call void @_ZN11xalanc_1_108FunctionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) @_ZN11xalanc_1_10L17s_highestFunctionE)
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1025XalanEXSLTFunctionHighestE, i64 0, inrange i32 0, i64 2), ptr @_ZN11xalanc_1_10L17s_highestFunctionE, align 8, !tbaa !49
  %9 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_108FunctionD2Ev, ptr nonnull @_ZN11xalanc_1_10L17s_highestFunctionE, ptr nonnull @__dso_handle) #11
  tail call void @_ZN11xalanc_1_108FunctionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) @_ZN11xalanc_1_10L13s_logFunctionE)
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1021XalanEXSLTFunctionLogE, i64 0, inrange i32 0, i64 2), ptr @_ZN11xalanc_1_10L13s_logFunctionE, align 8, !tbaa !49
  %10 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_108FunctionD2Ev, ptr nonnull @_ZN11xalanc_1_10L13s_logFunctionE, ptr nonnull @__dso_handle) #11
  tail call void @_ZN11xalanc_1_108FunctionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) @_ZN11xalanc_1_10L16s_lowestFunctionE)
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1024XalanEXSLTFunctionLowestE, i64 0, inrange i32 0, i64 2), ptr @_ZN11xalanc_1_10L16s_lowestFunctionE, align 8, !tbaa !49
  %11 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_108FunctionD2Ev, ptr nonnull @_ZN11xalanc_1_10L16s_lowestFunctionE, ptr nonnull @__dso_handle) #11
  tail call void @_ZN11xalanc_1_108FunctionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) @_ZN11xalanc_1_10L13s_maxFunctionE)
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1021XalanEXSLTFunctionMaxE, i64 0, inrange i32 0, i64 2), ptr @_ZN11xalanc_1_10L13s_maxFunctionE, align 8, !tbaa !49
  %12 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_108FunctionD2Ev, ptr nonnull @_ZN11xalanc_1_10L13s_maxFunctionE, ptr nonnull @__dso_handle) #11
  tail call void @_ZN11xalanc_1_108FunctionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) @_ZN11xalanc_1_10L13s_minFunctionE)
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1021XalanEXSLTFunctionMinE, i64 0, inrange i32 0, i64 2), ptr @_ZN11xalanc_1_10L13s_minFunctionE, align 8, !tbaa !49
  %13 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_108FunctionD2Ev, ptr nonnull @_ZN11xalanc_1_10L13s_minFunctionE, ptr nonnull @__dso_handle) #11
  tail call void @_ZN11xalanc_1_108FunctionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) @_ZN11xalanc_1_10L15s_powerFunctionE)
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1023XalanEXSLTFunctionPowerE, i64 0, inrange i32 0, i64 2), ptr @_ZN11xalanc_1_10L15s_powerFunctionE, align 8, !tbaa !49
  %14 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_108FunctionD2Ev, ptr nonnull @_ZN11xalanc_1_10L15s_powerFunctionE, ptr nonnull @__dso_handle) #11
  tail call void @_ZN11xalanc_1_108FunctionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) @_ZN11xalanc_1_10L13s_sinFunctionE)
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1021XalanEXSLTFunctionSinE, i64 0, inrange i32 0, i64 2), ptr @_ZN11xalanc_1_10L13s_sinFunctionE, align 8, !tbaa !49
  %15 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_108FunctionD2Ev, ptr nonnull @_ZN11xalanc_1_10L13s_sinFunctionE, ptr nonnull @__dso_handle) #11
  tail call void @_ZN11xalanc_1_108FunctionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) @_ZN11xalanc_1_10L14s_sqrtFunctionE)
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1022XalanEXSLTFunctionSqrtE, i64 0, inrange i32 0, i64 2), ptr @_ZN11xalanc_1_10L14s_sqrtFunctionE, align 8, !tbaa !49
  %16 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_108FunctionD2Ev, ptr nonnull @_ZN11xalanc_1_10L14s_sqrtFunctionE, ptr nonnull @__dso_handle) #11
  tail call void @_ZN11xalanc_1_108FunctionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) @_ZN11xalanc_1_10L13s_tanFunctionE)
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1021XalanEXSLTFunctionTanE, i64 0, inrange i32 0, i64 2), ptr @_ZN11xalanc_1_10L13s_tanFunctionE, align 8, !tbaa !49
  %17 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_108FunctionD2Ev, ptr nonnull @_ZN11xalanc_1_10L13s_tanFunctionE, ptr nonnull @__dso_handle) #11
  tail call void @_ZN11xalanc_1_108FunctionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) @_ZN11xalanc_1_10L16s_randomFunctionE)
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1024XalanEXSLTFunctionRandomE, i64 0, inrange i32 0, i64 2), ptr @_ZN11xalanc_1_10L16s_randomFunctionE, align 8, !tbaa !49
  %18 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_108FunctionD2Ev, ptr nonnull @_ZN11xalanc_1_10L16s_randomFunctionE, ptr nonnull @__dso_handle) #11
  ret void
}

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn nounwind }
attributes #11 = { nounwind }
attributes #12 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!41}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 291165203993}
!8 = !{!"MaxCount", i64 30012997636}
!9 = !{!"MaxInternalCount", i64 22313335011}
!10 = !{!"MaxFunctionCount", i64 30012997636}
!11 = !{!"NumCounts", i64 82185}
!12 = !{!"NumFunctions", i64 15169}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 30012997636, i32 1}
!18 = !{i32 100000, i64 30012997636, i32 1}
!19 = !{i32 200000, i64 28750937236, i32 2}
!20 = !{i32 300000, i64 22313335011, i32 4}
!21 = !{i32 400000, i64 22313318476, i32 5}
!22 = !{i32 500000, i64 22291044611, i32 6}
!23 = !{i32 600000, i64 16685493830, i32 8}
!24 = !{i32 700000, i64 11836361228, i32 10}
!25 = !{i32 800000, i64 1835010489, i32 17}
!26 = !{i32 900000, i64 917973775, i32 41}
!27 = !{i32 950000, i64 89504425, i32 134}
!28 = !{i32 990000, i64 22419101, i32 349}
!29 = !{i32 999000, i64 832910, i32 928}
!30 = !{i32 999900, i64 93159, i32 1814}
!31 = !{i32 999990, i64 19206, i32 2310}
!32 = !{i32 999999, i64 550, i32 2997}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40}
!35 = !{ptr @_ZN11xalanc_1_1032XalanEXSLTMathFunctionsInstaller13installGlobalERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1024XalanExtensionsInstaller15doInstallGlobalERN11xercesc_2_713MemoryManagerEPKtPKNS0_18FunctionTableEntryE, i64 1}
!36 = !{ptr @_ZN11xalanc_1_1032XalanEXSLTMathFunctionsInstaller13installGlobalERN11xercesc_2_713MemoryManagerE, ptr @time, i64 1}
!37 = !{ptr @_ZN11xalanc_1_1032XalanEXSLTMathFunctionsInstaller13installGlobalERN11xercesc_2_713MemoryManagerE, ptr @srand, i64 1}
!38 = !{ptr @_ZN11xalanc_1_1032XalanEXSLTMathFunctionsInstaller15uninstallGlobalERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1024XalanExtensionsInstaller17doUninstallGlobalERN11xercesc_2_713MemoryManagerEPKtPKNS0_18FunctionTableEntryE, i64 1}
!39 = !{ptr @_GLOBAL__sub_I_XalanEXSLTMath.cpp, ptr @_ZN11xalanc_1_108FunctionC2Ev, i64 18}
!40 = !{ptr @_GLOBAL__sub_I_XalanEXSLTMath.cpp, ptr @__cxa_atexit, i64 18}
!41 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!42 = !{!"function_entry_count", i64 0}
!43 = !{!44, !48, i64 8}
!44 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEEE", !45, i64 0, !48, i64 8, !48, i64 16, !45, i64 24}
!45 = !{!"any pointer", !46, i64 0}
!46 = !{!"omnipotent char", !47, i64 0}
!47 = !{!"Simple C++ TBAA"}
!48 = !{!"long", !46, i64 0}
!49 = !{!50, !50, i64 0}
!50 = !{!"vtable pointer", !47, i64 0}
!51 = !{!44, !45, i64 24}
!52 = !{!53, !45, i64 0}
!53 = !{!"_ZTSN11xalanc_1_1010XObjectPtrE", !45, i64 0}
!54 = !{!55, !45, i64 0}
!55 = !{!"_ZTSN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListE", !45, i64 0, !45, i64 8}
!56 = !{!55, !45, i64 8}
!57 = !{!58, !62, i64 40}
!58 = !{!"_ZTSN11xalanc_1_1018MutableNodeRefListE", !59, i64 0, !62, i64 40}
!59 = !{!"_ZTSN11xalanc_1_1011NodeRefListE", !60, i64 0, !61, i64 8}
!60 = !{!"_ZTSN11xalanc_1_1015NodeRefListBaseE"}
!61 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEE", !45, i64 0, !48, i64 8, !48, i64 16, !45, i64 24}
!62 = !{!"_ZTSN11xalanc_1_1018MutableNodeRefList6eOrderE", !46, i64 0}
!63 = !{!64, !45, i64 8}
!64 = !{!"_ZTSN11xalanc_1_1016ExecutionContextE", !45, i64 8}
!65 = !{!66, !48, i64 8}
!66 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !45, i64 0, !48, i64 8, !48, i64 16, !45, i64 24}
!67 = !{!46, !46, i64 0}
!68 = !{!69, !70, i64 32}
!69 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !66, i64 0, !70, i64 32}
!70 = !{!"int", !46, i64 0}
!71 = distinct !{!71, !72, !73}
!72 = !{!"llvm.loop.mustprogress"}
!73 = !{!"llvm.loop.unroll.disable"}
!74 = !{!75, !45, i64 16}
!75 = !{!"_ZTSN11xalanc_1_1021XPathExecutionContextE", !64, i64 0, !45, i64 16}
!76 = distinct !{!76, !72, !73}
!77 = !{!78, !78, i64 0}
!78 = !{!"double", !46, i64 0}
!79 = !{!80}
!80 = distinct !{!80, !81, !"_ZN11xalanc_1_109doConvertERNS_21XPathExecutionContextEPKdmd: argument 0"}
!81 = distinct !{!81, !"_ZN11xalanc_1_109doConvertERNS_21XPathExecutionContextEPKdmd"}
!82 = !{!83}
!83 = distinct !{!83, !84, !"_ZN11xalanc_1_109doConvertERNS_21XPathExecutionContextEPKdmd: argument 0"}
!84 = distinct !{!84, !"_ZN11xalanc_1_109doConvertERNS_21XPathExecutionContextEPKdmd"}
!85 = !{!86}
!86 = distinct !{!86, !87, !"_ZN11xalanc_1_109doConvertERNS_21XPathExecutionContextEPKdmd: argument 0"}
!87 = distinct !{!87, !"_ZN11xalanc_1_109doConvertERNS_21XPathExecutionContextEPKdmd"}
!88 = !{!89}
!89 = distinct !{!89, !90, !"_ZN11xalanc_1_109doConvertERNS_21XPathExecutionContextEPKdmd: argument 0"}
!90 = distinct !{!90, !"_ZN11xalanc_1_109doConvertERNS_21XPathExecutionContextEPKdmd"}
!91 = !{!92}
!92 = distinct !{!92, !93, !"_ZN11xalanc_1_109doConvertERNS_21XPathExecutionContextEPKdmd: argument 0"}
!93 = distinct !{!93, !"_ZN11xalanc_1_109doConvertERNS_21XPathExecutionContextEPKdmd"}
!94 = !{!95}
!95 = distinct !{!95, !96, !"_ZN11xalanc_1_109doConvertERNS_21XPathExecutionContextEPKdmd: argument 0"}
!96 = distinct !{!96, !"_ZN11xalanc_1_109doConvertERNS_21XPathExecutionContextEPKdmd"}
!97 = !{!"function_entry_count", i64 1}
!98 = !{!"VP", i32 0, i64 1, i64 8345045103670217670, i64 1}
!99 = !{!"function_entry_count", i64 2}
!100 = !{!"VP", i32 0, i64 2, i64 8345045103670217670, i64 2}
!101 = !{!"XalanEXSLTMath.cpp;_GLOBAL__sub_I_XalanEXSLTMath.cpp"}
