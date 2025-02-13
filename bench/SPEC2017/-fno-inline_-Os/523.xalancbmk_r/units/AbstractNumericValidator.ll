; ModuleID = 'AbstractNumericValidator.cpp'
source_filename = "AbstractNumericValidator.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XProtoType" = type { ptr, ptr }
%"class.xercesc_2_7::DatatypeValidator" = type { %"class.xercesc_2_7::XSerializable", i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::AbstractNumericFacetValidator" = type { %"class.xercesc_2_7::DatatypeValidator", i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$_ZNK11xercesc_2_717DatatypeValidator16getFacetsDefinedEv = comdat any

$_ZNK11xercesc_2_729AbstractNumericFacetValidator15getMaxExclusiveEv = comdat any

$_ZN11xercesc_2_729InvalidDatatypeValueExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE = comdat any

$_ZNK11xercesc_2_729AbstractNumericFacetValidator15getMaxInclusiveEv = comdat any

$_ZNK11xercesc_2_729AbstractNumericFacetValidator15getMinInclusiveEv = comdat any

$_ZNK11xercesc_2_729AbstractNumericFacetValidator15getMinExclusiveEv = comdat any

$_ZNK11xercesc_2_712XMLException10getMessageEv = comdat any

$__clang_call_terminate = comdat any

$_ZNK11xercesc_2_717DatatypeValidator8isAtomicEv = comdat any

$_ZN11xercesc_2_717DatatypeValidator17isSubstitutableByEPKS0_ = comdat any

$_ZN11xercesc_2_717DatatypeValidator7compareEPKtS2_PNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_729InvalidDatatypeValueExceptionD0Ev = comdat any

$_ZNK11xercesc_2_729InvalidDatatypeValueException7getTypeEv = comdat any

$_ZNK11xercesc_2_729InvalidDatatypeValueException9duplicateEv = comdat any

$_ZN11xercesc_2_729InvalidDatatypeValueExceptionC2ERKS0_ = comdat any

$_ZNK11xercesc_2_717DatatypeValidator16getBaseValidatorEv = comdat any

$_ZTSN11xercesc_2_729InvalidDatatypeValueExceptionE = comdat any

$_ZTIN11xercesc_2_729InvalidDatatypeValueExceptionE = comdat any

$_ZTVN11xercesc_2_729InvalidDatatypeValueExceptionE = comdat any

@_ZTVN11xercesc_2_724AbstractNumericValidatorE = dso_local unnamed_addr constant { [25 x ptr] } { [25 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_724AbstractNumericValidatorE, ptr @_ZN11xercesc_2_724AbstractNumericValidatorD2Ev, ptr @_ZN11xercesc_2_724AbstractNumericValidatorD0Ev, ptr @_ZNK11xercesc_2_724AbstractNumericValidator14isSerializableEv, ptr @_ZN11xercesc_2_724AbstractNumericValidator9serializeERNS_16XSerializeEngineE, ptr @_ZNK11xercesc_2_724AbstractNumericValidator12getProtoTypeEv, ptr @_ZNK11xercesc_2_717DatatypeValidator8isAtomicEv, ptr @_ZNK11xercesc_2_729AbstractNumericFacetValidator13getEnumStringEv, ptr @_ZNK11xercesc_2_724AbstractNumericValidator26getCanonicalRepresentationEPKtPNS_13MemoryManagerEb, ptr @_ZN11xercesc_2_724AbstractNumericValidator8validateEPKtPNS_17ValidationContextEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_717DatatypeValidator17isSubstitutableByEPKS0_, ptr @_ZN11xercesc_2_717DatatypeValidator7compareEPKtS2_PNS_13MemoryManagerE, ptr @__cxa_pure_virtual, ptr @_ZN11xercesc_2_729AbstractNumericFacetValidator21assignAdditionalFacetEPKtS2_PNS_13MemoryManagerE, ptr @_ZN11xercesc_2_729AbstractNumericFacetValidator22inheritAdditionalFacetEv, ptr @_ZNK11xercesc_2_729AbstractNumericFacetValidator31checkAdditionalFacetConstraintsEPNS_13MemoryManagerE, ptr @_ZNK11xercesc_2_729AbstractNumericFacetValidator35checkAdditionalFacetConstraintsBaseEPNS_13MemoryManagerE, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, align 8
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@.str = private unnamed_addr constant [29 x i8] c"AbstractNumericValidator.cpp\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_729InvalidDatatypeValueExceptionE = linkonce_odr dso_local constant [47 x i8] c"N11xercesc_2_729InvalidDatatypeValueExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_729InvalidDatatypeValueExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_729InvalidDatatypeValueExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"AbstractNumericValidator\00", align 1
@_ZN11xercesc_2_724AbstractNumericValidator29classAbstractNumericValidatorE = dso_local global %"class.xercesc_2_7::XProtoType" { ptr @.str.1, ptr @_ZN11xercesc_2_724AbstractNumericValidator12createObjectEPNS_13MemoryManagerE }, align 8
@_ZTSN11xercesc_2_724AbstractNumericValidatorE = dso_local constant [42 x i8] c"N11xercesc_2_724AbstractNumericValidatorE\00", align 1
@_ZTIN11xercesc_2_729AbstractNumericFacetValidatorE = external constant ptr
@_ZTIN11xercesc_2_724AbstractNumericValidatorE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_724AbstractNumericValidatorE, ptr @_ZTIN11xercesc_2_729AbstractNumericFacetValidatorE }, align 8
@_ZTVN11xercesc_2_729InvalidDatatypeValueExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_729InvalidDatatypeValueExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_729InvalidDatatypeValueExceptionD0Ev, ptr @_ZNK11xercesc_2_729InvalidDatatypeValueException7getTypeEv, ptr @_ZNK11xercesc_2_729InvalidDatatypeValueException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni36fgInvalidDatatypeValueException_NameE = external constant [0 x i16], align 2

@_ZN11xercesc_2_724AbstractNumericValidatorD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_724AbstractNumericValidatorD2Ev

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_729AbstractNumericFacetValidatorD2Ev(ptr noundef nonnull align 8 dereferenceable(160)) unnamed_addr #0

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_724AbstractNumericValidatorD2Ev(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #1 align 2 !prof !45 {
  tail call void @_ZN11xercesc_2_729AbstractNumericFacetValidatorD2Ev(ptr noundef nonnull align 8 dereferenceable(160) %0) #9
  ret void
}

; Function Attrs: mustprogress noinline noreturn nounwind optsize memory(inaccessiblemem: write) uwtable
define dso_local void @_ZN11xercesc_2_724AbstractNumericValidatorD0Ev(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 {
  tail call void @llvm.trap() #10
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_724AbstractNumericValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEiNS1_13ValidatorTypeEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) unnamed_addr #4 align 2 !prof !45 {
  tail call void @_ZN11xercesc_2_729AbstractNumericFacetValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEiNS1_13ValidatorTypeEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) #11
  store ptr getelementptr inbounds ({ [25 x ptr] }, ptr @_ZTVN11xercesc_2_724AbstractNumericValidatorE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !46
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_729AbstractNumericFacetValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEiNS1_13ValidatorTypeEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_724AbstractNumericValidator8validateEPKtPNS_17ValidationContextEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #4 align 2 !prof !49 {
  %5 = load ptr, ptr %0, align 8, !tbaa !46
  %6 = getelementptr inbounds ptr, ptr %5, i64 17
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext false, ptr noundef %3) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_724AbstractNumericValidator11boundsCheckEPKNS_9XMLNumberEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !50 {
  %4 = tail call noundef i32 @_ZNK11xercesc_2_717DatatypeValidator16getFacetsDefinedEv(ptr noundef nonnull align 8 dereferenceable(104) %0) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %132, label %6, !prof !51

6:                                                ; preds = %3
  %7 = and i32 %4, 64
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %34, label %9, !prof !52

9:                                                ; preds = %6
  %10 = tail call noundef ptr @_ZNK11xercesc_2_729AbstractNumericFacetValidator15getMaxExclusiveEv(ptr noundef nonnull align 8 dereferenceable(160) %0) #11
  %11 = load ptr, ptr %0, align 8, !tbaa !46
  %12 = getelementptr inbounds ptr, ptr %11, i64 16
  %13 = load ptr, ptr %12, align 8
  %14 = invoke noundef i32 %13(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, ptr noundef %10) #11
          to label %15 unwind label %30

15:                                               ; preds = %9
  %16 = icmp eq i32 %14, -1
  br i1 %16, label %34, label %17

17:                                               ; preds = %15
  %18 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %19 = load ptr, ptr %1, align 8, !tbaa !46
  %20 = getelementptr inbounds ptr, ptr %19, i64 7
  %21 = load ptr, ptr %20, align 8
  %22 = invoke noundef ptr %21(ptr noundef nonnull align 8 dereferenceable(8) %1) #11
          to label %23 unwind label %32

23:                                               ; preds = %17
  %24 = tail call noundef ptr @_ZNK11xercesc_2_729AbstractNumericFacetValidator15getMaxExclusiveEv(ptr noundef nonnull align 8 dereferenceable(160) %0) #11
  %25 = load ptr, ptr %24, align 8, !tbaa !46
  %26 = getelementptr inbounds ptr, ptr %25, i64 7
  %27 = load ptr, ptr %26, align 8
  %28 = invoke noundef ptr %27(ptr noundef nonnull align 8 dereferenceable(8) %24) #11
          to label %29 unwind label %32

29:                                               ; preds = %23
  invoke void @_ZN11xercesc_2_729InvalidDatatypeValueExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %18, ptr noundef nonnull @.str, i32 noundef 82, i32 noundef 248, ptr noundef %22, ptr noundef %28, ptr noundef null, ptr noundef null, ptr noundef %2) #11
          to label %110 unwind label %32

30:                                               ; preds = %110, %89, %63, %37, %9
  %31 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  br label %115

32:                                               ; preds = %29, %23, %17
  %33 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  tail call void @__cxa_free_exception(ptr %18) #12
  br label %115

34:                                               ; preds = %15, %6
  %35 = and i32 %4, 32
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %60, label %37, !prof !53

37:                                               ; preds = %34
  %38 = tail call noundef ptr @_ZNK11xercesc_2_729AbstractNumericFacetValidator15getMaxInclusiveEv(ptr noundef nonnull align 8 dereferenceable(160) %0) #11
  %39 = load ptr, ptr %0, align 8, !tbaa !46
  %40 = getelementptr inbounds ptr, ptr %39, i64 16
  %41 = load ptr, ptr %40, align 8
  %42 = invoke noundef i32 %41(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, ptr noundef %38) #11
          to label %43 unwind label %30

43:                                               ; preds = %37
  %44 = icmp eq i32 %42, 1
  br i1 %44, label %45, label %60, !prof !54

45:                                               ; preds = %43
  %46 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %47 = load ptr, ptr %1, align 8, !tbaa !46
  %48 = getelementptr inbounds ptr, ptr %47, i64 7
  %49 = load ptr, ptr %48, align 8
  %50 = invoke noundef ptr %49(ptr noundef nonnull align 8 dereferenceable(8) %1) #11
          to label %51 unwind label %58

51:                                               ; preds = %45
  %52 = tail call noundef ptr @_ZNK11xercesc_2_729AbstractNumericFacetValidator15getMaxInclusiveEv(ptr noundef nonnull align 8 dereferenceable(160) %0) #11
  %53 = load ptr, ptr %52, align 8, !tbaa !46
  %54 = getelementptr inbounds ptr, ptr %53, i64 7
  %55 = load ptr, ptr %54, align 8
  %56 = invoke noundef ptr %55(ptr noundef nonnull align 8 dereferenceable(8) %52) #11
          to label %57 unwind label %58

57:                                               ; preds = %51
  invoke void @_ZN11xercesc_2_729InvalidDatatypeValueExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %46, ptr noundef nonnull @.str, i32 noundef 95, i32 noundef 247, ptr noundef %50, ptr noundef %56, ptr noundef null, ptr noundef null, ptr noundef %2) #11
          to label %110 unwind label %58

58:                                               ; preds = %57, %51, %45
  %59 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  tail call void @__cxa_free_exception(ptr %46) #12
  br label %115

60:                                               ; preds = %43, %34
  %61 = and i32 %4, 128
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %86, label %63, !prof !55

63:                                               ; preds = %60
  %64 = tail call noundef ptr @_ZNK11xercesc_2_729AbstractNumericFacetValidator15getMinInclusiveEv(ptr noundef nonnull align 8 dereferenceable(160) %0) #11
  %65 = load ptr, ptr %0, align 8, !tbaa !46
  %66 = getelementptr inbounds ptr, ptr %65, i64 16
  %67 = load ptr, ptr %66, align 8
  %68 = invoke noundef i32 %67(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, ptr noundef %64) #11
          to label %69 unwind label %30

69:                                               ; preds = %63
  %70 = icmp eq i32 %68, -1
  br i1 %70, label %71, label %86, !prof !56

71:                                               ; preds = %69
  %72 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %73 = load ptr, ptr %1, align 8, !tbaa !46
  %74 = getelementptr inbounds ptr, ptr %73, i64 7
  %75 = load ptr, ptr %74, align 8
  %76 = invoke noundef ptr %75(ptr noundef nonnull align 8 dereferenceable(8) %1) #11
          to label %77 unwind label %84

77:                                               ; preds = %71
  %78 = tail call noundef ptr @_ZNK11xercesc_2_729AbstractNumericFacetValidator15getMinInclusiveEv(ptr noundef nonnull align 8 dereferenceable(160) %0) #11
  %79 = load ptr, ptr %78, align 8, !tbaa !46
  %80 = getelementptr inbounds ptr, ptr %79, i64 7
  %81 = load ptr, ptr %80, align 8
  %82 = invoke noundef ptr %81(ptr noundef nonnull align 8 dereferenceable(8) %78) #11
          to label %83 unwind label %84

83:                                               ; preds = %77
  invoke void @_ZN11xercesc_2_729InvalidDatatypeValueExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %72, ptr noundef nonnull @.str, i32 noundef 108, i32 noundef 249, ptr noundef %76, ptr noundef %82, ptr noundef null, ptr noundef null, ptr noundef %2) #11
          to label %110 unwind label %84

