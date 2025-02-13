; ModuleID = 'XalanExe.cpp'
source_filename = "XalanExe.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.0" = type { ptr, i64, i64, ptr }
%class.Params = type { i8, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %"class.xalanc_1_10::XalanArrayAutoPtr", i64, i64 }
%"class.xalanc_1_10::XalanArrayAutoPtr" = type { ptr }
%"struct.Params::ParamPair" = type { ptr, ptr }
%"class.xalanc_1_10::XalanTransformer" = type { ptr, ptr, %"class.xalanc_1_10::XalanVector.1", %"class.xalanc_1_10::XalanVector.2", %"class.xalanc_1_10::XalanVector.3", %"class.xalanc_1_10::XalanVector.4", %"class.xalanc_1_10::XalanVector.5", %"class.xalanc_1_10::XalanVector.0", i8, ptr, ptr, %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString", ptr, ptr, %"class.xalanc_1_10::XalanDOMString", i8, ptr }
%"class.xalanc_1_10::XalanVector.1" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.2" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.3" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.4" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.5" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XSLTInputSource" = type { %"class.xercesc_2_7::InputSource.base", ptr, ptr }
%"class.xercesc_2_7::InputSource.base" = type <{ ptr, ptr, ptr, ptr, ptr, i8 }>
%"class.xalanc_1_10::XSLTResultTarget" = type { %"class.xalanc_1_10::XalanDOMString", ptr, %"class.xalanc_1_10::XalanDOMString", ptr, ptr, ptr }
%"class.xalanc_1_10::XalanTransformer::EnsureDestroyParsedSource" = type { ptr, ptr }
%"struct.xalanc_1_10::XalanTransformer::EnsureDestroyCompiledStylesheet" = type { ptr, ptr }

$_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEC2ERN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEixEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_1014XalanDOMStringD2Ev = comdat any

$_ZN6Params8addParamEPKcS1_ = comdat any

$_ZN6ParamsC2Em = comdat any

$_ZNK6Params9setParamsERN11xalanc_1_1016XalanTransformerE = comdat any

$_Z9transformRN11xalanc_1_1016XalanTransformerERK6Params = comdat any

$_ZNK11xalanc_1_1016XalanTransformer12getLastErrorEv = comdat any

$_ZN6ParamsD2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv = comdat any

$_ZNK11xalanc_1_1017XalanArrayAutoPtrIN6Params9ParamPairEE3getEv = comdat any

$_ZN11xalanc_1_1017XalanArrayAutoPtrIN6Params9ParamPairEE5resetEPS2_ = comdat any

$_ZN6Params9ParamPairC2Ev = comdat any

$_ZNK11xalanc_1_1017XalanArrayAutoPtrIN6Params9ParamPairEEixEm = comdat any

$_ZN11xalanc_1_1017XalanArrayAutoPtrIN6Params9ParamPairEEC2EPS2_ = comdat any

$_ZN11xalanc_1_1016XalanTransformer16setUseValidationEb = comdat any

$_Z9transformRN11xalanc_1_1016XalanTransformerERK6ParamsRKNS_15XSLTInputSourceE = comdat any

$_ZN11xalanc_1_1012XalanMemMgrs10getDefaultEv = comdat any

$_Z9transformRN11xalanc_1_1016XalanTransformerERK6ParamsRKNS_15XSLTInputSourceES7_ = comdat any

$_ZN11xalanc_1_1016XalanTransformer16getMemoryManagerEv = comdat any

$_ZN11xalanc_1_1016XSLTResultTarget11setEncodingERKNS_14XalanDOMStringE = comdat any

$_ZN11xalanc_1_1016XSLTResultTarget11setFileNameEPKc = comdat any

$_ZN11xalanc_1_1016XSLTResultTarget13setByteStreamEPSo = comdat any

$_Z9transformRN11xalanc_1_1016XalanTransformerERK6ParamsRKNS_15XSLTInputSourceERKNS_16XSLTResultTargetE = comdat any

$_Z9transformRN11xalanc_1_1016XalanTransformerERK6ParamsRKNS_15XSLTInputSourceES7_RKNS_16XSLTResultTargetE = comdat any

$_ZN11xalanc_1_1014XalanDOMStringaSERKS0_ = comdat any

$_ZN11xalanc_1_1014XalanDOMString6assignERKS0_ = comdat any

$_ZNK11xalanc_1_1014XalanDOMString10invariantsEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_ = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE12shrinkToSizeEm = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_ = comdat any

$_ZSt4copyIPKtPtET0_T_S4_S3_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9local_maxEmm = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8allocateEm = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8pop_backEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14local_distanceEPKtS5_ = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4sizeEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14ensureCapacityEm = comdat any

$_ZN11xalanc_1_1028ConstructWithNoMemoryManagerItE9constructEPtRKtRN11xercesc_2_713MemoryManagerE = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8capacityEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt = comdat any

$_ZSt13copy_backwardIPtS0_ET0_T_S2_S1_ = comdat any

$_ZSt8distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_ = comdat any

$_ZSt10__distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag = comdat any

$_ZSt19__iterator_categoryIPKtENSt15iterator_traitsIT_E17iterator_categoryERKS3_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm = comdat any

$_ZSt22__copy_move_backward_aILb0EPtS0_ET1_T0_S2_S1_ = comdat any

$_ZSt12__miter_baseIPtET_S1_ = comdat any

$_ZSt12__niter_wrapIPtET_RKS1_S1_ = comdat any

$_ZSt23__copy_move_backward_a1ILb0EPtS0_ET1_T0_S2_S1_ = comdat any

$_ZSt12__niter_baseIPtET_S1_ = comdat any

$_ZSt23__copy_move_backward_a2ILb0EPtS0_ET1_T0_S2_S1_ = comdat any

$_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bItEEPT_PKS3_S6_S4_ = comdat any

$_ZSt13__copy_move_aILb0EPKtPtET1_T0_S4_S3_ = comdat any

$_ZSt12__miter_baseIPKtET_S2_ = comdat any

$_ZSt14__copy_move_a1ILb0EPKtPtET1_T0_S4_S3_ = comdat any

$_ZSt12__niter_baseIPKtET_S2_ = comdat any

$_ZSt14__copy_move_a2ILb0EPKtPtET1_T0_S4_S3_ = comdat any

$_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mItEEPT_PKS3_S6_S4_ = comdat any

$_ZN11xalanc_1_1014XalanDOMString5clearEv = comdat any

$_ZN11xalanc_1_1014XalanDOMStringaSEPKc = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5eraseEPtS4_ = comdat any

$_ZSt4copyIPtS0_ET0_T_S2_S1_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE11shrinkCountEm = comdat any

$_ZSt13__copy_move_aILb0EPtS0_ET1_T0_S2_S1_ = comdat any

$_ZSt14__copy_move_a1ILb0EPtS0_ET1_T0_S2_S1_ = comdat any

$_ZSt14__copy_move_a2ILb0EPtS0_ET1_T0_S2_S1_ = comdat any

$_ZN11xalanc_1_1014XalanDOMString6assignEPKc = comdat any

$_ZN11xalanc_1_1014XalanDOMString6appendEPKc = comdat any

$_ZN11xalanc_1_1016XalanTransformer9transformERKNS_15XSLTInputSourceERKNS_16XSLTResultTargetE = comdat any

$_Z8getClockv = comdat any

$_Z25reportElapsedMillisecondsPKcllRSo = comdat any

$_ZN11xalanc_1_1016XalanTransformer25EnsureDestroyParsedSourceC2ERS0_PKNS_17XalanParsedSourceE = comdat any

$_ZN11xalanc_1_1016XalanTransformer9transformERKNS_17XalanParsedSourceERKNS_16XSLTResultTargetE = comdat any

$_ZN11xalanc_1_1016XalanTransformer25EnsureDestroyParsedSourceD2Ev = comdat any

$_ZN11xalanc_1_1016XalanTransformer9transformERKNS_17XalanParsedSourceERKNS_15XSLTInputSourceERKNS_16XSLTResultTargetE = comdat any

$_ZN11xalanc_1_1016XalanTransformer31EnsureDestroyCompiledStylesheetC2ERS0_PKNS_23XalanCompiledStylesheetE = comdat any

$_ZN11xalanc_1_1016XalanTransformer9transformERKNS_17XalanParsedSourceEPKNS_23XalanCompiledStylesheetERKNS_16XSLTResultTargetE = comdat any

$_ZN11xalanc_1_1016XalanTransformer31EnsureDestroyCompiledStylesheetD2Ev = comdat any

$_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEixEm = comdat any

$_ZN11xalanc_1_1017XalanArrayAutoPtrIN6Params9ParamPairEED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE8allocateEm = comdat any

$_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10invariantsEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE7destroyEPcS4_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE5beginEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10deallocateEPc = comdat any

$_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE7destroyERc = comdat any

$_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10endPointerEv = comdat any

$_ZTSN11xalanc_1_1014XalanDOMString16TranscodingErrorE = comdat any

$_ZTIN11xalanc_1_1014XalanDOMString16TranscodingErrorE = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@.str = private unnamed_addr constant [7 x i8] c"1.10.0\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"2.7.0\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1014XalanDOMString16TranscodingErrorE = linkonce_odr dso_local constant [50 x i8] c"N11xalanc_1_1014XalanDOMString16TranscodingErrorE\00", comdat, align 1
@_ZTIN11xalanc_1_1017XalanDOMExceptionE = external constant ptr
@_ZTIN11xalanc_1_1014XalanDOMString16TranscodingErrorE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1014XalanDOMString16TranscodingErrorE, ptr @_ZTIN11xalanc_1_1017XalanDOMExceptionE }, comdat, align 8
@_ZSt4cerr = external global %"class.std::basic_ostream", align 8
@.str.2 = private unnamed_addr constant [53 x i8] c"Transcoding error: wrong XalanC or XercesC versions.\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Cannot read help message \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.5 = private unnamed_addr constant [57 x i8] c"Maximum numbers of stylesheets params has been exceeded!\00", align 1
@_ZN11xercesc_2_76XMLUni22fgXercescDefaultLocaleE = external constant [0 x i8], align 1
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str.6 = private unnamed_addr constant [27 x i8] c"Source tree parsing time: \00", align 1
@.str.7 = private unnamed_addr constant [56 x i8] c"Transformation time, including stylesheet compilation: \00", align 1
@_ZN11xalanc_1_1016XalanTransformer18s_emptyInputSourceE = external local_unnamed_addr global ptr, align 8
@.str.8 = private unnamed_addr constant [16 x i8] c" milliseconds.\0A\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"Stylesheet compilation time: \00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"Transformation time: \00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_XalanExe.cpp, ptr null }]

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit) #18
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #19
  ret void
}

; Function Attrs: optsize
declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_Z5Usagev() local_unnamed_addr #4 personality ptr @__gxx_personality_v0 !prof !186 {
  %1 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %2 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %3 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  %4 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  %5 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  %6 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %7 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs22getDefaultXercesMemMgrEv() #18
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %1) #19
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %7) #18
  %8 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKcS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef 154, ptr noundef nonnull @.str, ptr noundef null, ptr noundef null, ptr noundef null) #18
          to label %9 unwind label %27

9:                                                ; preds = %0
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #19
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(8) %7) #18
          to label %10 unwind label %31

10:                                               ; preds = %9
  %11 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKcS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36) %2, i32 noundef 155, ptr noundef nonnull @.str.1, ptr noundef null, ptr noundef null, ptr noundef null) #18
          to label %12 unwind label %35

12:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  invoke void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef 0) #18
          to label %13 unwind label %39

13:                                               ; preds = %12
  invoke void @_ZNK11xalanc_1_1014XalanDOMString9transcodeERNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEE(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(32) %3) #18
          to label %14 unwind label %41

14:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #19
  invoke void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef 0) #18
          to label %15 unwind label %43

15:                                               ; preds = %14
  invoke void @_ZNK11xalanc_1_1014XalanDOMString9transcodeERNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEE(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(32) %4) #18
          to label %16 unwind label %45

16:                                               ; preds = %15
  %17 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0) #18
  %18 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %17) #18
          to label %19 unwind label %45

19:                                               ; preds = %16
  %20 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_) #18
          to label %21 unwind label %45

21:                                               ; preds = %19
  %22 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0) #18
  %23 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %22) #18
          to label %24 unwind label %45

24:                                               ; preds = %21
  %25 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_) #18
          to label %26 unwind label %45

26:                                               ; preds = %24
  call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #19
  call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  br label %65

27:                                               ; preds = %0
  %28 = landingpad { ptr, i32 }
          cleanup
  %29 = extractvalue { ptr, i32 } %28, 0
  %30 = extractvalue { ptr, i32 } %28, 1
  br label %141

31:                                               ; preds = %9
  %32 = landingpad { ptr, i32 }
          cleanup
  %33 = extractvalue { ptr, i32 } %32, 0
  %34 = extractvalue { ptr, i32 } %32, 1
  br label %138

35:                                               ; preds = %10
  %36 = landingpad { ptr, i32 }
          cleanup
  %37 = extractvalue { ptr, i32 } %36, 0
  %38 = extractvalue { ptr, i32 } %36, 1
  br label %135

39:                                               ; preds = %12
  %40 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xalanc_1_1014XalanDOMString16TranscodingErrorE
  br label %51

41:                                               ; preds = %13
  %42 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xalanc_1_1014XalanDOMString16TranscodingErrorE
  br label %49

43:                                               ; preds = %14
  %44 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xalanc_1_1014XalanDOMString16TranscodingErrorE
  br label %47

45:                                               ; preds = %24, %21, %19, %16, %15
  %46 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xalanc_1_1014XalanDOMString16TranscodingErrorE
  call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #20
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi { ptr, i32 } [ %46, %45 ], [ %44, %43 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #19
  br label %49

49:                                               ; preds = %47, %41
  %50 = phi { ptr, i32 } [ %48, %47 ], [ %42, %41 ]
  call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #20
  br label %51

51:                                               ; preds = %49, %39
  %52 = phi { ptr, i32 } [ %50, %49 ], [ %40, %39 ]
  %53 = extractvalue { ptr, i32 } %52, 0
  %54 = extractvalue { ptr, i32 } %52, 1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  %55 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xalanc_1_1014XalanDOMString16TranscodingErrorE) #19
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %135

57:                                               ; preds = %51
  %58 = call ptr @__cxa_begin_catch(ptr %53) #19
  %59 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_) #18
          to label %60 unwind label %71

60:                                               ; preds = %57
  %61 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %59, ptr noundef nonnull @.str.2) #18
          to label %62 unwind label %71

62:                                               ; preds = %60
  %63 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %61, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_) #18
          to label %64 unwind label %71

64:                                               ; preds = %62
  invoke void @__cxa_end_catch()
          to label %65 unwind label %73

65:                                               ; preds = %64, %26
  %66 = phi i1 [ false, %26 ], [ true, %64 ]
  %67 = phi i1 [ true, %26 ], [ false, %64 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #19
  invoke void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef 0) #18
          to label %68 unwind label %79

68:                                               ; preds = %65
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #19
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull align 8 dereferenceable(8) %7) #18
          to label %69 unwind label %83

69:                                               ; preds = %68
  br i1 %66, label %70, label %87

70:                                               ; preds = %114, %113, %69
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %6) #20
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #19
  call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %2) #20
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #19
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %1) #20
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %1) #19
  ret void

71:                                               ; preds = %62, %60, %57
  %72 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %75 unwind label %146

73:                                               ; preds = %64
  %74 = landingpad { ptr, i32 }
          cleanup
  br label %75

75:                                               ; preds = %71, %73
  %76 = phi { ptr, i32 } [ %74, %73 ], [ %72, %71 ]
  %77 = extractvalue { ptr, i32 } %76, 0
  %78 = extractvalue { ptr, i32 } %76, 1
  br label %135

79:                                               ; preds = %65
  %80 = landingpad { ptr, i32 }
          cleanup
  %81 = extractvalue { ptr, i32 } %80, 0
  %82 = extractvalue { ptr, i32 } %80, 1
  br label %132

83:                                               ; preds = %68
  %84 = landingpad { ptr, i32 }
          cleanup
  %85 = extractvalue { ptr, i32 } %84, 0
  %86 = extractvalue { ptr, i32 } %84, 1
  br label %129

87:                                               ; preds = %69, %114
  %88 = phi i32 [ %115, %114 ], [ 156, %69 ]
  %89 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(36) %6, i32 noundef %88) #18
          to label %90 unwind label %96

90:                                               ; preds = %87
  invoke void @_ZNK11xalanc_1_1014XalanDOMString9transcodeERNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEE(ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull align 8 dereferenceable(32) %5) #18
          to label %91 unwind label %96

91:                                               ; preds = %90
  %92 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0) #18
  %93 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %92) #18
          to label %94 unwind label %96

94:                                               ; preds = %91
  %95 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %93, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_) #18
          to label %114 unwind label %96

96:                                               ; preds = %94, %91, %90, %87
  %97 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xalanc_1_1014XalanDOMString16TranscodingErrorE
  %98 = extractvalue { ptr, i32 } %97, 0
  %99 = extractvalue { ptr, i32 } %97, 1
  %100 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xalanc_1_1014XalanDOMString16TranscodingErrorE) #19
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %126

102:                                              ; preds = %96
  %103 = call ptr @__cxa_begin_catch(ptr %98) #19
  %104 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_) #18
          to label %105 unwind label %118

105:                                              ; preds = %102
  %106 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %104, ptr noundef nonnull @.str.3) #18
          to label %107 unwind label %118

107:                                              ; preds = %105
  %108 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %106, i32 noundef %88) #18
          to label %109 unwind label %118

109:                                              ; preds = %107
  %110 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %108, ptr noundef nonnull @.str.4) #18
          to label %111 unwind label %118

111:                                              ; preds = %109
  %112 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %110, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_) #18
          to label %113 unwind label %118

113:                                              ; preds = %111
  invoke void @__cxa_end_catch()
          to label %70 unwind label %120

114:                                              ; preds = %94
  %115 = add nuw nsw i32 %88, 1
  %116 = icmp ult i32 %88, 169
  %117 = and i1 %67, %116
  br i1 %117, label %87, label %70, !llvm.loop !187

118:                                              ; preds = %111, %109, %107, %105, %102
  %119 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %122 unwind label %146

120:                                              ; preds = %113
  %121 = landingpad { ptr, i32 }
          cleanup
  br label %122

122:                                              ; preds = %118, %120
  %123 = phi { ptr, i32 } [ %121, %120 ], [ %119, %118 ]
  %124 = extractvalue { ptr, i32 } %123, 0
  %125 = extractvalue { ptr, i32 } %123, 1
  br label %126

126:                                              ; preds = %96, %122
  %127 = phi i32 [ %125, %122 ], [ %99, %96 ]
  %128 = phi ptr [ %124, %122 ], [ %98, %96 ]
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %6) #20
  br label %129

129:                                              ; preds = %126, %83
  %130 = phi i32 [ %127, %126 ], [ %86, %83 ]
  %131 = phi ptr [ %128, %126 ], [ %85, %83 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #19
  call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #20
  br label %132

132:                                              ; preds = %129, %79
  %133 = phi i32 [ %130, %129 ], [ %82, %79 ]
  %134 = phi ptr [ %131, %129 ], [ %81, %79 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  br label %135

135:                                              ; preds = %132, %75, %51, %35
  %136 = phi i32 [ %133, %132 ], [ %78, %75 ], [ %54, %51 ], [ %38, %35 ]
  %137 = phi ptr [ %134, %132 ], [ %77, %75 ], [ %53, %51 ], [ %37, %35 ]
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %2) #20
  br label %138

138:                                              ; preds = %135, %31
  %139 = phi i32 [ %136, %135 ], [ %34, %31 ]
  %140 = phi ptr [ %137, %135 ], [ %33, %31 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #19
  br label %141

141:                                              ; preds = %138, %27
  %142 = phi i32 [ %139, %138 ], [ %30, %27 ]
  %143 = phi ptr [ %140, %138 ], [ %29, %27 ]
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %1) #20
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %1) #19
  %144 = insertvalue { ptr, i32 } poison, ptr %143, 0
  %145 = insertvalue { ptr, i32 } %144, i32 %142, 1
  resume { ptr, i32 } %145

146:                                              ; preds = %118, %71
  %147 = landingpad { ptr, i32 }
          catch ptr null
  %148 = extractvalue { ptr, i32 } %147, 0
  call void @__clang_call_terminate(ptr %148) #21
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs22getDefaultXercesMemMgrEv() local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKcS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) unnamed_addr #4 comdat align 2 !prof !189 {
  store ptr %1, ptr %0, align 8, !tbaa !190
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  store i64 0, ptr %4, align 8, !tbaa !196
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  store i64 %2, ptr %5, align 8, !tbaa !197
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %9, label %7, !prof !198

7:                                                ; preds = %3
  %8 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %2) #18
  br label %9

9:                                                ; preds = %3, %7
  %10 = phi ptr [ %8, %7 ], [ null, %3 ]
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  store ptr %10, ptr %11, align 8, !tbaa !199
  tail call void @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  ret void
}

; Function Attrs: optsize
declare void @_ZNK11xalanc_1_1014XalanDOMString9transcodeERNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 !prof !200 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !199
  %5 = getelementptr inbounds i8, ptr %4, i64 %1
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4 align 2

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !201 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !197
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !202

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %7 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
          to label %8 unwind label %13

8:                                                ; preds = %5
  invoke void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE7destroyEPcS4_(ptr noundef %6, ptr noundef %7) #18
          to label %9 unwind label %13

9:                                                ; preds = %8
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !199
  invoke void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10deallocateEPc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %11) #18
          to label %12 unwind label %13

12:                                               ; preds = %9, %1
  ret void

13:                                               ; preds = %9, %8, %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #21
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #7

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #19
  tail call void @_ZSt9terminatev() #21
  unreachable
}

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #6 comdat align 2 !prof !203 {
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #20
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_Z7getArgsiPPcR6Params(i32 noundef %0, ptr nocapture noundef readonly %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #4 !prof !204 {
  %4 = icmp sgt i32 %0, 1
  br i1 %4, label %5, label %8, !prof !205

5:                                                ; preds = %3
  %6 = getelementptr inbounds %class.Params, ptr %2, i64 0, i32 6
  %7 = getelementptr inbounds %class.Params, ptr %2, i64 0, i32 7
  br label %14

8:                                                ; preds = %125, %3
  %9 = phi i1 [ true, %3 ], [ %131, %125 ]
  %10 = getelementptr inbounds %class.Params, ptr %2, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  %13 = select i1 %9, i1 %12, i1 false
  br i1 %13, label %147, label %133, !prof !206

14:                                               ; preds = %5, %125
  %15 = phi i8 [ 1, %5 ], [ %127, %125 ]
  %16 = phi i32 [ 1, %5 ], [ %128, %125 ]
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds ptr, ptr %1, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !207
  %20 = load i8, ptr %19, align 1
  %21 = icmp eq i8 %20, 45
  br i1 %21, label %22, label %97, !prof !208

22:                                               ; preds = %14
  %23 = getelementptr inbounds i8, ptr %19, i64 1
  %24 = load i8, ptr %23, align 1, !tbaa !209
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %102, label %26, !prof !210

26:                                               ; preds = %22
  %27 = getelementptr inbounds i8, ptr %19, i64 2
  %28 = load i8, ptr %27, align 1, !tbaa !209
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %122, !prof !211

30:                                               ; preds = %26
  %31 = load ptr, ptr %6, align 8, !tbaa !212
  %32 = icmp eq ptr %31, null
  %33 = load ptr, ptr %7, align 8
  %34 = icmp eq ptr %33, null
  %35 = select i1 %32, i1 %34, i1 false
  br i1 %35, label %36, label %122, !prof !217

36:                                               ; preds = %30
  switch i8 %24, label %122 [
    i8 97, label %37
    i8 101, label %39
    i8 105, label %49
    i8 109, label %60
    i8 111, label %62
    i8 112, label %72
    i8 116, label %92
    i8 117, label %94
    i8 118, label %96
  ], !prof !218

37:                                               ; preds = %36
  %38 = getelementptr inbounds %class.Params, ptr %2, i64 0, i32 1
  store i8 1, ptr %38, align 1, !tbaa !219
  br label %125

39:                                               ; preds = %36
  %40 = add nsw i32 %16, 1
  %41 = icmp slt i32 %40, %0
  br i1 %41, label %42, label %122

42:                                               ; preds = %39
  %43 = sext i32 %40 to i64
  %44 = getelementptr inbounds ptr, ptr %1, i64 %43
  %45 = load ptr, ptr %44, align 8, !tbaa !207
  %46 = load i8, ptr %45, align 1
  switch i8 %46, label %47 [
    i8 45, label %122
    i8 0, label %122
  ]

47:                                               ; preds = %42
  %48 = getelementptr inbounds %class.Params, ptr %2, i64 0, i32 9
  store ptr %45, ptr %48, align 8, !tbaa !220
  br label %125

49:                                               ; preds = %36
  %50 = add nsw i32 %16, 1
  %51 = icmp slt i32 %50, %0
  br i1 %51, label %52, label %122

52:                                               ; preds = %49
  %53 = sext i32 %50 to i64
  %54 = getelementptr inbounds ptr, ptr %1, i64 %53
  %55 = load ptr, ptr %54, align 8, !tbaa !207
  %56 = load i8, ptr %55, align 1
  switch i8 %56, label %57 [
    i8 45, label %122
    i8 0, label %122
  ]

57:                                               ; preds = %52
  %58 = getelementptr inbounds %class.Params, ptr %2, i64 0, i32 5
  %59 = tail call i32 @atoi(ptr nocapture noundef nonnull %55) #22
  store i32 %59, ptr %58, align 8, !tbaa !221
  br label %125

60:                                               ; preds = %36
  %61 = getelementptr inbounds %class.Params, ptr %2, i64 0, i32 2
  store i8 1, ptr %61, align 2, !tbaa !222
  br label %125

62:                                               ; preds = %36
  %63 = add nsw i32 %16, 1
  %64 = icmp slt i32 %63, %0
  br i1 %64, label %65, label %122

65:                                               ; preds = %62
  %66 = sext i32 %63 to i64
  %67 = getelementptr inbounds ptr, ptr %1, i64 %66
  %68 = load ptr, ptr %67, align 8, !tbaa !207
  %69 = load i8, ptr %68, align 1
  switch i8 %69, label %70 [
    i8 45, label %122
    i8 0, label %122
  ]

70:                                               ; preds = %65
  %71 = getelementptr inbounds %class.Params, ptr %2, i64 0, i32 8
  store ptr %68, ptr %71, align 8, !tbaa !223
  br label %125

72:                                               ; preds = %36
  %73 = add nsw i32 %16, 1
  %74 = icmp slt i32 %73, %0
  br i1 %74, label %75, label %122

75:                                               ; preds = %72
  %76 = sext i32 %73 to i64
  %77 = getelementptr inbounds ptr, ptr %1, i64 %76
  %78 = load ptr, ptr %77, align 8, !tbaa !207
  %79 = load i8, ptr %78, align 1, !tbaa !209
  %80 = icmp eq i8 %79, 45
  br i1 %80, label %122, label %81

81:                                               ; preds = %75
  %82 = add nsw i32 %16, 2
  %83 = icmp slt i32 %82, %0
  br i1 %83, label %84, label %122

84:                                               ; preds = %81
  %85 = sext i32 %82 to i64
  %86 = getelementptr inbounds ptr, ptr %1, i64 %85
  %87 = load ptr, ptr %86, align 8, !tbaa !207
  %88 = tail call noundef zeroext i1 @_ZN6Params8addParamEPKcS1_(ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull %78, ptr noundef %87) #18
  br i1 %88, label %125, label %89

89:                                               ; preds = %84
  %90 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.5) #18
  %91 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %90, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_) #18
  br label %122

92:                                               ; preds = %36
  %93 = getelementptr inbounds %class.Params, ptr %2, i64 0, i32 4
  store i8 1, ptr %93, align 4, !tbaa !224
  br label %125

94:                                               ; preds = %36
  %95 = getelementptr inbounds %class.Params, ptr %2, i64 0, i32 3
  store i8 1, ptr %95, align 1, !tbaa !225
  br label %125

96:                                               ; preds = %36
  store i8 1, ptr %2, align 8, !tbaa !226
  br label %125

97:                                               ; preds = %14
  %98 = load ptr, ptr %6, align 8, !tbaa !212
  %99 = icmp ne ptr %98, null
  %100 = icmp eq i8 %20, 0
  %101 = or i1 %100, %99
  br i1 %101, label %109, label %105, !prof !227

102:                                              ; preds = %22
  %103 = load ptr, ptr %6, align 8, !tbaa !212
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %109, !prof !228

105:                                              ; preds = %97, %102
  store ptr %19, ptr %6, align 8, !tbaa !212
  %106 = load i8, ptr %19, align 1
  %107 = icmp eq i8 %106, 0
  %108 = select i1 %107, i8 0, i8 %15, !prof !210
  br label %125

109:                                              ; preds = %102, %97
  %110 = load ptr, ptr %7, align 8, !tbaa !229
  %111 = icmp eq ptr %110, null
  br i1 %111, label %112, label %122, !prof !211

112:                                              ; preds = %109
  %113 = getelementptr inbounds %class.Params, ptr %2, i64 0, i32 1
  %114 = icmp ne i8 %20, 0
  %115 = load i8, ptr %113, align 1, !range !230
  %116 = icmp eq i8 %115, 0
  %117 = select i1 %114, i1 %116, i1 false
  br i1 %117, label %118, label %122, !prof !217

118:                                              ; preds = %112
  store ptr %19, ptr %7, align 8, !tbaa !229
  %119 = load i8, ptr %19, align 1
  %120 = icmp eq i8 %119, 0
  %121 = select i1 %120, i8 0, i8 %15, !prof !210
  br label %125