84:                                               ; preds = %83, %77, %71
  %85 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  tail call void @__cxa_free_exception(ptr %72) #12
  br label %115

86:                                               ; preds = %69, %60
  %87 = and i32 %4, 256
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %132, label %89, !prof !52

89:                                               ; preds = %86
  %90 = tail call noundef ptr @_ZNK11xercesc_2_729AbstractNumericFacetValidator15getMinExclusiveEv(ptr noundef nonnull align 8 dereferenceable(160) %0) #11
  %91 = load ptr, ptr %0, align 8, !tbaa !46
  %92 = getelementptr inbounds ptr, ptr %91, i64 16
  %93 = load ptr, ptr %92, align 8
  %94 = invoke noundef i32 %93(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, ptr noundef %90) #11
          to label %95 unwind label %30

95:                                               ; preds = %89
  %96 = icmp eq i32 %94, 1
  br i1 %96, label %132, label %97

97:                                               ; preds = %95
  %98 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %99 = load ptr, ptr %1, align 8, !tbaa !46
  %100 = getelementptr inbounds ptr, ptr %99, i64 7
  %101 = load ptr, ptr %100, align 8
  %102 = invoke noundef ptr %101(ptr noundef nonnull align 8 dereferenceable(8) %1) #11
          to label %103 unwind label %113

103:                                              ; preds = %97
  %104 = tail call noundef ptr @_ZNK11xercesc_2_729AbstractNumericFacetValidator15getMinExclusiveEv(ptr noundef nonnull align 8 dereferenceable(160) %0) #11
  %105 = load ptr, ptr %104, align 8, !tbaa !46
  %106 = getelementptr inbounds ptr, ptr %105, i64 7
  %107 = load ptr, ptr %106, align 8
  %108 = invoke noundef ptr %107(ptr noundef nonnull align 8 dereferenceable(8) %104) #11
          to label %109 unwind label %113

109:                                              ; preds = %103
  invoke void @_ZN11xercesc_2_729InvalidDatatypeValueExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %98, ptr noundef nonnull @.str, i32 noundef 121, i32 noundef 250, ptr noundef %102, ptr noundef %108, ptr noundef null, ptr noundef null, ptr noundef %2) #11
          to label %110 unwind label %113

110:                                              ; preds = %29, %109, %83, %57
  %111 = phi ptr [ %46, %57 ], [ %72, %83 ], [ %98, %109 ], [ %18, %29 ]
  invoke void @__cxa_throw(ptr nonnull %111, ptr nonnull @_ZTIN11xercesc_2_729InvalidDatatypeValueExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #13
          to label %112 unwind label %30

112:                                              ; preds = %110
  unreachable

113:                                              ; preds = %109, %103, %97
  %114 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  tail call void @__cxa_free_exception(ptr %98) #12
  br label %115

115:                                              ; preds = %113, %84, %58, %32, %30
  %116 = phi { ptr, i32 } [ %31, %30 ], [ %33, %32 ], [ %59, %58 ], [ %85, %84 ], [ %114, %113 ]
  %117 = extractvalue { ptr, i32 } %116, 1
  %118 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_712XMLExceptionE) #12
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %133