122:                                              ; preds = %109, %112, %36, %81, %72, %75, %62, %65, %65, %49, %52, %52, %39, %42, %42, %30, %26, %89
  %123 = getelementptr inbounds %class.Params, ptr %2, i64 0, i32 6
  %124 = load ptr, ptr %123, align 8
  br label %133

125:                                              ; preds = %118, %105, %84, %47, %60, %94, %96, %92, %70, %57, %37
  %126 = phi i32 [ %16, %37 ], [ %40, %47 ], [ %50, %57 ], [ %16, %60 ], [ %63, %70 ], [ %16, %92 ], [ %16, %94 ], [ %16, %96 ], [ %82, %84 ], [ %16, %105 ], [ %16, %118 ]
  %127 = phi i8 [ %15, %37 ], [ %15, %47 ], [ %15, %57 ], [ %15, %60 ], [ %15, %70 ], [ %15, %92 ], [ %15, %94 ], [ %15, %96 ], [ %15, %84 ], [ %108, %105 ], [ %121, %118 ]
  %128 = add nsw i32 %126, 1
  %129 = icmp slt i32 %128, %0
  %130 = and i8 %127, 1
  %131 = icmp ne i8 %130, 0
  %132 = select i1 %129, i1 %131, i1 false, !prof !231
  br i1 %132, label %14, label %8, !prof !206, !llvm.loop !232

133:                                              ; preds = %122, %8
  %134 = phi ptr [ %124, %122 ], [ %11, %8 ]
  %135 = phi i1 [ false, %122 ], [ %9, %8 ]
  %136 = getelementptr inbounds %class.Params, ptr %2, i64 0, i32 7
  %137 = load ptr, ptr %136, align 8, !tbaa !229
  %138 = icmp eq ptr %137, null
  br i1 %138, label %139, label %143, !prof !210

139:                                              ; preds = %133
  %140 = getelementptr inbounds %class.Params, ptr %2, i64 0, i32 1
  %141 = load i8, ptr %140, align 1, !tbaa !219, !range !230, !noundef !233
  %142 = icmp ne i8 %141, 0
  br label %147

143:                                              ; preds = %133
  %144 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %137, ptr noundef nonnull dereferenceable(1) %134) #22
  %145 = icmp ne i32 %144, 0
  %146 = and i1 %145, %135
  br label %147

147:                                              ; preds = %143, %8, %139
  %148 = phi i1 [ %142, %139 ], [ false, %8 ], [ %146, %143 ]
  ret i1 %148
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @atoi(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN6Params8addParamEPKcS1_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !186 {
  %4 = getelementptr inbounds %class.Params, ptr %0, i64 0, i32 12
  %5 = load i64, ptr %4, align 8, !tbaa !234
  %6 = getelementptr inbounds %class.Params, ptr %0, i64 0, i32 11
  %7 = load i64, ptr %6, align 8, !tbaa !235
  %8 = icmp ne i64 %5, %7
  br i1 %8, label %9, label %35

9:                                                ; preds = %3
  %10 = getelementptr inbounds %class.Params, ptr %0, i64 0, i32 10
  %11 = tail call noundef ptr @_ZNK11xalanc_1_1017XalanArrayAutoPtrIN6Params9ParamPairEE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #18
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %27

13:                                               ; preds = %9
  %14 = load i64, ptr %6, align 8, !tbaa !235
  %15 = icmp ugt i64 %14, 1152921504606846975
  %16 = shl i64 %14, 4
  %17 = select i1 %15, i64 -1, i64 %16
  %18 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %17) #23
  %19 = icmp eq i64 %14, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %13
  %21 = getelementptr inbounds %"struct.Params::ParamPair", ptr %18, i64 %14
  br label %22

22:                                               ; preds = %22, %20
  %23 = phi ptr [ %18, %20 ], [ %24, %22 ]
  tail call void @_ZN6Params9ParamPairC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %23) #18
  %24 = getelementptr inbounds %"struct.Params::ParamPair", ptr %23, i64 1
  %25 = icmp eq ptr %24, %21
  br i1 %25, label %26, label %22

26:                                               ; preds = %22, %13
  tail call void @_ZN11xalanc_1_1017XalanArrayAutoPtrIN6Params9ParamPairEE5resetEPS2_(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull %18) #18
  br label %27

27:                                               ; preds = %26, %9
  %28 = load i64, ptr %4, align 8, !tbaa !234
  %29 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK11xalanc_1_1017XalanArrayAutoPtrIN6Params9ParamPairEEixEm(ptr noundef nonnull align 8 dereferenceable(8) %10, i64 noundef %28) #18
  store ptr %1, ptr %29, align 8, !tbaa !236
  %30 = load i64, ptr %4, align 8, !tbaa !234
  %31 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK11xalanc_1_1017XalanArrayAutoPtrIN6Params9ParamPairEEixEm(ptr noundef nonnull align 8 dereferenceable(8) %10, i64 noundef %30) #18
  %32 = getelementptr inbounds %"struct.Params::ParamPair", ptr %31, i64 0, i32 1
  store ptr %2, ptr %32, align 8, !tbaa !238
  %33 = load i64, ptr %4, align 8, !tbaa !234
  %34 = add i64 %33, 1
  store i64 %34, ptr %4, align 8, !tbaa !234
  br label %35

35:                                               ; preds = %3, %27
  ret i1 %8
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_Z24writeElapsedMillisecondsllRSo(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #4 !prof !186 {
  %4 = sub nsw i64 %1, %0
  %5 = sitofp i64 %4 to double
  %6 = fdiv double %5, 1.000000e+06
  %7 = fmul double %6, 1.000000e+03
  %8 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEd(ptr noundef nonnull align 8 dereferenceable(8) %2, double noundef %7) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEd(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #4 align 2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_Z8xsltMainiPPc(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 !prof !204 {
  %3 = alloca %class.Params, align 8
  %4 = alloca %"class.xalanc_1_10::XalanTransformer", align 8
  tail call void @_ZN11xercesc_2_716XMLPlatformUtils10InitializeEPKcS2_PNS_12PanicHandlerEPNS_13MemoryManagerEb(ptr noundef nonnull @_ZN11xercesc_2_76XMLUni22fgXercescDefaultLocaleE, ptr noundef null, ptr noundef null, ptr noundef null, i1 noundef zeroext false) #18
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs22getDefaultXercesMemMgrEv() #18
  tail call void @_ZN11xalanc_1_1016XalanTransformer10initializeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %5) #18
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #19
  %6 = add nsw i32 %0, -1
  %7 = sdiv i32 %6, 2
  %8 = add nsw i32 %7, 1
  %9 = sext i32 %8 to i64
  call void @_ZN6ParamsC2Em(ptr noundef nonnull align 8 dereferenceable(72) %3, i64 noundef %9) #18
  %10 = invoke noundef zeroext i1 @_Z7getArgsiPPcR6Params(i32 noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(72) %3) #18
          to label %11 unwind label %13

11:                                               ; preds = %2
  br i1 %10, label %15, label %12, !prof !211

12:                                               ; preds = %11
  invoke void @_Z5Usagev() #18
          to label %36 unwind label %13

13:                                               ; preds = %12, %2
  %14 = landingpad { ptr, i32 }
          cleanup
  br label %38

15:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %4) #19
  %16 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs22getDefaultXercesMemMgrEv() #18
          to label %17 unwind label %29

17:                                               ; preds = %15
  invoke void @_ZN11xalanc_1_1016XalanTransformerC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(384) %4, ptr noundef nonnull align 8 dereferenceable(8) %16) #18
          to label %18 unwind label %29

18:                                               ; preds = %17
  invoke void @_ZNK6Params9setParamsERN11xalanc_1_1016XalanTransformerE(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(384) %4) #18
          to label %19 unwind label %31

19:                                               ; preds = %18
  %20 = invoke noundef i32 @_Z9transformRN11xalanc_1_1016XalanTransformerERK6Params(ptr noundef nonnull align 8 dereferenceable(384) %4, ptr noundef nonnull align 8 dereferenceable(72) %3) #18
          to label %21 unwind label %31

21:                                               ; preds = %19
  %22 = icmp eq i32 %20, 0
  br i1 %22, label %33, label %23, !prof !211

23:                                               ; preds = %21
  %24 = invoke noundef ptr @_ZNK11xalanc_1_1016XalanTransformer12getLastErrorEv(ptr noundef nonnull align 8 dereferenceable(384) %4) #18
          to label %25 unwind label %31

25:                                               ; preds = %23
  %26 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef %24) #18
          to label %27 unwind label %31

27:                                               ; preds = %25
  %28 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_) #18
          to label %33 unwind label %31

29:                                               ; preds = %17, %15
  %30 = landingpad { ptr, i32 }
          cleanup
  br label %34

31:                                               ; preds = %27, %25, %23, %19, %18
  %32 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1016XalanTransformerD1Ev(ptr noundef nonnull align 8 dereferenceable(384) %4) #20
  br label %34

33:                                               ; preds = %27, %21
  call void @_ZN11xalanc_1_1016XalanTransformerD1Ev(ptr noundef nonnull align 8 dereferenceable(384) %4) #20
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %4) #19
  br label %36

34:                                               ; preds = %31, %29
  %35 = phi { ptr, i32 } [ %32, %31 ], [ %30, %29 ]
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %4) #19
  br label %38

36:                                               ; preds = %12, %33
  %37 = phi i32 [ -1, %12 ], [ %20, %33 ]
  call void @_ZN6ParamsD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %3) #20
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #19
  call void @_ZN11xalanc_1_1016XalanTransformer9terminateEv() #18
  call void @_ZN11xercesc_2_716XMLPlatformUtils9TerminateEv() #18
  call void @_ZN11xalanc_1_1016XalanTransformer10ICUCleanUpEv() #18
  ret i32 %37

38:                                               ; preds = %34, %13
  %39 = phi { ptr, i32 } [ %14, %13 ], [ %35, %34 ]
  call void @_ZN6ParamsD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %3) #20
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #19
  resume { ptr, i32 } %39
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716XMLPlatformUtils10InitializeEPKcS2_PNS_12PanicHandlerEPNS_13MemoryManagerEb(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1016XalanTransformer10initializeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN6ParamsC2Em(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %1) unnamed_addr #4 comdat align 2 !prof !204 {
  %3 = getelementptr inbounds %class.Params, ptr %0, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %0, i8 0, i64 5, i1 false)
  store i32 -1, ptr %3, align 8, !tbaa !221
  %4 = getelementptr inbounds %class.Params, ptr %0, i64 0, i32 6
  %5 = getelementptr inbounds %class.Params, ptr %0, i64 0, i32 10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  tail call void @_ZN11xalanc_1_1017XalanArrayAutoPtrIN6Params9ParamPairEEC2EPS2_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef null) #18
  %6 = getelementptr inbounds %class.Params, ptr %0, i64 0, i32 11
  store i64 %1, ptr %6, align 8, !tbaa !235
  %7 = getelementptr inbounds %class.Params, ptr %0, i64 0, i32 12
  store i64 0, ptr %7, align 8, !tbaa !234
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1016XalanTransformerC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(384), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNK6Params9setParamsERN11xalanc_1_1016XalanTransformerE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(384) %1) local_unnamed_addr #4 comdat align 2 !prof !204 {
  %3 = load i8, ptr %0, align 8, !tbaa !226, !range !230, !noundef !233
  %4 = icmp ne i8 %3, 0
  tail call void @_ZN11xalanc_1_1016XalanTransformer16setUseValidationEb(ptr noundef nonnull align 8 dereferenceable(384) %1, i1 noundef zeroext %4) #18
  %5 = getelementptr inbounds %class.Params, ptr %0, i64 0, i32 2
  %6 = load i8, ptr %5, align 2, !tbaa !222, !range !230, !noundef !233
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %9, label %8, !prof !211

8:                                                ; preds = %2
  tail call void @_ZN11xalanc_1_1016XalanTransformer14setOmitMETATagENS0_12eOmitMETATagE(ptr noundef nonnull align 8 dereferenceable(384) %1, i32 noundef 2) #18
  br label %9

9:                                                ; preds = %8, %2
  %10 = getelementptr inbounds %class.Params, ptr %0, i64 0, i32 3
  %11 = load i8, ptr %10, align 1, !tbaa !225, !range !230, !noundef !233
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %14, label %13, !prof !211

13:                                               ; preds = %9
  tail call void @_ZN11xalanc_1_1016XalanTransformer13setEscapeURLsENS0_11eEscapeURLsE(ptr noundef nonnull align 8 dereferenceable(384) %1, i32 noundef 1) #18
  br label %14

14:                                               ; preds = %13, %9
  %15 = getelementptr inbounds %class.Params, ptr %0, i64 0, i32 5
  %16 = load i32, ptr %15, align 8, !tbaa !221
  %17 = icmp sgt i32 %16, -1
  br i1 %17, label %18, label %19, !prof !210

18:                                               ; preds = %14
  tail call void @_ZN11xalanc_1_1016XalanTransformer9setIndentEi(ptr noundef nonnull align 8 dereferenceable(384) %1, i32 noundef %16) #18
  br label %19

19:                                               ; preds = %18, %14
  %20 = getelementptr inbounds %class.Params, ptr %0, i64 0, i32 12
  %21 = load i64, ptr %20, align 8, !tbaa !234
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %25, label %23, !prof !239

23:                                               ; preds = %19
  %24 = getelementptr inbounds %class.Params, ptr %0, i64 0, i32 10
  br label %26

25:                                               ; preds = %26, %19
  ret void

26:                                               ; preds = %23, %26
  %27 = phi i64 [ 0, %23 ], [ %33, %26 ]
  %28 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK11xalanc_1_1017XalanArrayAutoPtrIN6Params9ParamPairEEixEm(ptr noundef nonnull align 8 dereferenceable(8) %24, i64 noundef %27) #18
  %29 = load ptr, ptr %28, align 8, !tbaa !236
  %30 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK11xalanc_1_1017XalanArrayAutoPtrIN6Params9ParamPairEEixEm(ptr noundef nonnull align 8 dereferenceable(8) %24, i64 noundef %27) #18
  %31 = getelementptr inbounds %"struct.Params::ParamPair", ptr %30, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !238
  tail call void @_ZN11xalanc_1_1016XalanTransformer18setStylesheetParamEPKcS2_(ptr noundef nonnull align 8 dereferenceable(384) %1, ptr noundef %29, ptr noundef %32) #18
  %33 = add nuw i64 %27, 1
  %34 = load i64, ptr %20, align 8, !tbaa !234
  %35 = icmp ult i64 %33, %34
  br i1 %35, label %26, label %25, !prof !240, !llvm.loop !241
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_Z9transformRN11xalanc_1_1016XalanTransformerERK6Params(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 !prof !204 {
  %3 = alloca %"class.xalanc_1_10::XSLTInputSource", align 8
  %4 = alloca %"class.xalanc_1_10::XSLTInputSource", align 8
  %5 = getelementptr inbounds %class.Params, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !212
  %7 = load i8, ptr %6, align 1, !tbaa !209
  %8 = icmp eq i8 %7, 45
  br i1 %8, label %9, label %19, !prof !210

9:                                                ; preds = %2
  %10 = getelementptr inbounds i8, ptr %6, i64 1
  %11 = load i8, ptr %10, align 1, !tbaa !209
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #19
  %14 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs10getDefaultEv() #18
  call void @_ZN11xalanc_1_1015XSLTInputSourceC1EPSiRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull @_ZSt3cin, ptr noundef nonnull align 8 dereferenceable(8) %14) #18
  %15 = invoke noundef i32 @_Z9transformRN11xalanc_1_1016XalanTransformerERK6ParamsRKNS_15XSLTInputSourceE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(64) %3) #18
          to label %16 unwind label %17