120:                                              ; preds = %115
  %121 = extractvalue { ptr, i32 } %116, 0
  %122 = tail call ptr @__cxa_begin_catch(ptr %121) #12
  %123 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %124 = tail call noundef ptr @_ZNK11xercesc_2_712XMLException10getMessageEv(ptr noundef nonnull align 8 dereferenceable(48) %122) #11
  invoke void @_ZN11xercesc_2_729InvalidDatatypeValueExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %123, ptr noundef nonnull @.str, i32 noundef 127, i32 noundef 299, ptr noundef %124, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %2) #11
          to label %125 unwind label %126

125:                                              ; preds = %120
  invoke void @__cxa_throw(ptr nonnull %123, ptr nonnull @_ZTIN11xercesc_2_729InvalidDatatypeValueExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #13
          to label %138 unwind label %128

126:                                              ; preds = %120
  %127 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %123) #12
  br label %130

128:                                              ; preds = %125
  %129 = landingpad { ptr, i32 }
          cleanup
  br label %130

130:                                              ; preds = %128, %126
  %131 = phi { ptr, i32 } [ %129, %128 ], [ %127, %126 ]
  invoke void @__cxa_end_catch()
          to label %133 unwind label %135

132:                                              ; preds = %95, %86, %3
  ret void