16:                                               ; preds = %13
  call void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %3) #20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #19
  br label %25

17:                                               ; preds = %13
  %18 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %3) #20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #19
  br label %27

19:                                               ; preds = %9, %2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #19
  %20 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs10getDefaultEv() #18
  call void @_ZN11xalanc_1_1015XSLTInputSourceC1EPKcRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull %6, ptr noundef nonnull align 8 dereferenceable(8) %20) #18
  %21 = invoke noundef i32 @_Z9transformRN11xalanc_1_1016XalanTransformerERK6ParamsRKNS_15XSLTInputSourceE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(64) %4) #18
          to label %22 unwind label %23

22:                                               ; preds = %19
  call void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %4) #20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #19
  br label %25

23:                                               ; preds = %19
  %24 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %4) #20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #19
  br label %27

25:                                               ; preds = %22, %16
  %26 = phi i32 [ %15, %16 ], [ %21, %22 ]
  ret i32 %26

27:                                               ; preds = %23, %17
  %28 = phi { ptr, i32 } [ %18, %17 ], [ %24, %23 ]
  resume { ptr, i32 } %28
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1016XalanTransformer12getLastErrorEv(ptr noundef nonnull align 8 dereferenceable(384) %0) local_unnamed_addr #4 comdat align 2 !prof !186 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 7
  %3 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0) #18
  ret ptr %3
}

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1016XalanTransformerD1Ev(ptr noundef nonnull align 8 dereferenceable(384)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6ParamsD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #6 comdat align 2 {
  %2 = getelementptr inbounds %class.Params, ptr %0, i64 0, i32 10
  tail call void @_ZN11xalanc_1_1017XalanArrayAutoPtrIN6Params9ParamPairEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #20
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1016XalanTransformer9terminateEv() local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716XMLPlatformUtils9TerminateEv() local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1016XalanTransformer10ICUCleanUpEv() local_unnamed_addr #1

; Function Attrs: mustprogress noinline norecurse optsize uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #11 !prof !204 {
  %3 = tail call noundef i32 @_Z8xsltMainiPPc(i32 noundef %0, ptr noundef %1) #18
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !242 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !243
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !245

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %7 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
          to label %8 unwind label %13

8:                                                ; preds = %5
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_(ptr noundef %6, ptr noundef %7) #18
          to label %9 unwind label %13

9:                                                ; preds = %8
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !246
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %11) #18
          to label %12 unwind label %13

12:                                               ; preds = %9, %1
  ret void

13:                                               ; preds = %9, %8, %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #21
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #6 comdat align 2 !prof !247 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !248 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4, !prof !249

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %5) #18
  %6 = getelementptr inbounds i16, ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !prof !250, !llvm.loop !251

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #6 comdat align 2 !prof !252 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !246
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #4 comdat align 2 !prof !253 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %2 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !248 {
  %3 = load ptr, ptr %0, align 8, !tbaa !254
  %4 = load ptr, ptr %3, align 8, !tbaa !255
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %0) local_unnamed_addr #6 comdat align 2 !prof !257 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #6 comdat align 2 !prof !258 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !246
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !259
  %6 = getelementptr inbounds i16, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1017XalanArrayAutoPtrIN6Params9ParamPairEE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #6 comdat align 2 !prof !186 {
  %2 = load ptr, ptr %0, align 8, !tbaa !260
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1017XalanArrayAutoPtrIN6Params9ParamPairEE5resetEPS2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 !prof !186 {
  %3 = load ptr, ptr %0, align 8, !tbaa !260
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call void @_ZdaPv(ptr noundef nonnull %3) #24
  br label %6

6:                                                ; preds = %5, %2
  store ptr %1, ptr %0, align 8, !tbaa !260
  ret void
}

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6Params9ParamPairC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #6 comdat align 2 !prof !186 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZNK11xalanc_1_1017XalanArrayAutoPtrIN6Params9ParamPairEEixEm(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 !prof !186 {
  %3 = load ptr, ptr %0, align 8, !tbaa !260
  %4 = getelementptr inbounds %"struct.Params::ParamPair", ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1017XalanArrayAutoPtrIN6Params9ParamPairEEC2EPS2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #6 comdat align 2 !prof !204 {
  store ptr %1, ptr %0, align 8, !tbaa !260
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1016XalanTransformer16setUseValidationEb(ptr noundef nonnull align 8 dereferenceable(384) %0, i1 noundef zeroext %1) local_unnamed_addr #6 comdat align 2 !prof !204 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 8
  store i8 %3, ptr %4, align 8, !tbaa !261
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1016XalanTransformer14setOmitMETATagENS0_12eOmitMETATagE(ptr noundef nonnull align 8 dereferenceable(384), i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1016XalanTransformer13setEscapeURLsENS0_11eEscapeURLsE(ptr noundef nonnull align 8 dereferenceable(384), i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1016XalanTransformer9setIndentEi(ptr noundef nonnull align 8 dereferenceable(384), i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1016XalanTransformer18setStylesheetParamEPKcS2_(ptr noundef nonnull align 8 dereferenceable(384), ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_Z9transformRN11xalanc_1_1016XalanTransformerERK6ParamsRKNS_15XSLTInputSourceE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(64) %2) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 !prof !204 {
  %4 = alloca %"class.xalanc_1_10::XSLTInputSource", align 8
  %5 = alloca %"class.xalanc_1_10::XSLTInputSource", align 8
  %6 = getelementptr inbounds %class.Params, ptr %1, i64 0, i32 1
  %7 = load i8, ptr %6, align 1, !tbaa !219, !range !230, !noundef !233
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %18, !prof !211

9:                                                ; preds = %3
  %10 = getelementptr inbounds %class.Params, ptr %1, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !229
  %12 = load i8, ptr %11, align 1, !tbaa !209
  %13 = icmp eq i8 %12, 45
  br i1 %13, label %14, label %24, !prof !210

14:                                               ; preds = %9
  %15 = getelementptr inbounds i8, ptr %11, i64 1
  %16 = load i8, ptr %15, align 1, !tbaa !209
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %14, %3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #19
  %19 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs10getDefaultEv() #18
  call void @_ZN11xalanc_1_1015XSLTInputSourceC1EPSiRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull @_ZSt3cin, ptr noundef nonnull align 8 dereferenceable(8) %19) #18
  %20 = invoke noundef i32 @_Z9transformRN11xalanc_1_1016XalanTransformerERK6ParamsRKNS_15XSLTInputSourceES7_(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(64) %4) #18
          to label %21 unwind label %22

21:                                               ; preds = %18
  call void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %4) #20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #19
  br label %30

22:                                               ; preds = %18
  %23 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %4) #20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #19
  br label %32

24:                                               ; preds = %14, %9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #19
  %25 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs10getDefaultEv() #18
  call void @_ZN11xalanc_1_1015XSLTInputSourceC1EPKcRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull %11, ptr noundef nonnull align 8 dereferenceable(8) %25) #18
  %26 = invoke noundef i32 @_Z9transformRN11xalanc_1_1016XalanTransformerERK6ParamsRKNS_15XSLTInputSourceES7_(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(64) %5) #18
          to label %27 unwind label %28

27:                                               ; preds = %24
  call void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %5) #20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #19
  br label %30

28:                                               ; preds = %24
  %29 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %5) #20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #19
  br label %32

30:                                               ; preds = %27, %21
  %31 = phi i32 [ %20, %21 ], [ %26, %27 ]
  ret i32 %31

32:                                               ; preds = %28, %22
  %33 = phi { ptr, i32 } [ %23, %22 ], [ %29, %28 ]
  resume { ptr, i32 } %33
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs10getDefaultEv() local_unnamed_addr #4 comdat align 2 !prof !269 {
  %1 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs22getDefaultXercesMemMgrEv() #18
  ret ptr %1
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1015XSLTInputSourceC1EPSiRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(41)) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1015XSLTInputSourceC1EPKcRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_Z9transformRN11xalanc_1_1016XalanTransformerERK6ParamsRKNS_15XSLTInputSourceES7_(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(64) %3) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 !prof !204 {
  %5 = alloca %"class.xalanc_1_10::XSLTResultTarget", align 8
  %6 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %7 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1016XalanTransformer16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(384) %0) #18
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %5) #19
  call void @_ZN11xalanc_1_1016XSLTResultTargetC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(112) %5, ptr noundef nonnull align 8 dereferenceable(8) %7) #18
  %8 = getelementptr inbounds %class.Params, ptr %1, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !220
  %10 = icmp eq ptr %9, null
  br i1 %10, label %20, label %11, !prof !211

11:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #19
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1EPKcRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull %9, ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef -1) #18
          to label %12 unwind label %14

12:                                               ; preds = %11
  invoke void @_ZN11xalanc_1_1016XSLTResultTarget11setEncodingERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(112) %5, ptr noundef nonnull align 8 dereferenceable(36) %6) #18
          to label %13 unwind label %16

13:                                               ; preds = %12
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %6) #20
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #19
  br label %20

14:                                               ; preds = %11
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %18

16:                                               ; preds = %12
  %17 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %6) #20
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi { ptr, i32 } [ %17, %16 ], [ %15, %14 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #19
  br label %38

20:                                               ; preds = %13, %4
  %21 = getelementptr inbounds %class.Params, ptr %1, i64 0, i32 8
  %22 = load ptr, ptr %21, align 8, !tbaa !223
  %23 = icmp eq ptr %22, null
  br i1 %23, label %27, label %24, !prof !211

24:                                               ; preds = %20
  invoke void @_ZN11xalanc_1_1016XSLTResultTarget11setFileNameEPKc(ptr noundef nonnull align 8 dereferenceable(112) %5, ptr noundef nonnull %22) #18
          to label %28 unwind label %25

25:                                               ; preds = %34, %32, %24
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %38

27:                                               ; preds = %20
  call void @_ZN11xalanc_1_1016XSLTResultTarget13setByteStreamEPSo(ptr noundef nonnull align 8 dereferenceable(112) %5, ptr noundef nonnull @_ZSt4cout) #18
  br label %28

28:                                               ; preds = %24, %27
  %29 = getelementptr inbounds %class.Params, ptr %1, i64 0, i32 1
  %30 = load i8, ptr %29, align 1, !tbaa !219, !range !230, !noundef !233
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %34, label %32, !prof !211

32:                                               ; preds = %28
  %33 = invoke noundef i32 @_Z9transformRN11xalanc_1_1016XalanTransformerERK6ParamsRKNS_15XSLTInputSourceERKNS_16XSLTResultTargetE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(112) %5) #18
          to label %36 unwind label %25

34:                                               ; preds = %28
  %35 = invoke noundef i32 @_Z9transformRN11xalanc_1_1016XalanTransformerERK6ParamsRKNS_15XSLTInputSourceES7_RKNS_16XSLTResultTargetE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(112) %5) #18
          to label %36 unwind label %25

36:                                               ; preds = %34, %32
  %37 = phi i32 [ %33, %32 ], [ %35, %34 ]
  call void @_ZN11xalanc_1_1016XSLTResultTargetD1Ev(ptr noundef nonnull align 8 dereferenceable(112) %5) #20
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %5) #19
  ret i32 %37

38:                                               ; preds = %25, %18
  %39 = phi { ptr, i32 } [ %26, %25 ], [ %19, %18 ]
  call void @_ZN11xalanc_1_1016XSLTResultTargetD1Ev(ptr noundef nonnull align 8 dereferenceable(112) %5) #20
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %5) #19
  resume { ptr, i32 } %39
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1016XalanTransformer16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(384) %0) local_unnamed_addr #6 comdat align 2 !prof !204 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !270
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1016XSLTResultTargetC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1016XSLTResultTarget11setEncodingERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #4 comdat align 2 !prof !186 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XSLTResultTarget", ptr %0, i64 0, i32 2
  %4 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(36) %1) #18
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014XalanDOMStringC1EPKcRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1016XSLTResultTarget11setFileNameEPKc(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !186 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  tail call void @_ZN11xalanc_1_1014XalanDOMString5clearEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #18
  br label %7

5:                                                ; preds = %2
  %6 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMStringaSEPKc(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull %1) #18
  br label %7

7:                                                ; preds = %5, %4
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1016XSLTResultTarget13setByteStreamEPSo(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 !prof !204 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XSLTResultTarget", ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !271
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_Z9transformRN11xalanc_1_1016XalanTransformerERK6ParamsRKNS_15XSLTInputSourceERKNS_16XSLTResultTargetE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(112) %3) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 !prof !186 {
  %5 = alloca ptr, align 8
  %6 = alloca %"class.xalanc_1_10::XalanTransformer::EnsureDestroyParsedSource", align 8
  %7 = getelementptr inbounds %class.Params, ptr %1, i64 0, i32 4
  %8 = load i8, ptr %7, align 4, !tbaa !224, !range !230, !noundef !233
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %4
  %11 = tail call noundef i32 @_ZN11xalanc_1_1016XalanTransformer9transformERKNS_15XSLTInputSourceERKNS_16XSLTResultTargetE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(112) %3) #18
  br label %29

12:                                               ; preds = %4
  %13 = tail call noundef i64 @_Z8getClockv() #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  store ptr null, ptr %5, align 8, !tbaa !207
  %14 = call noundef i32 @_ZN11xalanc_1_1016XalanTransformer11parseSourceERKNS_15XSLTInputSourceERPKNS_17XalanParsedSourceEb(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(8) %5, i1 noundef zeroext false) #18
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %12
  %17 = call noundef i64 @_Z8getClockv() #18
  call void @_Z25reportElapsedMillisecondsPKcllRSo(ptr noundef nonnull @.str.6, i64 noundef %13, i64 noundef %17, ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #19
  %18 = load ptr, ptr %5, align 8, !tbaa !207
  call void @_ZN11xalanc_1_1016XalanTransformer25EnsureDestroyParsedSourceC2ERS0_PKNS_17XalanParsedSourceE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef %18) #18
  %19 = call noundef i64 @_Z8getClockv() #18
  %20 = load ptr, ptr %5, align 8, !tbaa !207
  %21 = invoke noundef i32 @_ZN11xalanc_1_1016XalanTransformer9transformERKNS_17XalanParsedSourceERKNS_16XSLTResultTargetE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 1 %20, ptr noundef nonnull align 8 dereferenceable(112) %3) #18
          to label %22 unwind label %25