133:                                              ; preds = %130, %115
  %134 = phi { ptr, i32 } [ %116, %115 ], [ %131, %130 ]
  resume { ptr, i32 } %134

135:                                              ; preds = %130
  %136 = landingpad { ptr, i32 }
          catch ptr null
  %137 = extractvalue { ptr, i32 } %136, 0
  tail call void @__clang_call_terminate(ptr %137) #10
  unreachable

138:                                              ; preds = %125
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_717DatatypeValidator16getFacetsDefinedEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #1 comdat align 2 !prof !57 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 7
  %3 = load i32, ptr %2, align 4, !tbaa !58
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_729AbstractNumericFacetValidator15getMaxExclusiveEv(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #1 comdat align 2 !prof !68 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::AbstractNumericFacetValidator", ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !69
  ret ptr %3
}

declare i32 @__gxx_personality_v0(...)

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_729InvalidDatatypeValueExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %8) #11
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_729InvalidDatatypeValueExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !46
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) #11
          to label %10 unwind label %11

10:                                               ; preds = %9
  ret void

11:                                               ; preds = %9
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #9
  resume { ptr, i32 } %12
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #0

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_729AbstractNumericFacetValidator15getMaxInclusiveEv(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #1 comdat align 2 !prof !72 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::AbstractNumericFacetValidator", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !73
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_729AbstractNumericFacetValidator15getMinInclusiveEv(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #1 comdat align 2 !prof !74 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::AbstractNumericFacetValidator", ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !75
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_729AbstractNumericFacetValidator15getMinExclusiveEv(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #1 comdat align 2 !prof !68 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::AbstractNumericFacetValidator", ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !76
  ret ptr %3
}

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #6

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_712XMLException10getMessageEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #1 comdat align 2 !prof !71 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !77
  ret ptr %3
}

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #12
  tail call void @_ZSt9terminatev() #10
  unreachable
}

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_724AbstractNumericValidator26getCanonicalRepresentationEPKtPNS_13MemoryManagerEb(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  %5 = icmp eq ptr %2, null
  %6 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 18
  %7 = load ptr, ptr %6, align 8
  %8 = select i1 %5, ptr %7, ptr %2
  br i1 %3, label %9, label %17

9:                                                ; preds = %4
  %10 = load ptr, ptr %0, align 8, !tbaa !46
  %11 = getelementptr inbounds ptr, ptr %10, i64 17
  %12 = load ptr, ptr %11, align 8
  invoke void %12(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, ptr noundef null, i1 noundef zeroext false, ptr noundef %8) #11
          to label %17 unwind label %13

13:                                               ; preds = %9
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  %16 = tail call ptr @__cxa_begin_catch(ptr %15) #12
  tail call void @__cxa_end_catch()
  br label %19

17:                                               ; preds = %9, %4
  %18 = tail call noundef ptr @_ZN11xercesc_2_722XMLAbstractDoubleFloat26getCanonicalRepresentationEPKtPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %8) #11
  br label %19

19:                                               ; preds = %13, %17
  %20 = phi ptr [ %18, %17 ], [ null, %13 ]
  ret ptr %20
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_722XMLAbstractDoubleFloat26getCanonicalRepresentationEPKtPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZN11xercesc_2_724AbstractNumericValidator12createObjectEPNS_13MemoryManagerE(ptr nocapture readnone %0) #8 align 2 !prof !71 {
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_724AbstractNumericValidator14isSerializableEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #8 align 2 !prof !71 {
  ret i1 true
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK11xercesc_2_724AbstractNumericValidator12getProtoTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #8 align 2 !prof !71 {
  ret ptr @_ZN11xercesc_2_724AbstractNumericValidator29classAbstractNumericValidatorE
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_724AbstractNumericValidator9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(100) %1) unnamed_addr #4 align 2 !prof !71 {
  tail call void @_ZN11xercesc_2_729AbstractNumericFacetValidator9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(100) %1) #11
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_729AbstractNumericFacetValidator9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef nonnull align 8 dereferenceable(100)) unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_717DatatypeValidator8isAtomicEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #1 comdat align 2 !prof !71 {
  ret i1 true
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_729AbstractNumericFacetValidator13getEnumStringEv(ptr noundef nonnull align 8 dereferenceable(160)) unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_717DatatypeValidator17isSubstitutableByEPKS0_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1) unnamed_addr #4 comdat align 2 !prof !71 {
  %3 = icmp ne ptr %1, null
  %4 = icmp ne ptr %1, %0
  %5 = and i1 %4, %3
  br i1 %5, label %6, label %12