22:                                               ; preds = %16
  %23 = call noundef i64 @_Z8getClockv() #18
  invoke void @_Z25reportElapsedMillisecondsPKcllRSo(ptr noundef nonnull @.str.7, i64 noundef %19, i64 noundef %23, ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr) #18
          to label %24 unwind label %25

24:                                               ; preds = %22
  call void @_ZN11xalanc_1_1016XalanTransformer25EnsureDestroyParsedSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #19
  br label %27

25:                                               ; preds = %22, %16
  %26 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1016XalanTransformer25EnsureDestroyParsedSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  resume { ptr, i32 } %26

27:                                               ; preds = %24, %12
  %28 = phi i32 [ %21, %24 ], [ %14, %12 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  br label %29

29:                                               ; preds = %27, %10
  %30 = phi i32 [ %11, %10 ], [ %28, %27 ]
  ret i32 %30
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_Z9transformRN11xalanc_1_1016XalanTransformerERK6ParamsRKNS_15XSLTInputSourceES7_RKNS_16XSLTResultTargetE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(112) %4) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 !prof !204 {
  %6 = alloca ptr, align 8
  %7 = alloca %"class.xalanc_1_10::XalanTransformer::EnsureDestroyParsedSource", align 8
  %8 = alloca ptr, align 8
  %9 = alloca %"struct.xalanc_1_10::XalanTransformer::EnsureDestroyCompiledStylesheet", align 8
  %10 = getelementptr inbounds %class.Params, ptr %1, i64 0, i32 4
  %11 = load i8, ptr %10, align 4, !tbaa !224, !range !230, !noundef !233
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %15, !prof !211

13:                                               ; preds = %5
  %14 = tail call noundef i32 @_ZN11xalanc_1_1016XalanTransformer9transformERKNS_15XSLTInputSourceES3_RKNS_16XSLTResultTargetE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(112) %4) #18
  br label %47

15:                                               ; preds = %5
  %16 = tail call noundef i64 @_Z8getClockv() #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #19
  store ptr null, ptr %6, align 8, !tbaa !207
  %17 = call noundef i32 @_ZN11xalanc_1_1016XalanTransformer11parseSourceERKNS_15XSLTInputSourceERPKNS_17XalanParsedSourceEb(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(8) %6, i1 noundef zeroext false) #18
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %45

19:                                               ; preds = %15
  %20 = call noundef i64 @_Z8getClockv() #18
  call void @_Z25reportElapsedMillisecondsPKcllRSo(ptr noundef nonnull @.str.6, i64 noundef %16, i64 noundef %20, ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #19
  %21 = load ptr, ptr %6, align 8, !tbaa !207
  call void @_ZN11xalanc_1_1016XalanTransformer25EnsureDestroyParsedSourceC2ERS0_PKNS_17XalanParsedSourceE(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef %21) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #19
  store ptr null, ptr %8, align 8, !tbaa !207
  %22 = call noundef i64 @_Z8getClockv() #18
  %23 = invoke noundef i32 @_ZN11xalanc_1_1016XalanTransformer17compileStylesheetERKNS_15XSLTInputSourceERPKNS_23XalanCompiledStylesheetE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(8) %8) #18
          to label %24 unwind label %37

24:                                               ; preds = %19
  %25 = icmp eq i32 %23, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %24
  %27 = call noundef i64 @_Z8getClockv() #18
  invoke void @_Z25reportElapsedMillisecondsPKcllRSo(ptr noundef nonnull @.str.9, i64 noundef %22, i64 noundef %27, ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr) #18
          to label %28 unwind label %37

28:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #19
  %29 = load ptr, ptr %8, align 8, !tbaa !207
  call void @_ZN11xalanc_1_1016XalanTransformer31EnsureDestroyCompiledStylesheetC2ERS0_PKNS_23XalanCompiledStylesheetE(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef %29) #18
  %30 = call noundef i64 @_Z8getClockv() #18
  %31 = load ptr, ptr %6, align 8, !tbaa !207
  %32 = load ptr, ptr %8, align 8, !tbaa !207
  %33 = invoke noundef i32 @_ZN11xalanc_1_1016XalanTransformer9transformERKNS_17XalanParsedSourceEPKNS_23XalanCompiledStylesheetERKNS_16XSLTResultTargetE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 1 %31, ptr noundef %32, ptr noundef nonnull align 8 dereferenceable(112) %4) #18
          to label %34 unwind label %39

34:                                               ; preds = %28
  %35 = call noundef i64 @_Z8getClockv() #18
  invoke void @_Z25reportElapsedMillisecondsPKcllRSo(ptr noundef nonnull @.str.10, i64 noundef %30, i64 noundef %35, ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr) #18
          to label %36 unwind label %39

36:                                               ; preds = %34
  call void @_ZN11xalanc_1_1016XalanTransformer31EnsureDestroyCompiledStylesheetD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #19
  br label %41

37:                                               ; preds = %26, %19
  %38 = landingpad { ptr, i32 }
          cleanup
  br label %43

39:                                               ; preds = %34, %28
  %40 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1016XalanTransformer31EnsureDestroyCompiledStylesheetD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #19
  br label %43

41:                                               ; preds = %36, %24
  %42 = phi i32 [ %33, %36 ], [ %23, %24 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #19
  call void @_ZN11xalanc_1_1016XalanTransformer25EnsureDestroyParsedSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #19
  br label %45

43:                                               ; preds = %39, %37
  %44 = phi { ptr, i32 } [ %40, %39 ], [ %38, %37 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #19
  call void @_ZN11xalanc_1_1016XalanTransformer25EnsureDestroyParsedSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  resume { ptr, i32 } %44

45:                                               ; preds = %41, %15
  %46 = phi i32 [ %42, %41 ], [ %17, %15 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  br label %47

47:                                               ; preds = %45, %13
  %48 = phi i32 [ %14, %13 ], [ %46, %45 ]
  ret i32 %48
}

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1016XSLTResultTargetD1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #4 comdat align 2 !prof !273 {
  %3 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6assignERKS0_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) #18
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6assignERKS0_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #4 comdat align 2 !prof !273 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #18
  %3 = icmp eq ptr %1, %0
  br i1 %3, label %9, label %4, !prof !274

4:                                                ; preds = %2
  %5 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #18
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %1, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !275
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %0, i64 0, i32 1
  store i32 %7, ptr %8, align 8, !tbaa !275
  br label %9

9:                                                ; preds = %4, %2
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #18
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #6 comdat align 2 !prof !276 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !273 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %4 = icmp eq ptr %1, %0
  br i1 %4, label %33, label %5, !prof !274

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !243
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !259
  %10 = icmp ult i64 %7, %9
  br i1 %10, label %11, label %13, !prof !277

11:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  %12 = load ptr, ptr %0, align 8, !tbaa !254
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef 0) #18
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #18
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  br label %33

13:                                               ; preds = %5
  %14 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #18
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %16 = load i64, ptr %15, align 8, !tbaa !259
  %17 = load i64, ptr %8, align 8, !tbaa !259
  %18 = icmp ugt i64 %16, %17
  br i1 %18, label %19, label %20, !prof !278

19:                                               ; preds = %13
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE12shrinkToSizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %17) #18
  br label %28

20:                                               ; preds = %13
  %21 = icmp ult i64 %16, %17
  br i1 %21, label %22, label %28, !prof !279

22:                                               ; preds = %20
  %23 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #18
  %24 = load i64, ptr %15, align 8, !tbaa !259
  %25 = getelementptr inbounds i16, ptr %23, i64 %24
  %26 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %27 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #18
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %26, ptr noundef %25, ptr noundef %27) #18
  br label %28

28:                                               ; preds = %20, %22, %19
  %29 = phi ptr [ %14, %19 ], [ %25, %22 ], [ %14, %20 ]
  %30 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #18
  %31 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %32 = tail call noundef ptr @_ZSt4copyIPKtPtET0_T_S4_S3_(ptr noundef %30, ptr noundef %29, ptr noundef %31) #18
  br label %33

33:                                               ; preds = %11, %28, %2
  call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !280 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  store ptr %2, ptr %0, align 8, !tbaa !254
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !259
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %21, label %12, !prof !281

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #19
  %13 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9local_maxEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10, i64 noundef %3) #18
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %13) #18
  %14 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #18
  %15 = call noundef ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #18
  %16 = invoke noundef ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #18
          to label %17 unwind label %19

17:                                               ; preds = %12
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %14, ptr noundef %15, ptr noundef %16) #18
          to label %18 unwind label %19

18:                                               ; preds = %17
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #18
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  br label %25

19:                                               ; preds = %17, %12
  %20 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  resume { ptr, i32 } %20

21:                                               ; preds = %4
  %22 = icmp eq i64 %3, 0
  br i1 %22, label %25, label %23, !prof !282

23:                                               ; preds = %21
  %24 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %3) #18
  store ptr %24, ptr %8, align 8, !tbaa !246
  store i64 %3, ptr %7, align 8, !tbaa !243
  br label %25

25:                                               ; preds = %21, %23, %18
  call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #6 comdat align 2 !prof !283 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %3 = load ptr, ptr %0, align 8, !tbaa !254
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !246
  %7 = load ptr, ptr %1, align 8, !tbaa !254
  store ptr %7, ptr %0, align 8, !tbaa !254
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  %9 = load <2 x i64>, ptr %8, align 8, !tbaa !284
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !246
  store ptr %11, ptr %5, align 8, !tbaa !246
  store ptr %3, ptr %1, align 8, !tbaa !254
  %12 = load <2 x i64>, ptr %4, align 8, !tbaa !284
  store <2 x i64> %9, ptr %4, align 8, !tbaa !284
  store <2 x i64> %12, ptr %8, align 8, !tbaa !284
  store ptr %6, ptr %10, align 8, !tbaa !246
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #4 comdat align 2 !prof !285 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %2 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE12shrinkToSizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !286 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  br label %4

4:                                                ; preds = %4, %2
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %5 = load i64, ptr %3, align 8, !tbaa !259
  %6 = icmp ugt i64 %5, %1
  br i1 %6, label %4, label %7, !prof !287, !llvm.loop !288

7:                                                ; preds = %4
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #6 comdat align 2 !prof !285 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !246
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !289 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %6 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14local_distanceEPKtS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %2, ptr noundef %3) #18
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %80, label %8, !prof !290

8:                                                ; preds = %4
  %9 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %10 = add i64 %9, %6
  %11 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %12 = icmp eq ptr %11, %1
  br i1 %12, label %13, label %28, !prof !291

13:                                               ; preds = %8
  %14 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14ensureCapacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10) #18
  %15 = icmp eq ptr %2, %3
  br i1 %15, label %79, label %16, !prof !292

16:                                               ; preds = %13
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  br label %18

18:                                               ; preds = %16, %18
  %19 = phi ptr [ %2, %16 ], [ %26, %18 ]
  %20 = phi ptr [ %14, %16 ], [ %23, %18 ]
  %21 = load ptr, ptr %0, align 8, !tbaa !254
  %22 = tail call noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerItE9constructEPtRKtRN11xercesc_2_713MemoryManagerE(ptr noundef %20, ptr noundef nonnull align 2 dereferenceable(2) %19, ptr noundef nonnull align 8 dereferenceable(8) %21) #18
  %23 = getelementptr inbounds i16, ptr %20, i64 1
  %24 = load i64, ptr %17, align 8, !tbaa !259
  %25 = add i64 %24, 1
  store i64 %25, ptr %17, align 8, !tbaa !259
  %26 = getelementptr inbounds i16, ptr %19, i64 1
  %27 = icmp eq ptr %26, %3
  br i1 %27, label %79, label %18, !prof !293, !llvm.loop !294

28:                                               ; preds = %8
  %29 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %30 = icmp ugt i64 %10, %29
  br i1 %30, label %31, label %47, !prof !295

31:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #19
  %32 = load ptr, ptr %0, align 8, !tbaa !254
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %32, i64 noundef %10) #18
  %33 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #18
          to label %34 unwind label %45

34:                                               ; preds = %31
  %35 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %33, ptr noundef %35, ptr noundef %1) #18
          to label %36 unwind label %45

36:                                               ; preds = %34
  %37 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #18
          to label %38 unwind label %45

38:                                               ; preds = %36
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %37, ptr noundef %2, ptr noundef %3) #18
          to label %39 unwind label %45

39:                                               ; preds = %38
  %40 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #18
          to label %41 unwind label %45

41:                                               ; preds = %39
  %42 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
          to label %43 unwind label %45

43:                                               ; preds = %41
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %40, ptr noundef %1, ptr noundef %42) #18
          to label %44 unwind label %45

44:                                               ; preds = %43
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #18
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  br label %79

45:                                               ; preds = %43, %41, %39, %38, %36, %34, %31
  %46 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  resume { ptr, i32 } %46

47:                                               ; preds = %28
  %48 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %49 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14local_distanceEPKtS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %48) #18
  %50 = icmp ugt i64 %49, %6
  br i1 %50, label %66, label %51, !prof !296

51:                                               ; preds = %47
  %52 = getelementptr inbounds i16, ptr %2, i64 %49
  %53 = icmp eq ptr %52, %3
  br i1 %53, label %54, label %56, !prof !297

54:                                               ; preds = %56, %51
  %55 = icmp eq ptr %48, %1
  br i1 %55, label %64, label %60, !prof !297

56:                                               ; preds = %51, %56
  %57 = phi ptr [ %58, %56 ], [ %52, %51 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %57) #18
  %58 = getelementptr inbounds i16, ptr %57, i64 1
  %59 = icmp eq ptr %58, %3
  br i1 %59, label %54, label %56, !prof !298, !llvm.loop !299

60:                                               ; preds = %54, %60
  %61 = phi ptr [ %62, %60 ], [ %1, %54 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %61) #18
  %62 = getelementptr inbounds i16, ptr %61, i64 1
  %63 = icmp eq ptr %62, %48
  br i1 %63, label %64, label %60, !prof !300, !llvm.loop !301

64:                                               ; preds = %60, %54
  %65 = tail call noundef ptr @_ZSt4copyIPKtPtET0_T_S4_S3_(ptr noundef %2, ptr noundef %52, ptr noundef %1) #18
  br label %79

66:                                               ; preds = %47
  %67 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %68 = sub i64 0, %6
  %69 = getelementptr inbounds i16, ptr %67, i64 %68
  %70 = icmp eq ptr %69, %48
  br i1 %70, label %75, label %71

71:                                               ; preds = %66, %71
  %72 = phi ptr [ %73, %71 ], [ %69, %66 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %72) #18
  %73 = getelementptr inbounds i16, ptr %72, i64 1
  %74 = icmp eq ptr %73, %48
  br i1 %74, label %75, label %71, !llvm.loop !302