6:                                                ; preds = %2, %6
  %7 = phi ptr [ %8, %6 ], [ %1, %2 ]
  %8 = tail call noundef ptr @_ZNK11xercesc_2_717DatatypeValidator16getBaseValidatorEv(ptr noundef nonnull align 8 dereferenceable(104) %7) #11
  %9 = icmp ne ptr %8, null
  %10 = icmp ne ptr %8, %0
  %11 = and i1 %10, %9
  br i1 %11, label %6, label %12, !llvm.loop !80

12:                                               ; preds = %6, %2
  %13 = phi i1 [ %3, %2 ], [ %9, %6 ]
  ret i1 %13
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_717DatatypeValidator7compareEPKtS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #4 comdat align 2 !prof !71 {
  %5 = tail call noundef i32 @_ZN11xercesc_2_79XMLString13compareStringEPKtS2_(ptr noundef %1, ptr noundef %2) #11
  ret i32 %5
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: optsize
declare void @_ZN11xercesc_2_729AbstractNumericFacetValidator21assignAdditionalFacetEPKtS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_729AbstractNumericFacetValidator22inheritAdditionalFacetEv(ptr noundef nonnull align 8 dereferenceable(160)) unnamed_addr #5

; Function Attrs: optsize
declare void @_ZNK11xercesc_2_729AbstractNumericFacetValidator31checkAdditionalFacetConstraintsEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef) unnamed_addr #5

; Function Attrs: optsize
declare void @_ZNK11xercesc_2_729AbstractNumericFacetValidator35checkAdditionalFacetConstraintsBaseEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef) unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_729InvalidDatatypeValueExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #9
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_729InvalidDatatypeValueException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 !prof !71 {
  ret ptr @_ZN11xercesc_2_76XMLUni36fgInvalidDatatypeValueException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_729InvalidDatatypeValueException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !82
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #11
  invoke void @_ZN11xercesc_2_729InvalidDatatypeValueExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #11
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #9
  resume { ptr, i32 } %7
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_729InvalidDatatypeValueExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #4 comdat align 2 !prof !71 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #11
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_729InvalidDatatypeValueExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !46
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_717DatatypeValidator16getBaseValidatorEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #1 comdat align 2 !prof !83 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !84
  ret ptr %3
}

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_79XMLString13compareStringEPKtS2_(ptr noundef, ptr noundef) local_unnamed_addr #5

attributes #0 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline noreturn nounwind optsize memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #4 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nosync nounwind memory(none) }
attributes #7 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind optsize }
attributes #10 = { noreturn nounwind }
attributes #11 = { optsize }
attributes #12 = { nounwind }
attributes #13 = { noreturn }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!44}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43}
!35 = !{ptr @_ZN11xercesc_2_724AbstractNumericValidatorD2Ev, ptr @_ZN11xercesc_2_729AbstractNumericFacetValidatorD2Ev, i64 17}
!36 = !{ptr @_ZN11xercesc_2_724AbstractNumericValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEiNS1_13ValidatorTypeEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_729AbstractNumericFacetValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEiNS1_13ValidatorTypeEPNS_13MemoryManagerE, i64 17}
!37 = !{ptr @_ZN11xercesc_2_724AbstractNumericValidator11boundsCheckEPKNS_9XMLNumberEPNS_13MemoryManagerE, ptr @_ZNK11xercesc_2_717DatatypeValidator16getFacetsDefinedEv, i64 91734}
!38 = !{ptr @_ZN11xercesc_2_724AbstractNumericValidator11boundsCheckEPKNS_9XMLNumberEPNS_13MemoryManagerE, ptr @_ZNK11xercesc_2_729AbstractNumericFacetValidator15getMaxExclusiveEv, i64 1}
!39 = !{ptr @_ZN11xercesc_2_724AbstractNumericValidator11boundsCheckEPKNS_9XMLNumberEPNS_13MemoryManagerE, ptr @_ZNK11xercesc_2_729AbstractNumericFacetValidator15getMaxInclusiveEv, i64 11}
!40 = !{ptr @_ZN11xercesc_2_724AbstractNumericValidator11boundsCheckEPKNS_9XMLNumberEPNS_13MemoryManagerE, ptr @__cxa_allocate_exception, i64 2}
!41 = !{ptr @_ZN11xercesc_2_724AbstractNumericValidator11boundsCheckEPKNS_9XMLNumberEPNS_13MemoryManagerE, ptr @__cxa_free_exception, i64 2}
!42 = !{ptr @_ZN11xercesc_2_724AbstractNumericValidator11boundsCheckEPKNS_9XMLNumberEPNS_13MemoryManagerE, ptr @_ZNK11xercesc_2_729AbstractNumericFacetValidator15getMinInclusiveEv, i64 24943}
!43 = !{ptr @_ZN11xercesc_2_724AbstractNumericValidator11boundsCheckEPKNS_9XMLNumberEPNS_13MemoryManagerE, ptr @_ZNK11xercesc_2_729AbstractNumericFacetValidator15getMinExclusiveEv, i64 1}
!44 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!45 = !{!"function_entry_count", i64 17}
!46 = !{!47, !47, i64 0}
!47 = !{!"vtable pointer", !48, i64 0}
!48 = !{!"Simple C++ TBAA"}
!49 = !{!"function_entry_count", i64 91718}
!50 = !{!"function_entry_count", i64 91734}
!51 = !{!"branch_weights", i32 1, i32 91735}
!52 = !{!"branch_weights", i32 91735, i32 1}
!53 = !{!"branch_weights", i32 91725, i32 11}
!54 = !{!"branch_weights", i32 1, i32 11}
!55 = !{!"branch_weights", i32 66792, i32 24944}
!56 = !{!"branch_weights", i32 1, i32 24944}
!57 = !{!"function_entry_count", i64 2082808}
!58 = !{!59, !64, i64 20}
!59 = !{!"_ZTSN11xercesc_2_717DatatypeValidatorE", !60, i64 0, !61, i64 8, !61, i64 9, !61, i64 10, !61, i64 11, !63, i64 12, !64, i64 16, !64, i64 20, !64, i64 24, !65, i64 28, !66, i64 32, !67, i64 40, !67, i64 48, !67, i64 56, !67, i64 64, !67, i64 72, !67, i64 80, !67, i64 88, !67, i64 96}
!60 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!61 = !{!"bool", !62, i64 0}
!62 = !{!"omnipotent char", !48, i64 0}
!63 = !{!"short", !62, i64 0}
!64 = !{!"int", !62, i64 0}
!65 = !{!"_ZTSN11xercesc_2_717DatatypeValidator13ValidatorTypeE", !62, i64 0}
!66 = !{!"_ZTSN11xercesc_2_722XSSimpleTypeDefinition8ORDERINGE", !62, i64 0}
!67 = !{!"any pointer", !62, i64 0}
!68 = !{!"function_entry_count", i64 42}
!69 = !{!70, !67, i64 120}
!70 = !{!"_ZTSN11xercesc_2_729AbstractNumericFacetValidatorE", !59, i64 0, !61, i64 104, !61, i64 105, !61, i64 106, !61, i64 107, !61, i64 108, !67, i64 112, !67, i64 120, !67, i64 128, !67, i64 136, !67, i64 144, !67, i64 152}
!71 = !{!"function_entry_count", i64 0}
!72 = !{!"function_entry_count", i64 52}
!73 = !{!70, !67, i64 112}
!74 = !{!"function_entry_count", i64 24989}
!75 = !{!70, !67, i64 128}
!76 = !{!70, !67, i64 136}
!77 = !{!78, !67, i64 32}
!78 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !79, i64 8, !67, i64 16, !64, i64 24, !67, i64 32, !67, i64 40}
!79 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !62, i64 0}
!80 = distinct !{!80, !81}
!81 = !{!"llvm.loop.mustprogress"}
!82 = !{!78, !67, i64 40}
!83 = !{!"function_entry_count", i64 1580484}
!84 = !{!59, !67, i64 40}