75:                                               ; preds = %71, %66
  %76 = getelementptr inbounds i16, ptr %48, i64 %68
  %77 = tail call noundef ptr @_ZSt13copy_backwardIPtS0_ET0_T_S2_S1_(ptr noundef %1, ptr noundef nonnull %76, ptr noundef %48) #18
  %78 = tail call noundef ptr @_ZSt4copyIPKtPtET0_T_S4_S3_(ptr noundef %2, ptr noundef %3, ptr noundef %1) #18
  br label %79

79:                                               ; preds = %18, %13, %64, %75, %44
  call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  br label %80

80:                                               ; preds = %4, %79
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIPKtPtET0_T_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat !prof !303 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPKtET_S2_(ptr noundef %0) #18
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPKtET_S2_(ptr noundef %1) #18
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb0EPKtPtET1_T0_S4_S3_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #18
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9local_maxEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #6 comdat align 2 !prof !304 {
  %4 = tail call i64 @llvm.umax.i64(i64 %1, i64 %2)
  ret i64 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) unnamed_addr #4 comdat align 2 !prof !305 {
  store ptr %1, ptr %0, align 8, !tbaa !254
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  store i64 0, ptr %4, align 8, !tbaa !259
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  store i64 %2, ptr %5, align 8, !tbaa !243
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %9, label %7, !prof !306

7:                                                ; preds = %3
  %8 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %2) #18
  br label %9

9:                                                ; preds = %3, %7
  %10 = phi ptr [ %8, %7 ], [ null, %3 ]
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  store ptr %10, ptr %11, align 8, !tbaa !246
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !248 {
  %3 = shl i64 %1, 1
  %4 = load ptr, ptr %0, align 8, !tbaa !254
  %5 = load ptr, ptr %4, align 8, !tbaa !255
  %6 = getelementptr inbounds ptr, ptr %5, i64 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %3) #18
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #6 comdat align 2 !prof !285 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !246
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !259
  %6 = getelementptr inbounds i16, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #6 comdat align 2 !prof !307 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !259
  %4 = add i64 %3, -1
  store i64 %4, ptr %2, align 8, !tbaa !259
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !246
  %7 = getelementptr inbounds i16, ptr %6, i64 %4
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %7) #18
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14local_distanceEPKtS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 !prof !308 {
  %4 = tail call noundef i64 @_ZSt8distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %1, ptr noundef %2) #18
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #6 comdat align 2 !prof !309 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !259
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14ensureCapacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !310 {
  %3 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %4 = icmp ult i64 %3, %1
  br i1 %4, label %5, label %6, !prof !311

5:                                                ; preds = %2
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #18
  br label %6

6:                                                ; preds = %5, %2
  %7 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerItE9constructEPtRKtRN11xercesc_2_713MemoryManagerE(ptr noundef %0, ptr noundef nonnull align 2 dereferenceable(2) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #6 comdat align 2 !prof !257 {
  %4 = load i16, ptr %1, align 2, !tbaa !312
  store i16 %4, ptr %0, align 2, !tbaa !312
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #6 comdat align 2 !prof !314 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !243
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !315 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !259
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !243
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !316

9:                                                ; preds = %2
  %10 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %11 = load ptr, ptr %0, align 8, !tbaa !254
  %12 = tail call noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerItE9constructEPtRKtRN11xercesc_2_713MemoryManagerE(ptr noundef %10, ptr noundef nonnull align 2 dereferenceable(2) %1, ptr noundef nonnull align 8 dereferenceable(8) %11) #18
  %13 = load i64, ptr %4, align 8, !tbaa !259
  %14 = add i64 %13, 1
  store i64 %14, ptr %4, align 8, !tbaa !259
  br label %25

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  %21 = load ptr, ptr %0, align 8, !tbaa !254
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20) #18
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 2 dereferenceable(2) %1) #18
          to label %22 unwind label %23

22:                                               ; preds = %15
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #18
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  br label %25

23:                                               ; preds = %15
  %24 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  resume { ptr, i32 } %24

25:                                               ; preds = %22, %9
  call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13copy_backwardIPtS0_ET0_T_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat !prof !186 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPtET_S1_(ptr noundef %0) #18
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPtET_S1_(ptr noundef %1) #18
  %6 = tail call noundef ptr @_ZSt22__copy_move_backward_aILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #18
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt8distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat !prof !308 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !207
  call void @_ZSt19__iterator_categoryIPKtENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %3) #18
  %4 = call noundef i64 @_ZSt10__distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) #18
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt10__distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 comdat !prof !308 {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  %6 = ashr exact i64 %5, 1
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPKtENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #6 comdat !prof !308 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !317 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  %4 = load ptr, ptr %0, align 8, !tbaa !254
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1) #18
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #18
  call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #14

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__copy_move_backward_aILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat !prof !186 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !207
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPtET_S1_(ptr noundef %0) #20
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPtET_S1_(ptr noundef %1) #20
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPtET_S1_(ptr noundef %2) #20
  %8 = tail call noundef ptr @_ZSt23__copy_move_backward_a1ILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #18
  %9 = call noundef ptr @_ZSt12__niter_wrapIPtET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #18
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPtET_S1_(ptr noundef %0) local_unnamed_addr #6 comdat !prof !318 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_wrapIPtET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #6 comdat !prof !319 {
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a1ILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat !prof !186 {
  %4 = tail call noundef ptr @_ZSt23__copy_move_backward_a2ILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPtET_S1_(ptr noundef %0) local_unnamed_addr #6 comdat !prof !320 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a2ILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat !prof !186 {
  %4 = tail call noundef ptr @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bItEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bItEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat align 2 !prof !186 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = ashr exact i64 %6, 1
  %8 = icmp eq ptr %1, %0
  %9 = sub nsw i64 0, %7
  br i1 %8, label %12, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds i16, ptr %2, i64 %9
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %11, ptr align 2 %0, i64 %6, i1 false)
  br label %12

12:                                               ; preds = %3, %10
  %13 = getelementptr inbounds i16, ptr %2, i64 %9
  ret ptr %13
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #15

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EPKtPtET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat !prof !303 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !207
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPKtET_S2_(ptr noundef %0) #20
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPKtET_S2_(ptr noundef %1) #20
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPtET_S1_(ptr noundef %2) #20
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPKtPtET1_T0_S4_S3_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #18
  %9 = call noundef ptr @_ZSt12__niter_wrapIPtET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #18
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPKtET_S2_(ptr noundef %0) local_unnamed_addr #6 comdat !prof !321 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPKtPtET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat !prof !303 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb0EPKtPtET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPKtET_S2_(ptr noundef %0) local_unnamed_addr #6 comdat !prof !321 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPKtPtET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat !prof !303 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mItEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mItEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat align 2 !prof !319 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp eq ptr %1, %0
  br i1 %7, label %9, label %8, !prof !322

8:                                                ; preds = %3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %2, ptr align 2 %0, i64 %6, i1 false)
  br label %9

9:                                                ; preds = %8, %3
  %10 = getelementptr inbounds i8, ptr %2, i64 %6
  ret ptr %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanDOMString5clearEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #4 comdat align 2 !prof !323 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #18
  %2 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %3 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %4 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5eraseEPtS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %2, ptr noundef %3) #18
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %0, i64 0, i32 1
  store i32 0, ptr %5, align 8, !tbaa !275
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMStringaSEPKc(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !186 {
  %3 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPKc(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) #18
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5eraseEPtS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 !prof !324 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %4 = icmp eq ptr %1, %2
  br i1 %4, label %9, label %5, !prof !325

5:                                                ; preds = %3
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %7 = tail call noundef ptr @_ZSt4copyIPtS0_ET0_T_S2_S1_(ptr noundef %2, ptr noundef %6, ptr noundef %1) #18
  %8 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14local_distanceEPKtS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) #18
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE11shrinkCountEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %8) #18
  br label %9

9:                                                ; preds = %5, %3
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIPtS0_ET0_T_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat !prof !326 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPtET_S1_(ptr noundef %0) #18
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPtET_S1_(ptr noundef %1) #18
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #18
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE11shrinkCountEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 !prof !326 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %8, label %4, !prof !327

4:                                                ; preds = %2, %4
  %5 = phi i64 [ %6, %4 ], [ %1, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %6 = add i64 %5, -1
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %4, !prof !328, !llvm.loop !329

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat !prof !326 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !207
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPtET_S1_(ptr noundef %0) #20
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPtET_S1_(ptr noundef %1) #20
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPtET_S1_(ptr noundef %2) #20
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #18
  %9 = call noundef ptr @_ZSt12__niter_wrapIPtET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #18
  ret ptr %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat !prof !326 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat !prof !326 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mItEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPKc(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !186 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #18
  tail call void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef 0, i32 noundef -1) #18
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #18
  %3 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKc(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) #18
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKc(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !186 {
  %3 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKc(ptr noundef %1) #18
  %4 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKcj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, i32 noundef %3) #18
  ret ptr %4
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKcj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKc(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xalanc_1_1016XalanTransformer9transformERKNS_15XSLTInputSourceERKNS_16XSLTResultTargetE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(112) %2) local_unnamed_addr #4 comdat align 2 !prof !186 {
  %4 = load ptr, ptr @_ZN11xalanc_1_1016XalanTransformer18s_emptyInputSourceE, align 8, !tbaa !207
  %5 = tail call noundef i32 @_ZN11xalanc_1_1016XalanTransformer9transformERKNS_15XSLTInputSourceES3_RKNS_16XSLTResultTargetE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(112) %2) #18
  ret i32 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_Z8getClockv() local_unnamed_addr #6 comdat !prof !186 {
  %1 = tail call i64 @clock() #20
  ret i64 %1
}

; Function Attrs: optsize
declare noundef i32 @_ZN11xalanc_1_1016XalanTransformer11parseSourceERKNS_15XSLTInputSourceERPKNS_17XalanParsedSourceEb(ptr noundef nonnull align 8 dereferenceable(384), ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_Z25reportElapsedMillisecondsPKcllRSo(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #4 comdat !prof !186 {
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %0) #18
  tail call void @_Z24writeElapsedMillisecondsllRSo(i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #18
  %6 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.8) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1016XalanTransformer25EnsureDestroyParsedSourceC2ERS0_PKNS_17XalanParsedSourceE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(384) %1, ptr noundef %2) unnamed_addr #6 comdat align 2 !prof !204 {
  store ptr %1, ptr %0, align 8, !tbaa !207
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer::EnsureDestroyParsedSource", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !330
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xalanc_1_1016XalanTransformer9transformERKNS_17XalanParsedSourceERKNS_16XSLTResultTargetE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 1 %1, ptr noundef nonnull align 8 dereferenceable(112) %2) local_unnamed_addr #4 comdat align 2 !prof !186 {
  %4 = load ptr, ptr @_ZN11xalanc_1_1016XalanTransformer18s_emptyInputSourceE, align 8, !tbaa !207
  %5 = tail call noundef i32 @_ZN11xalanc_1_1016XalanTransformer9transformERKNS_17XalanParsedSourceERKNS_15XSLTInputSourceERKNS_16XSLTResultTargetE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 1 %1, ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(112) %2) #18
  ret i32 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1016XalanTransformer25EnsureDestroyParsedSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !204 {
  %2 = load ptr, ptr %0, align 8, !tbaa !332
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer::EnsureDestroyParsedSource", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !330
  %5 = invoke noundef i32 @_ZN11xalanc_1_1016XalanTransformer19destroyParsedSourceEPKNS_17XalanParsedSourceE(ptr noundef nonnull align 8 dereferenceable(384) %2, ptr noundef %4) #18
          to label %6 unwind label %7

6:                                                ; preds = %1
  ret void

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          catch ptr null
  %9 = extractvalue { ptr, i32 } %8, 0
  tail call void @__clang_call_terminate(ptr %9) #21
  unreachable
}

; Function Attrs: optsize
declare noundef i32 @_ZN11xalanc_1_1016XalanTransformer9transformERKNS_15XSLTInputSourceES3_RKNS_16XSLTResultTargetE(ptr noundef nonnull align 8 dereferenceable(384), ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(112)) local_unnamed_addr #1

; Function Attrs: nounwind optsize
declare i64 @clock() local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xalanc_1_1016XalanTransformer9transformERKNS_17XalanParsedSourceERKNS_15XSLTInputSourceERKNS_16XSLTResultTargetE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 1 %1, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(112) %3) local_unnamed_addr #4 comdat align 2 !prof !204 {
  %5 = tail call noundef i32 @_ZN11xalanc_1_1016XalanTransformer11doTransformERKNS_17XalanParsedSourceEPKNS_23XalanCompiledStylesheetEPKNS_15XSLTInputSourceERKNS_16XSLTResultTargetE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 1 %1, ptr noundef null, ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(112) %3) #18
  ret i32 %5
}

; Function Attrs: optsize
declare noundef i32 @_ZN11xalanc_1_1016XalanTransformer11doTransformERKNS_17XalanParsedSourceEPKNS_23XalanCompiledStylesheetEPKNS_15XSLTInputSourceERKNS_16XSLTResultTargetE(ptr noundef nonnull align 8 dereferenceable(384), ptr noundef nonnull align 1, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(112)) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef i32 @_ZN11xalanc_1_1016XalanTransformer19destroyParsedSourceEPKNS_17XalanParsedSourceE(ptr noundef nonnull align 8 dereferenceable(384), ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef i32 @_ZN11xalanc_1_1016XalanTransformer17compileStylesheetERKNS_15XSLTInputSourceERPKNS_23XalanCompiledStylesheetE(ptr noundef nonnull align 8 dereferenceable(384), ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1016XalanTransformer31EnsureDestroyCompiledStylesheetC2ERS0_PKNS_23XalanCompiledStylesheetE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(384) %1, ptr noundef %2) unnamed_addr #6 comdat align 2 !prof !186 {
  store ptr %1, ptr %0, align 8, !tbaa !207
  %4 = getelementptr inbounds %"struct.xalanc_1_10::XalanTransformer::EnsureDestroyCompiledStylesheet", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !333
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xalanc_1_1016XalanTransformer9transformERKNS_17XalanParsedSourceEPKNS_23XalanCompiledStylesheetERKNS_16XSLTResultTargetE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 1 %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(112) %3) local_unnamed_addr #4 comdat align 2 !prof !186 {
  %5 = tail call noundef i32 @_ZN11xalanc_1_1016XalanTransformer11doTransformERKNS_17XalanParsedSourceEPKNS_23XalanCompiledStylesheetEPKNS_15XSLTInputSourceERKNS_16XSLTResultTargetE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 1 %1, ptr noundef %2, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(112) %3) #18
  ret i32 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1016XalanTransformer31EnsureDestroyCompiledStylesheetD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !186 {
  %2 = load ptr, ptr %0, align 8, !tbaa !335
  %3 = getelementptr inbounds %"struct.xalanc_1_10::XalanTransformer::EnsureDestroyCompiledStylesheet", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !333
  %5 = invoke noundef i32 @_ZN11xalanc_1_1016XalanTransformer17destroyStylesheetEPKNS_23XalanCompiledStylesheetE(ptr noundef nonnull align 8 dereferenceable(384) %2, ptr noundef %4) #18
          to label %6 unwind label %7

6:                                                ; preds = %1
  ret void

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          catch ptr null
  %9 = extractvalue { ptr, i32 } %8, 0
  tail call void @__clang_call_terminate(ptr %9) #21
  unreachable
}

; Function Attrs: optsize
declare noundef i32 @_ZN11xalanc_1_1016XalanTransformer17destroyStylesheetEPKNS_23XalanCompiledStylesheetE(ptr noundef nonnull align 8 dereferenceable(384), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 !prof !186 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !199
  %5 = getelementptr inbounds i8, ptr %4, i64 %1
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1017XalanArrayAutoPtrIN6Params9ParamPairEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 !prof !204 {
  %2 = load ptr, ptr %0, align 8, !tbaa !260
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !211

4:                                                ; preds = %1
  tail call void @_ZdaPv(ptr noundef nonnull %2) #24
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !269 {
  %3 = load ptr, ptr %0, align 8, !tbaa !190
  %4 = load ptr, ptr %3, align 8, !tbaa !255
  %5 = getelementptr inbounds ptr, ptr %4, i64 2
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %1) #18
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #6 comdat align 2 !prof !336 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE7destroyEPcS4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !269 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4, !prof !337

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE7destroyERc(ptr noundef nonnull align 1 dereferenceable(1) %5) #18
  %6 = getelementptr inbounds i8, ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !prof !338, !llvm.loop !339

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #6 comdat align 2 !prof !189 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !199
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #4 comdat align 2 !prof !189 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %2 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10deallocateEPc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !269 {
  %3 = load ptr, ptr %0, align 8, !tbaa !190
  %4 = load ptr, ptr %3, align 8, !tbaa !255
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE7destroyERc(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #6 comdat align 2 !prof !340 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #6 comdat align 2 !prof !341 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !199
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !196
  %6 = getelementptr inbounds i8, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: noinline optsize uwtable
define internal void @_GLOBAL__sub_I_XalanExe.cpp() #0 section ".text.startup" {
  tail call fastcc void @__cxx_global_var_init()
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #17

attributes #0 = { noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nosync nounwind memory(none) }
attributes #8 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress noinline norecurse optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #18 = { optsize }
attributes #19 = { nounwind }
attributes #20 = { nounwind optsize }
attributes #21 = { noreturn nounwind }
attributes #22 = { nounwind optsize willreturn memory(read) }
attributes #23 = { builtin optsize allocsize(0) }
attributes #24 = { builtin nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!185}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 545138344258}
!4 = !{!"MaxCount", i64 89343718472}
!5 = !{!"MaxInternalCount", i64 30012997636}
!6 = !{!"MaxFunctionCount", i64 89343718472}
!7 = !{!"NumCounts", i64 49244}
!8 = !{!"NumFunctions", i64 27305}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 89343718472, i32 1}
!14 = !{i32 100000, i64 89343718472, i32 1}
!15 = !{i32 200000, i64 33857387535, i32 2}
!16 = !{i32 300000, i64 30137156660, i32 4}
!17 = !{i32 400000, i64 28792558684, i32 6}
!18 = !{i32 500000, i64 16886835304, i32 8}
!19 = !{i32 600000, i64 16826917200, i32 11}
!20 = !{i32 700000, i64 13167999625, i32 15}
!21 = !{i32 800000, i64 2443628737, i32 28}
!22 = !{i32 900000, i64 555646850, i32 77}
!23 = !{i32 950000, i64 134227650, i32 195}
!24 = !{i32 990000, i64 30109074, i32 515}
!25 = !{i32 999000, i64 1000482, i32 1252}
!26 = !{i32 999900, i64 150186, i32 2316}
!27 = !{i32 999990, i64 20523, i32 3051}
!28 = !{i32 999999, i64 1160, i32 3778}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184}
!35 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEC2ERN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE8allocateEm, i64 1}
!36 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEC2ERN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10invariantsEv, i64 3}
!37 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEED2Ev, ptr @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10invariantsEv, i64 6}
!38 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE5beginEv, i64 2}
!39 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE3endEv, i64 2}
!40 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE7destroyEPcS4_, i64 2}
!41 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10deallocateEPc, i64 2}
!42 = !{ptr @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 43398227}
!43 = !{ptr @_Z7getArgsiPPcR6Params, ptr @strcmp, i64 1}
!44 = !{ptr @_Z8xsltMainiPPc, ptr @_ZN11xercesc_2_716XMLPlatformUtils10InitializeEPKcS2_PNS_12PanicHandlerEPNS_13MemoryManagerEb, i64 1}
!45 = !{ptr @_Z8xsltMainiPPc, ptr @_ZN11xalanc_1_1012XalanMemMgrs22getDefaultXercesMemMgrEv, i64 2}
!46 = !{ptr @_Z8xsltMainiPPc, ptr @_ZN11xalanc_1_1016XalanTransformer10initializeERN11xercesc_2_713MemoryManagerE, i64 1}
!47 = !{ptr @_Z8xsltMainiPPc, ptr @_ZN6ParamsC2Em, i64 1}
!48 = !{ptr @_Z8xsltMainiPPc, ptr @_Z7getArgsiPPcR6Params, i64 1}
!49 = !{ptr @_Z8xsltMainiPPc, ptr @_ZN11xalanc_1_1016XalanTransformerC1ERN11xercesc_2_713MemoryManagerE, i64 1}
!50 = !{ptr @_Z8xsltMainiPPc, ptr @_ZNK6Params9setParamsERN11xalanc_1_1016XalanTransformerE, i64 1}
!51 = !{ptr @_Z8xsltMainiPPc, ptr @_Z9transformRN11xalanc_1_1016XalanTransformerERK6Params, i64 1}
!52 = !{ptr @_Z8xsltMainiPPc, ptr @_ZN11xalanc_1_1016XalanTransformerD1Ev, i64 1}
!53 = !{ptr @_Z8xsltMainiPPc, ptr @_ZN6ParamsD2Ev, i64 1}
!54 = !{ptr @_Z8xsltMainiPPc, ptr @_ZN11xalanc_1_1016XalanTransformer9terminateEv, i64 1}
!55 = !{ptr @_Z8xsltMainiPPc, ptr @_ZN11xercesc_2_716XMLPlatformUtils9TerminateEv, i64 1}
!56 = !{ptr @_Z8xsltMainiPPc, ptr @_ZN11xalanc_1_1016XalanTransformer10ICUCleanUpEv, i64 1}
!57 = !{ptr @_ZN6ParamsC2Em, ptr @_ZN11xalanc_1_1017XalanArrayAutoPtrIN6Params9ParamPairEEC2EPS2_, i64 1}
!58 = !{ptr @_ZNK6Params9setParamsERN11xalanc_1_1016XalanTransformerE, ptr @_ZN11xalanc_1_1016XalanTransformer16setUseValidationEb, i64 1}
!59 = !{ptr @_ZNK6Params9setParamsERN11xalanc_1_1016XalanTransformerE, ptr @_ZNK11xalanc_1_1017XalanArrayAutoPtrIN6Params9ParamPairEEixEm, i64 2}
!60 = !{ptr @_ZNK6Params9setParamsERN11xalanc_1_1016XalanTransformerE, ptr @_ZN11xalanc_1_1016XalanTransformer18setStylesheetParamEPKcS2_, i64 1}
!61 = !{ptr @_Z9transformRN11xalanc_1_1016XalanTransformerERK6Params, ptr @_ZN11xalanc_1_1012XalanMemMgrs10getDefaultEv, i64 1}
!62 = !{ptr @_Z9transformRN11xalanc_1_1016XalanTransformerERK6Params, ptr @_ZN11xalanc_1_1015XSLTInputSourceC1EPKcRN11xercesc_2_713MemoryManagerE, i64 1}
!63 = !{ptr @_Z9transformRN11xalanc_1_1016XalanTransformerERK6Params, ptr @_Z9transformRN11xalanc_1_1016XalanTransformerERK6ParamsRKNS_15XSLTInputSourceE, i64 1}
!64 = !{ptr @_Z9transformRN11xalanc_1_1016XalanTransformerERK6Params, ptr @_ZN11xercesc_2_711InputSourceD2Ev, i64 1}
!65 = !{ptr @main, ptr @_Z8xsltMainiPPc, i64 1}
!66 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 128698679}
!67 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 85300390}
!68 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, i64 85300390}
!69 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_, i64 85300308}
!70 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt, i64 85300227}
!71 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 244}
!72 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt, i64 28792555932}
!73 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 227375739}
!74 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 568333389}
!75 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv, i64 568333389}
!76 = !{ptr @_Z9transformRN11xalanc_1_1016XalanTransformerERK6ParamsRKNS_15XSLTInputSourceE, ptr @_ZN11xalanc_1_1012XalanMemMgrs10getDefaultEv, i64 1}
!77 = !{ptr @_Z9transformRN11xalanc_1_1016XalanTransformerERK6ParamsRKNS_15XSLTInputSourceE, ptr @_ZN11xalanc_1_1015XSLTInputSourceC1EPKcRN11xercesc_2_713MemoryManagerE, i64 1}
!78 = !{ptr @_Z9transformRN11xalanc_1_1016XalanTransformerERK6ParamsRKNS_15XSLTInputSourceE, ptr @_Z9transformRN11xalanc_1_1016XalanTransformerERK6ParamsRKNS_15XSLTInputSourceES7_, i64 1}
!79 = !{ptr @_Z9transformRN11xalanc_1_1016XalanTransformerERK6ParamsRKNS_15XSLTInputSourceE, ptr @_ZN11xercesc_2_711InputSourceD2Ev, i64 1}
!80 = !{ptr @_ZN11xalanc_1_1012XalanMemMgrs10getDefaultEv, ptr @_ZN11xalanc_1_1012XalanMemMgrs22getDefaultXercesMemMgrEv, i64 2}
!81 = !{ptr @_Z9transformRN11xalanc_1_1016XalanTransformerERK6ParamsRKNS_15XSLTInputSourceES7_, ptr @_ZN11xalanc_1_1016XalanTransformer16getMemoryManagerEv, i64 1}
!82 = !{ptr @_Z9transformRN11xalanc_1_1016XalanTransformerERK6ParamsRKNS_15XSLTInputSourceES7_, ptr @_ZN11xalanc_1_1016XSLTResultTargetC1ERN11xercesc_2_713MemoryManagerE, i64 1}
!83 = !{ptr @_Z9transformRN11xalanc_1_1016XalanTransformerERK6ParamsRKNS_15XSLTInputSourceES7_, ptr @_ZN11xalanc_1_1016XSLTResultTarget13setByteStreamEPSo, i64 1}
!84 = !{ptr @_Z9transformRN11xalanc_1_1016XalanTransformerERK6ParamsRKNS_15XSLTInputSourceES7_, ptr @_Z9transformRN11xalanc_1_1016XalanTransformerERK6ParamsRKNS_15XSLTInputSourceES7_RKNS_16XSLTResultTargetE, i64 1}
!85 = !{ptr @_Z9transformRN11xalanc_1_1016XalanTransformerERK6ParamsRKNS_15XSLTInputSourceES7_, ptr @_ZN11xalanc_1_1016XSLTResultTargetD1Ev, i64 1}
!86 = !{ptr @_Z9transformRN11xalanc_1_1016XalanTransformerERK6ParamsRKNS_15XSLTInputSourceES7_RKNS_16XSLTResultTargetE, ptr @_ZN11xalanc_1_1016XalanTransformer9transformERKNS_15XSLTInputSourceES3_RKNS_16XSLTResultTargetE, i64 1}
!87 = !{ptr @_ZN11xalanc_1_1014XalanDOMStringaSERKS0_, ptr @_ZN11xalanc_1_1014XalanDOMString6assignERKS0_, i64 41614}
!88 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6assignERKS0_, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 83228}
!89 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6assignERKS0_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, i64 41613}
!90 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 83228}
!91 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, i64 13}
!92 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_, i64 13}
!93 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 13}
!94 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, i64 82485}
!95 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE12shrinkToSizeEm, i64 355}
!96 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 82485}
!97 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, i64 40885}
!98 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 40885}
!99 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 41600}
!100 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZSt4copyIPKtPtET0_T_S4_S3_, i64 41600}
!101 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9local_maxEmm, i64 19}
!102 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERN11xercesc_2_713MemoryManagerEm, i64 19}
!103 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 19}
!104 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 19}
!105 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, i64 19}
!106 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 19}
!107 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_, i64 19}
!108 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 19}
!109 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8allocateEm, i64 64551584}
!110 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 64551608}
!111 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 170601494}
!112 = !{ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 82509}
!113 = !{ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv, i64 82509}
!114 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE12shrinkToSizeEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8pop_backEv, i64 64729253}
!115 = !{ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 82509}
!116 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 311655952}
!117 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14local_distanceEPKtS5_, i64 157736530}
!118 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4sizeEv, i64 155828045}
!119 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, i64 240731456}
!120 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14ensureCapacityEm, i64 133170775}
!121 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerItE9constructEPtRKtRN11xercesc_2_713MemoryManagerE, i64 30012996397}
!122 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8capacityEv, i64 22657270}
!123 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERN11xercesc_2_713MemoryManagerEm, i64 20748786}
!124 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 20748766}
!125 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 62246159}
!126 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_, i64 20748647}
!127 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 20748786}
!128 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, i64 53614809}
!129 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZSt4copyIPKtPtET0_T_S4_S3_, i64 1908484}
!130 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZSt13copy_backwardIPtS0_ET0_T_S2_S1_, i64 1}
!131 = !{ptr @_ZSt4copyIPKtPtET0_T_S4_S3_, ptr @_ZSt12__miter_baseIPKtET_S2_, i64 3901146}
!132 = !{ptr @_ZSt4copyIPKtPtET0_T_S4_S3_, ptr @_ZSt13__copy_move_aILb0EPKtPtET1_T0_S4_S3_, i64 1950573}
!133 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8allocateEm, i64 1}
!134 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 64147281}
!135 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8pop_backEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 2689195952}
!136 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8pop_backEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt, i64 1344597976}
!137 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14local_distanceEPKtS5_, ptr @_ZSt8distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_, i64 185895030}
!138 = !{ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4sizeEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 156073599}
!139 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14ensureCapacityEm, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8capacityEv, i64 133170778}
!140 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14ensureCapacityEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, i64 22}
!141 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14ensureCapacityEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv, i64 133170778}
!142 = !{ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8capacityEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 155828047}
!143 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 248301304}
!144 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv, i64 124150651}
!145 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerItE9constructEPtRKtRN11xercesc_2_713MemoryManagerE, i64 124150651}
!146 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, i64 1}
!147 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, i64 1}
!148 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_, i64 1}
!149 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 1}
!150 = !{ptr @_ZSt8distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_, ptr @_ZSt19__iterator_categoryIPKtENSt15iterator_traitsIT_E17iterator_categoryERKS3_, i64 185895030}
!151 = !{ptr @_ZSt8distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_, ptr @_ZSt10__distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag, i64 185895030}
!152 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 129103172}
!153 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, i64 64551586}
!154 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_, i64 64551586}
!155 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 64551586}
!156 = !{ptr @_ZSt13__copy_move_aILb0EPKtPtET1_T0_S4_S3_, ptr @_ZSt12__niter_baseIPKtET_S2_, i64 3901146}
!157 = !{ptr @_ZSt13__copy_move_aILb0EPKtPtET1_T0_S4_S3_, ptr @_ZSt12__niter_baseIPtET_S1_, i64 1950573}
!158 = !{ptr @_ZSt13__copy_move_aILb0EPKtPtET1_T0_S4_S3_, ptr @_ZSt14__copy_move_a1ILb0EPKtPtET1_T0_S4_S3_, i64 1950573}
!159 = !{ptr @_ZSt13__copy_move_aILb0EPKtPtET1_T0_S4_S3_, ptr @_ZSt12__niter_wrapIPtET_RKS1_S1_, i64 1950573}
!160 = !{ptr @_ZSt14__copy_move_a1ILb0EPKtPtET1_T0_S4_S3_, ptr @_ZSt14__copy_move_a2ILb0EPKtPtET1_T0_S4_S3_, i64 1950573}
!161 = !{ptr @_ZSt14__copy_move_a2ILb0EPKtPtET1_T0_S4_S3_, ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mItEEPT_PKS3_S6_S4_, i64 1950573}
!162 = !{ptr @_ZN11xalanc_1_1014XalanDOMString5clearEv, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 96538440}
!163 = !{ptr @_ZN11xalanc_1_1014XalanDOMString5clearEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 48269220}
!164 = !{ptr @_ZN11xalanc_1_1014XalanDOMString5clearEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, i64 48269220}
!165 = !{ptr @_ZN11xalanc_1_1014XalanDOMString5clearEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5eraseEPtS4_, i64 48269220}
!166 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5eraseEPtS4_, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 241572884}
!167 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5eraseEPtS4_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, i64 28158502}
!168 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5eraseEPtS4_, ptr @_ZSt4copyIPtS0_ET0_T_S2_S1_, i64 28158502}
!169 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5eraseEPtS4_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14local_distanceEPKtS5_, i64 28158502}
!170 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5eraseEPtS4_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE11shrinkCountEm, i64 28158502}
!171 = !{ptr @_ZSt4copyIPtS0_ET0_T_S2_S1_, ptr @_ZSt12__miter_baseIPtET_S1_, i64 56317002}
!172 = !{ptr @_ZSt4copyIPtS0_ET0_T_S2_S1_, ptr @_ZSt13__copy_move_aILb0EPtS0_ET1_T0_S2_S1_, i64 28158501}
!173 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE11shrinkCountEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8pop_backEv, i64 1279868488}
!174 = !{ptr @_ZSt13__copy_move_aILb0EPtS0_ET1_T0_S2_S1_, ptr @_ZSt12__niter_baseIPtET_S1_, i64 84475503}
!175 = !{ptr @_ZSt13__copy_move_aILb0EPtS0_ET1_T0_S2_S1_, ptr @_ZSt14__copy_move_a1ILb0EPtS0_ET1_T0_S2_S1_, i64 28158501}
!176 = !{ptr @_ZSt13__copy_move_aILb0EPtS0_ET1_T0_S2_S1_, ptr @_ZSt12__niter_wrapIPtET_RKS1_S1_, i64 28158501}
!177 = !{ptr @_ZSt14__copy_move_a1ILb0EPtS0_ET1_T0_S2_S1_, ptr @_ZSt14__copy_move_a2ILb0EPtS0_ET1_T0_S2_S1_, i64 28158501}
!178 = !{ptr @_ZSt14__copy_move_a2ILb0EPtS0_ET1_T0_S2_S1_, ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mItEEPT_PKS3_S6_S4_, i64 28158501}
!179 = !{ptr @_ZN11xalanc_1_1016XalanTransformer25EnsureDestroyParsedSourceD2Ev, ptr @_ZN11xalanc_1_1016XalanTransformer19destroyParsedSourceEPKNS_17XalanParsedSourceE, i64 1}
!180 = !{ptr @_ZN11xalanc_1_1016XalanTransformer9transformERKNS_17XalanParsedSourceERKNS_15XSLTInputSourceERKNS_16XSLTResultTargetE, ptr @_ZN11xalanc_1_1016XalanTransformer11doTransformERKNS_17XalanParsedSourceEPKNS_23XalanCompiledStylesheetEPKNS_15XSLTInputSourceERKNS_16XSLTResultTargetE, i64 1}
!181 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE7destroyEPcS4_, ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE7destroyERc, i64 36}
!182 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10invariantsEv, i64 3}
!183 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10invariantsEv, i64 3}
!184 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE3endEv, ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10endPointerEv, i64 3}
!185 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!186 = !{!"function_entry_count", i64 0}
!187 = distinct !{!187, !188}
!188 = !{!"llvm.loop.mustprogress"}
!189 = !{!"function_entry_count", i64 3}
!190 = !{!191, !192, i64 0}
!191 = !{!"_ZTSN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEE", !192, i64 0, !195, i64 8, !195, i64 16, !192, i64 24}
!192 = !{!"any pointer", !193, i64 0}
!193 = !{!"omnipotent char", !194, i64 0}
!194 = !{!"Simple C++ TBAA"}
!195 = !{!"long", !193, i64 0}
!196 = !{!191, !195, i64 8}
!197 = !{!191, !195, i64 16}
!198 = !{!"branch_weights", i32 4, i32 1}
!199 = !{!191, !192, i64 24}
!200 = !{!"function_entry_count", i64 244780}
!201 = !{!"function_entry_count", i64 6}
!202 = !{!"branch_weights", i32 5, i32 3}
!203 = !{!"function_entry_count", i64 43398227}
!204 = !{!"function_entry_count", i64 1}
!205 = !{!"branch_weights", i32 127, i32 1}
!206 = !{!"branch_weights", i32 -2147483648, i32 0}
!207 = !{!192, !192, i64 0}
!208 = !{!"branch_weights", i32 2, i32 3}
!209 = !{!193, !193, i64 0}
!210 = !{!"branch_weights", i32 1, i32 2}
!211 = !{!"branch_weights", i32 2, i32 1}
!212 = !{!213, !192, i64 16}
!213 = !{!"_ZTS6Params", !214, i64 0, !214, i64 1, !214, i64 2, !214, i64 3, !214, i64 4, !215, i64 8, !192, i64 16, !192, i64 24, !192, i64 32, !192, i64 40, !216, i64 48, !195, i64 56, !195, i64 64}
!214 = !{!"bool", !193, i64 0}
!215 = !{!"int", !193, i64 0}
!216 = !{!"_ZTSN11xalanc_1_1017XalanArrayAutoPtrIN6Params9ParamPairEEE", !192, i64 0}
!217 = !{!"branch_weights", i32 4, i32 5}
!218 = !{!"branch_weights", i32 256, i32 6561, i32 4374, i32 2916, i32 1944, i32 1296, i32 864, i32 576, i32 384, i32 512}
!219 = !{!213, !214, i64 1}
!220 = !{!213, !192, i64 40}
!221 = !{!213, !215, i64 8}
!222 = !{!213, !214, i64 2}
!223 = !{!213, !192, i64 32}
!224 = !{!213, !214, i64 4}
!225 = !{!213, !214, i64 3}
!226 = !{!213, !214, i64 0}
!227 = !{!"branch_weights", i32 -1272582902, i32 1272582902}
!228 = !{!"branch_weights", i32 2, i32 2}
!229 = !{!213, !192, i64 24}
!230 = !{i8 0, i8 2}
!231 = !{!"branch_weights", i32 4, i32 2}
!232 = distinct !{!232, !188}
!233 = !{}
!234 = !{!213, !195, i64 64}
!235 = !{!213, !195, i64 56}
!236 = !{!237, !192, i64 0}
!237 = !{!"_ZTSN6Params9ParamPairE", !192, i64 0, !192, i64 8}
!238 = !{!237, !192, i64 8}
!239 = !{!"branch_weights", i32 1, i32 1}
!240 = !{!"branch_weights", i32 0, i32 1}
!241 = distinct !{!241, !188}
!242 = !{!"function_entry_count", i64 128698679}
!243 = !{!244, !195, i64 16}
!244 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !192, i64 0, !195, i64 8, !195, i64 16, !192, i64 24}
!245 = !{!"branch_weights", i32 43398290, i32 85300391}
!246 = !{!244, !192, i64 24}
!247 = !{!"function_entry_count", i64 6521798493}
!248 = !{!"function_entry_count", i64 85300390}
!249 = !{!"branch_weights", i32 1, i32 12185770}
!250 = !{!"branch_weights", i32 12185770, i32 -193930396}
!251 = distinct !{!251, !188}
!252 = !{!"function_entry_count", i64 227375739}
!253 = !{!"function_entry_count", i64 568333389}
!254 = !{!244, !192, i64 0}
!255 = !{!256, !256, i64 0}
!256 = !{!"vtable pointer", !194, i64 0}
!257 = !{!"function_entry_count", i64 30137156660}
!258 = !{!"function_entry_count", i64 825654971}
!259 = !{!244, !195, i64 8}
!260 = !{!216, !192, i64 0}
!261 = !{!262, !214, i64 208}
!262 = !{!"_ZTSN11xalanc_1_1016XalanTransformerE", !192, i64 8, !263, i64 16, !264, i64 48, !265, i64 80, !266, i64 112, !267, i64 144, !191, i64 176, !214, i64 208, !192, i64 216, !192, i64 224, !268, i64 232, !268, i64 272, !192, i64 312, !192, i64 320, !268, i64 328, !214, i64 368, !192, i64 376}
!263 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEEE", !192, i64 0, !195, i64 8, !195, i64 16, !192, i64 24}
!264 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEEE", !192, i64 0, !195, i64 8, !195, i64 16, !192, i64 24}
!265 = !{!"_ZTSN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEEE", !192, i64 0, !195, i64 8, !195, i64 16, !192, i64 24}
!266 = !{!"_ZTSN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEEE", !192, i64 0, !195, i64 8, !195, i64 16, !192, i64 24}
!267 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEEE", !192, i64 0, !195, i64 8, !195, i64 16, !192, i64 24}
!268 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !244, i64 0, !215, i64 32}
!269 = !{!"function_entry_count", i64 2}
!270 = !{!262, !192, i64 8}
!271 = !{!272, !192, i64 40}
!272 = !{!"_ZTSN11xalanc_1_1016XSLTResultTargetE", !268, i64 0, !192, i64 40, !268, i64 48, !192, i64 88, !192, i64 96, !192, i64 104}
!273 = !{!"function_entry_count", i64 41614}
!274 = !{!"branch_weights", i32 1, i32 41615}
!275 = !{!268, !215, i64 32}
!276 = !{!"function_entry_count", i64 3070433834}
!277 = !{!"branch_weights", i32 13, i32 41603}
!278 = !{!"branch_weights", i32 355, i32 41249}
!279 = !{!"branch_weights", i32 40890, i32 360}
!280 = !{!"function_entry_count", i64 64551608}
!281 = !{!"branch_weights", i32 64551591, i32 19}
!282 = !{!"branch_weights", i32 5, i32 64551587}
!283 = !{!"function_entry_count", i64 85300747}
!284 = !{!195, !195, i64 0}
!285 = !{!"function_entry_count", i64 82509}
!286 = !{!"function_entry_count", i64 348020}
!287 = !{!"branch_weights", i32 64381419, i32 348021}
!288 = distinct !{!288, !188}
!289 = !{!"function_entry_count", i64 155828046}
!290 = !{!"branch_weights", i32 1, i32 155828047}
!291 = !{!"branch_weights", i32 133170778, i32 22657270}
!292 = !{!"branch_weights", i32 1, i32 19024396}
!293 = !{!"branch_weights", i32 19024396, i32 -26420601}
!294 = distinct !{!294, !188}
!295 = !{!"branch_weights", i32 20748787, i32 1908484}
!296 = !{!"branch_weights", i32 1, i32 1908484}
!297 = !{!"branch_weights", i32 1, i32 1908483}
!298 = !{!"branch_weights", i32 1908483, i32 49797853}
!299 = distinct !{!299, !188}
!300 = !{!"branch_weights", i32 1908483, i32 1}
!301 = distinct !{!301, !188}
!302 = distinct !{!302, !188}
!303 = !{!"function_entry_count", i64 1950573}
!304 = !{!"function_entry_count", i64 18}
!305 = !{!"function_entry_count", i64 64147281}
!306 = !{!"branch_weights", i32 64147282, i32 1}
!307 = !{!"function_entry_count", i64 1344597976}
!308 = !{!"function_entry_count", i64 185895030}
!309 = !{!"function_entry_count", i64 156073599}
!310 = !{!"function_entry_count", i64 133170778}
!311 = !{!"branch_weights", i32 22, i32 133170758}
!312 = !{!313, !313, i64 0}
!313 = !{!"short", !193, i64 0}
!314 = !{!"function_entry_count", i64 155828047}
!315 = !{!"function_entry_count", i64 124150652}
!316 = !{!"branch_weights", i32 124150653, i32 1}
!317 = !{!"function_entry_count", i64 64551586}
!318 = !{!"function_entry_count", i64 56317002}
!319 = !{!"function_entry_count", i64 30109074}
!320 = !{!"function_entry_count", i64 86426076}
!321 = !{!"function_entry_count", i64 3901146}
!322 = !{!"branch_weights", i32 28199083, i32 1909993}
!323 = !{!"function_entry_count", i64 48269220}
!324 = !{!"function_entry_count", i64 120786442}
!325 = !{!"branch_weights", i32 92627942, i32 28158502}
!326 = !{!"function_entry_count", i64 28158501}
!327 = !{!"branch_weights", i32 1, i32 28158501}
!328 = !{!"branch_weights", i32 28158501, i32 1251710038}
!329 = distinct !{!329, !188}
!330 = !{!331, !192, i64 8}
!331 = !{!"_ZTSN11xalanc_1_1016XalanTransformer25EnsureDestroyParsedSourceE", !192, i64 0, !192, i64 8}
!332 = !{!331, !192, i64 0}
!333 = !{!334, !192, i64 8}
!334 = !{!"_ZTSN11xalanc_1_1016XalanTransformer31EnsureDestroyCompiledStylesheetE", !192, i64 0, !192, i64 8}
!335 = !{!334, !192, i64 0}
!336 = !{!"function_entry_count", i64 126551194}
!337 = !{!"branch_weights", i32 1, i32 191}
!338 = !{!"branch_weights", i32 191, i32 3265}
!339 = distinct !{!339, !188}
!340 = !{!"function_entry_count", i64 62786071}
!341 = !{!"function_entry_count", i64 122394}
