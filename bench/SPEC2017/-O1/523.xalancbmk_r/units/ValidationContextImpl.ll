; ModuleID = 'ValidationContextImpl.cpp'
source_filename = "ValidationContextImpl.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XMLRefInfo" = type { %"class.xercesc_2_7::XSerializable", i8, i8, ptr, ptr }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::ValidationContextImpl" = type { %"class.xercesc_2_7::ValidationContext", ptr, ptr, i8, ptr }
%"class.xercesc_2_7::ValidationContext" = type { ptr, ptr }
%"class.xercesc_2_7::RefHashTableOf" = type { ptr, i8, ptr, i32, i32, i32, ptr }
%"struct.xercesc_2_7::RefHashTableBucketElem" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::XMLEntityDecl" = type { %"class.xercesc_2_7::XSerializable", i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }
%"class.xercesc_2_7::ArrayJanitor" = type { ptr, ptr }
%"class.xercesc_2_7::NameIdPool" = type <{ ptr, ptr, ptr, i32, i32, i32, [4 x i8] }>
%"struct.xercesc_2_7::NameIdPoolBucketElem" = type { ptr, ptr }

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_710XMLRefInfoD0Ev = comdat any

$_ZN11xercesc_2_710XMLRefInfoD2Ev = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_10XMLRefInfoEEC2EjPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_10XMLRefInfoEE9removeAllEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_10XMLRefInfoEE3getEPKv = comdat any

$_ZN11xercesc_2_729InvalidDatatypeValueExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_10XMLRefInfoEE3putEPvPS1_ = comdat any

$_ZNK11xercesc_2_721ValidationContextImpl23getValidatingMemberTypeEv = comdat any

$_ZN11xercesc_2_721ValidationContextImpl23setValidatingMemberTypeEPNS_17DatatypeValidatorE = comdat any

$_ZN11xercesc_2_717ValidationContextD2Ev = comdat any

$_ZN11xercesc_2_717ValidationContextD0Ev = comdat any

$_ZN11xercesc_2_729InvalidDatatypeValueExceptionD0Ev = comdat any

$_ZNK11xercesc_2_729InvalidDatatypeValueException7getTypeEv = comdat any

$_ZNK11xercesc_2_729InvalidDatatypeValueException9duplicateEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_10XMLRefInfoEE7cleanupEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_10XMLRefInfoEE10initializeEj = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev = comdat any

$_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv = comdat any

$_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_10XMLRefInfoEE6rehashEv = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_10XMLRefInfoEEEED2Ev = comdat any

$_ZNK11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE14findBucketElemEPKtRj = comdat any

$_ZTVN11xercesc_2_710XMLRefInfoE = comdat any

$_ZTSN11xercesc_2_729InvalidDatatypeValueExceptionE = comdat any

$_ZTIN11xercesc_2_729InvalidDatatypeValueExceptionE = comdat any

$_ZTSN11xercesc_2_710XMLRefInfoE = comdat any

$_ZTSN11xercesc_2_713XSerializableE = comdat any

$_ZTIN11xercesc_2_713XSerializableE = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_710XMLRefInfoE = comdat any

$_ZTSN11xercesc_2_717ValidationContextE = comdat any

$_ZTIN11xercesc_2_717ValidationContextE = comdat any

$_ZTVN11xercesc_2_717ValidationContextE = comdat any

$_ZTVN11xercesc_2_729InvalidDatatypeValueExceptionE = comdat any

$_ZTSN11xercesc_2_724IllegalArgumentExceptionE = comdat any

$_ZTIN11xercesc_2_724IllegalArgumentExceptionE = comdat any

$_ZTVN11xercesc_2_724IllegalArgumentExceptionE = comdat any

@_ZTVN11xercesc_2_710XMLRefInfoE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_710XMLRefInfoE, ptr @_ZN11xercesc_2_710XMLRefInfoD2Ev, ptr @_ZN11xercesc_2_710XMLRefInfoD0Ev, ptr @_ZNK11xercesc_2_710XMLRefInfo14isSerializableEv, ptr @_ZN11xercesc_2_710XMLRefInfo9serializeERNS_16XSerializeEngineE, ptr @_ZNK11xercesc_2_710XMLRefInfo12getProtoTypeEv] }, comdat, align 8
@_ZTVN11xercesc_2_721ValidationContextImplE = dso_local unnamed_addr constant { [15 x ptr] } { [15 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_721ValidationContextImplE, ptr @_ZN11xercesc_2_721ValidationContextImplD2Ev, ptr @_ZN11xercesc_2_721ValidationContextImplD0Ev, ptr @_ZNK11xercesc_2_721ValidationContextImpl12getIdRefListEv, ptr @_ZN11xercesc_2_721ValidationContextImpl12setIdRefListEPNS_14RefHashTableOfINS_10XMLRefInfoEEE, ptr @_ZN11xercesc_2_721ValidationContextImpl14clearIdRefListEv, ptr @_ZN11xercesc_2_721ValidationContextImpl5addIdEPKt, ptr @_ZN11xercesc_2_721ValidationContextImpl8addIdRefEPKt, ptr @_ZN11xercesc_2_721ValidationContextImpl16toCheckIdRefListEb, ptr @_ZNK11xercesc_2_721ValidationContextImpl17getEntityDeclPoolEv, ptr @_ZN11xercesc_2_721ValidationContextImpl17setEntityDeclPoolEPKNS_10NameIdPoolINS_13DTDEntityDeclEEE, ptr @_ZNK11xercesc_2_721ValidationContextImpl11checkEntityEPKt, ptr @_ZNK11xercesc_2_721ValidationContextImpl23getValidatingMemberTypeEv, ptr @_ZN11xercesc_2_721ValidationContextImpl23setValidatingMemberTypeEPNS_17DatatypeValidatorE] }, align 8
@.str = private unnamed_addr constant [26 x i8] c"ValidationContextImpl.cpp\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_729InvalidDatatypeValueExceptionE = linkonce_odr dso_local constant [47 x i8] c"N11xercesc_2_729InvalidDatatypeValueExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_729InvalidDatatypeValueExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_729InvalidDatatypeValueExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_710XMLRefInfoE = linkonce_odr dso_local constant [28 x i8] c"N11xercesc_2_710XMLRefInfoE\00", comdat, align 1
@_ZTSN11xercesc_2_713XSerializableE = linkonce_odr dso_local constant [31 x i8] c"N11xercesc_2_713XSerializableE\00", comdat, align 1
@_ZTIN11xercesc_2_713XSerializableE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_713XSerializableE }, comdat, align 8
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_710XMLRefInfoE = linkonce_odr dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_710XMLRefInfoE, i32 0, i32 2, ptr @_ZTIN11xercesc_2_713XSerializableE, i64 2, ptr @_ZTIN11xercesc_2_77XMemoryE, i64 2 }, comdat, align 8
@_ZTSN11xercesc_2_721ValidationContextImplE = dso_local constant [39 x i8] c"N11xercesc_2_721ValidationContextImplE\00", align 1
@_ZTSN11xercesc_2_717ValidationContextE = linkonce_odr dso_local constant [35 x i8] c"N11xercesc_2_717ValidationContextE\00", comdat, align 1
@_ZTIN11xercesc_2_717ValidationContextE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_717ValidationContextE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_721ValidationContextImplE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_721ValidationContextImplE, ptr @_ZTIN11xercesc_2_717ValidationContextE }, align 8
@_ZTVN11xercesc_2_717ValidationContextE = linkonce_odr dso_local unnamed_addr constant { [15 x ptr] } { [15 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_717ValidationContextE, ptr @_ZN11xercesc_2_717ValidationContextD2Ev, ptr @_ZN11xercesc_2_717ValidationContextD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZTVN11xercesc_2_729InvalidDatatypeValueExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_729InvalidDatatypeValueExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_729InvalidDatatypeValueExceptionD0Ev, ptr @_ZNK11xercesc_2_729InvalidDatatypeValueException7getTypeEv, ptr @_ZNK11xercesc_2_729InvalidDatatypeValueException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni36fgInvalidDatatypeValueException_NameE = external constant [0 x i16], align 2
@.str.1 = private unnamed_addr constant [32 x i8] c"./xercesc/util/RefHashTableOf.c\00", align 1
@_ZTSN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local constant [42 x i8] c"N11xercesc_2_724IllegalArgumentExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_724IllegalArgumentExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev, ptr @_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv, ptr @_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni31fgIllegalArgumentException_NameE = external constant [0 x i16], align 2

@_ZN11xercesc_2_721ValidationContextImplD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_721ValidationContextImplD2Ev
@_ZN11xercesc_2_721ValidationContextImplC1EPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_721ValidationContextImplC2EPNS_13MemoryManagerE

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #0 comdat !prof !47 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #14
  tail call void @_ZSt9terminatev() #15
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLRefInfoD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !47 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_710XMLRefInfoE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !48
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLRefInfo", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !51
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLRefInfo", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !57
  %6 = load ptr, ptr %3, align 8, !tbaa !48
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5)
          to label %12 unwind label %9

9:                                                ; preds = %1
  %10 = landingpad { ptr, i32 }
          catch ptr null
  %11 = extractvalue { ptr, i32 } %10, 0
  tail call void @__clang_call_terminate(ptr %11) #15
  unreachable

12:                                               ; preds = %1
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLRefInfoD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !47 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_710XMLRefInfoE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !48
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLRefInfo", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !51
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLRefInfo", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !57
  %6 = load ptr, ptr %3, align 8, !tbaa !48
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5)
          to label %9 unwind label %10

9:                                                ; preds = %1
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #15
  unreachable
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_721ValidationContextImplD2Ev(ptr nocapture noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !58 {
  store ptr getelementptr inbounds ({ [15 x ptr] }, ptr @_ZTVN11xercesc_2_721ValidationContextImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !48
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValidationContextImpl", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !59
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5, !prof !62

5:                                                ; preds = %1
  invoke void @_ZN11xercesc_2_714RefHashTableOfINS_10XMLRefInfoEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %3)
          to label %9 unwind label %6, !prof !63

6:                                                ; preds = %5
  %7 = landingpad { ptr, i32 }
          catch ptr null
  %8 = extractvalue { ptr, i32 } %7, 0
  tail call void @__clang_call_terminate(ptr %8) #15
  unreachable

9:                                                ; preds = %5
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %3) #14
  br label %10

10:                                               ; preds = %9, %1
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_721ValidationContextImplD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 align 2 !prof !58 {
  tail call void @_ZN11xercesc_2_721ValidationContextImplD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_721ValidationContextImplC2EPNS_13MemoryManagerE(ptr nocapture noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !58 {
  store ptr getelementptr inbounds ({ [15 x ptr] }, ptr @_ZTVN11xercesc_2_717ValidationContextE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !48
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValidationContext", ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !64
  store ptr getelementptr inbounds ({ [15 x ptr] }, ptr @_ZTVN11xercesc_2_721ValidationContextImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !48
  %4 = getelementptr inbounds %"class.xercesc_2_7::ValidationContextImpl", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xercesc_2_7::ValidationContextImpl", ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  store i8 1, ptr %5, align 8, !tbaa !65
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValidationContextImpl", ptr %0, i64 0, i32 4
  store ptr null, ptr %6, align 8, !tbaa !66
  %7 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %1)
  %8 = load ptr, ptr %3, align 8, !tbaa !64
  invoke void @_ZN11xercesc_2_714RefHashTableOfINS_10XMLRefInfoEEC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, i32 noundef 109, ptr noundef %8)
          to label %9 unwind label %10, !prof !63

9:                                                ; preds = %2
  store ptr %7, ptr %4, align 8, !tbaa !59
  ret void

10:                                               ; preds = %2
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %7, ptr noundef %1) #14
  resume { ptr, i32 } %11
}

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_10XMLRefInfoEEC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !58 {
  store ptr %2, ptr %0, align 8, !tbaa !67
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 1
  store i8 1, ptr %4, align 8, !tbaa !70
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  store ptr null, ptr %5, align 8, !tbaa !71
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  store i32 %1, ptr %6, align 8, !tbaa !72
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 4
  store i32 %1, ptr %7, align 4, !tbaa !73
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  store i32 0, ptr %8, align 8, !tbaa !74
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  store ptr null, ptr %9, align 8, !tbaa !75
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_10XMLRefInfoEE10initializeEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1)
  %10 = load ptr, ptr %0, align 8, !tbaa !67
  %11 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 8, ptr noundef %10)
  invoke void @_ZN11xercesc_2_79HashXMLChC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %12 unwind label %13, !prof !63

12:                                               ; preds = %3
  store ptr %11, ptr %9, align 8, !tbaa !75
  ret void

13:                                               ; preds = %3
  %14 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %11, ptr noundef %10) #14
  resume { ptr, i32 } %14
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_721ValidationContextImpl12getIdRefListEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %0) unnamed_addr #6 align 2 !prof !76 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValidationContextImpl", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !59
  ret ptr %3
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_721ValidationContextImpl12setIdRefListEPNS_14RefHashTableOfINS_10XMLRefInfoEEE(ptr nocapture noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !47 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValidationContextImpl", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !59
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  invoke void @_ZN11xercesc_2_714RefHashTableOfINS_10XMLRefInfoEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %4)
          to label %10 unwind label %7

7:                                                ; preds = %6
  %8 = landingpad { ptr, i32 }
          catch ptr null
  %9 = extractvalue { ptr, i32 } %8, 0
  tail call void @__clang_call_terminate(ptr %9) #15
  unreachable

10:                                               ; preds = %6
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %4) #14
  br label %11

11:                                               ; preds = %10, %2
  store ptr %1, ptr %3, align 8, !tbaa !59
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_721ValidationContextImpl14clearIdRefListEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %0) unnamed_addr #4 align 2 !prof !77 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValidationContextImpl", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !59
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5, !prof !78

5:                                                ; preds = %1
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_10XMLRefInfoEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %3)
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_10XMLRefInfoEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #4 comdat align 2 !prof !79 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !74
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %45, label %5, !prof !80

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !72
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 1
  br label %13

12:                                               ; preds = %38, %5
  store i32 0, ptr %2, align 8, !tbaa !74
  br label %45

13:                                               ; preds = %9, %38
  %14 = phi i64 [ 0, %9 ], [ %41, %38 ]
  %15 = load ptr, ptr %10, align 8, !tbaa !71
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !81
  %18 = icmp eq ptr %17, null
  br i1 %18, label %38, label %19

19:                                               ; preds = %13, %32
  %20 = phi ptr [ %22, %32 ], [ %17, %13 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !82
  %23 = load i8, ptr %11, align 8, !tbaa !70, !range !84, !noundef !85
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %19
  %26 = load ptr, ptr %20, align 8, !tbaa !86
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %26, align 8, !tbaa !48
  %30 = getelementptr inbounds ptr, ptr %29, i64 1
  %31 = load ptr, ptr %30, align 8
  tail call void %31(ptr noundef nonnull align 8 dereferenceable(32) %26) #14
  br label %32

32:                                               ; preds = %25, %28, %19
  %33 = load ptr, ptr %0, align 8, !tbaa !67
  %34 = load ptr, ptr %33, align 8, !tbaa !48
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  tail call void %36(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef nonnull %20)
  %37 = icmp eq ptr %22, null
  br i1 %37, label %38, label %19, !llvm.loop !87

38:                                               ; preds = %32, %13
  %39 = load ptr, ptr %10, align 8, !tbaa !71
  %40 = getelementptr inbounds ptr, ptr %39, i64 %14
  store ptr null, ptr %40, align 8, !tbaa !81
  %41 = add nuw nsw i64 %14, 1
  %42 = load i32, ptr %6, align 8, !tbaa !72
  %43 = zext i32 %42 to i64
  %44 = icmp ult i64 %41, %43
  br i1 %44, label %13, label %12, !llvm.loop !90

45:                                               ; preds = %1, %12
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_721ValidationContextImpl5addIdEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %0, ptr noundef %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !47 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValidationContextImpl", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !59
  %5 = icmp eq ptr %4, null
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValidationContextImpl", ptr %0, i64 0, i32 3
  %7 = load i8, ptr %6, align 8, !range !84
  %8 = icmp eq i8 %7, 0
  %9 = select i1 %5, i1 true, i1 %8
  br i1 %9, label %63, label %10

10:                                               ; preds = %2
  %11 = tail call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_10XMLRefInfoEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %1)
  %12 = icmp eq ptr %11, null
  br i1 %12, label %24, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %"class.xercesc_2_7::XMLRefInfo", ptr %11, i64 0, i32 1
  %15 = load i8, ptr %14, align 8, !tbaa !91, !range !84, !noundef !85
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %60, label %17

17:                                               ; preds = %13
  %18 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %19 = getelementptr inbounds %"class.xercesc_2_7::ValidationContext", ptr %0, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !64
  invoke void @_ZN11xercesc_2_729InvalidDatatypeValueExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %18, ptr noundef nonnull @.str, i32 noundef 89, i32 noundef 255, ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %20)
          to label %21 unwind label %22

21:                                               ; preds = %17
  tail call void @__cxa_throw(ptr nonnull %18, ptr nonnull @_ZTIN11xercesc_2_729InvalidDatatypeValueExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

22:                                               ; preds = %17
  %23 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %18) #14
  br label %64

24:                                               ; preds = %10
  %25 = getelementptr inbounds %"class.xercesc_2_7::ValidationContext", ptr %0, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !64
  %27 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 32, ptr noundef %26)
  %28 = load ptr, ptr %25, align 8, !tbaa !64
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_710XMLRefInfoE, i64 0, inrange i32 0, i64 2), ptr %27, align 8, !tbaa !48
  %29 = getelementptr inbounds %"class.xercesc_2_7::XMLRefInfo", ptr %27, i64 0, i32 1
  store i8 0, ptr %29, align 8, !tbaa !91
  %30 = getelementptr inbounds %"class.xercesc_2_7::XMLRefInfo", ptr %27, i64 0, i32 2
  store i8 0, ptr %30, align 1, !tbaa !92
  %31 = getelementptr inbounds %"class.xercesc_2_7::XMLRefInfo", ptr %27, i64 0, i32 3
  store ptr null, ptr %31, align 8, !tbaa !57
  %32 = getelementptr inbounds %"class.xercesc_2_7::XMLRefInfo", ptr %27, i64 0, i32 4
  store ptr %28, ptr %32, align 8, !tbaa !51
  %33 = icmp eq ptr %1, null
  br i1 %33, label %55, label %34

34:                                               ; preds = %24
  %35 = load i16, ptr %1, align 2, !tbaa !93
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %48, label %37

37:                                               ; preds = %34, %37
  %38 = phi ptr [ %39, %37 ], [ %1, %34 ]
  %39 = getelementptr inbounds i16, ptr %38, i64 1
  %40 = load i16, ptr %39, align 2, !tbaa !93
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %42, label %37, !llvm.loop !95

42:                                               ; preds = %37
  %43 = ptrtoint ptr %39 to i64
  %44 = ptrtoint ptr %1 to i64
  %45 = sub i64 %43, %44
  %46 = add i64 %45, 2
  %47 = and i64 %46, 8589934590
  br label %48

48:                                               ; preds = %42, %34
  %49 = phi i64 [ %47, %42 ], [ 2, %34 ]
  %50 = load ptr, ptr %28, align 8, !tbaa !48
  %51 = getelementptr inbounds ptr, ptr %50, i64 2
  %52 = load ptr, ptr %51, align 8
  %53 = invoke noundef ptr %52(ptr noundef nonnull align 8 dereferenceable(8) %28, i64 noundef %49)
          to label %54 unwind label %58

54:                                               ; preds = %48
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %53, ptr nonnull align 2 %1, i64 %49, i1 false)
  br label %55

55:                                               ; preds = %24, %54
  %56 = phi ptr [ %53, %54 ], [ null, %24 ]
  store ptr %56, ptr %31, align 8, !tbaa !57
  %57 = load ptr, ptr %3, align 8, !tbaa !59
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_10XMLRefInfoEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %57, ptr noundef %56, ptr noundef nonnull %27)
  br label %60

58:                                               ; preds = %48
  %59 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef nonnull %27, ptr noundef %26) #14
  br label %64

60:                                               ; preds = %13, %55
  %61 = phi ptr [ %11, %13 ], [ %27, %55 ]
  %62 = getelementptr inbounds %"class.xercesc_2_7::XMLRefInfo", ptr %61, i64 0, i32 1
  store i8 1, ptr %62, align 8, !tbaa !91
  br label %63

63:                                               ; preds = %2, %60
  ret void

64:                                               ; preds = %58, %22
  %65 = phi { ptr, i32 } [ %23, %22 ], [ %59, %58 ]
  resume { ptr, i32 } %65
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_10XMLRefInfoEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !47 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !75
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !72
  %7 = load ptr, ptr %0, align 8, !tbaa !67
  %8 = load ptr, ptr %4, align 8, !tbaa !48
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef i32 %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %1, i32 noundef %6, ptr noundef %7)
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !71
  %13 = zext i32 %10 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !81
  %16 = icmp eq ptr %15, null
  br i1 %16, label %30, label %17

17:                                               ; preds = %2, %26
  %18 = phi ptr [ %28, %26 ], [ %15, %2 ]
  %19 = load ptr, ptr %3, align 8, !tbaa !75
  %20 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %18, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !96
  %22 = load ptr, ptr %19, align 8, !tbaa !48
  %23 = getelementptr inbounds ptr, ptr %22, i64 1
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef zeroext i1 %24(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef %1, ptr noundef %21)
  br i1 %25, label %30, label %26

26:                                               ; preds = %17
  %27 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %18, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !81
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %17, !llvm.loop !97

30:                                               ; preds = %17, %26, %2
  %31 = phi ptr [ null, %2 ], [ %18, %17 ], [ null, %26 ]
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %30
  %34 = load ptr, ptr %31, align 8, !tbaa !86
  br label %35

35:                                               ; preds = %30, %33
  %36 = phi ptr [ %34, %33 ], [ null, %30 ]
  ret ptr %36
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_729InvalidDatatypeValueExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !47 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %8)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_729InvalidDatatypeValueExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !48
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
          to label %10 unwind label %11

10:                                               ; preds = %9
  ret void

11:                                               ; preds = %9
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  resume { ptr, i32 } %12
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_10XMLRefInfoEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 !prof !47 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !72
  %6 = mul i32 %5, 3
  %7 = lshr i32 %6, 2
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  %9 = load i32, ptr %8, align 8, !tbaa !74
  %10 = icmp ult i32 %9, %7
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_10XMLRefInfoEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  br label %12

12:                                               ; preds = %11, %3
  %13 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !75
  %15 = load i32, ptr %4, align 8, !tbaa !72
  %16 = load ptr, ptr %0, align 8, !tbaa !67
  %17 = load ptr, ptr %14, align 8, !tbaa !48
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef i32 %18(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef %1, i32 noundef %15, ptr noundef %16)
  %20 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !71
  %22 = zext i32 %19 to i64
  %23 = getelementptr inbounds ptr, ptr %21, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !81
  %25 = icmp eq ptr %24, null
  br i1 %25, label %39, label %26

26:                                               ; preds = %12, %35
  %27 = phi ptr [ %37, %35 ], [ %24, %12 ]
  %28 = load ptr, ptr %13, align 8, !tbaa !75
  %29 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %27, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !96
  %31 = load ptr, ptr %28, align 8, !tbaa !48
  %32 = getelementptr inbounds ptr, ptr %31, i64 1
  %33 = load ptr, ptr %32, align 8
  %34 = tail call noundef zeroext i1 %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %1, ptr noundef %30)
  br i1 %34, label %39, label %35

35:                                               ; preds = %26
  %36 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %27, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !81
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %26, !llvm.loop !97

39:                                               ; preds = %26, %35, %12
  %40 = phi ptr [ null, %12 ], [ %27, %26 ], [ null, %35 ]
  %41 = icmp eq ptr %40, null
  br i1 %41, label %55, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 1
  %44 = load i8, ptr %43, align 8, !tbaa !70, !range !84, !noundef !85
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %42
  %47 = load ptr, ptr %40, align 8, !tbaa !86
  %48 = icmp eq ptr %47, null
  br i1 %48, label %53, label %49

49:                                               ; preds = %46
  %50 = load ptr, ptr %47, align 8, !tbaa !48
  %51 = getelementptr inbounds ptr, ptr %50, i64 1
  %52 = load ptr, ptr %51, align 8
  tail call void %52(ptr noundef nonnull align 8 dereferenceable(32) %47) #14
  br label %53

53:                                               ; preds = %46, %49, %42
  store ptr %2, ptr %40, align 8, !tbaa !86
  %54 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %40, i64 0, i32 2
  store ptr %1, ptr %54, align 8, !tbaa !96
  br label %68

55:                                               ; preds = %39
  %56 = load ptr, ptr %0, align 8, !tbaa !67
  %57 = load ptr, ptr %56, align 8, !tbaa !48
  %58 = getelementptr inbounds ptr, ptr %57, i64 2
  %59 = load ptr, ptr %58, align 8
  %60 = tail call noundef ptr %59(ptr noundef nonnull align 8 dereferenceable(8) %56, i64 noundef 24)
  %61 = load ptr, ptr %20, align 8, !tbaa !71
  %62 = getelementptr inbounds ptr, ptr %61, i64 %22
  %63 = load ptr, ptr %62, align 8, !tbaa !81
  store ptr %2, ptr %60, align 8, !tbaa !86
  %64 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %60, i64 0, i32 1
  store ptr %63, ptr %64, align 8, !tbaa !82
  %65 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %60, i64 0, i32 2
  store ptr %1, ptr %65, align 8, !tbaa !96
  store ptr %60, ptr %62, align 8, !tbaa !81
  %66 = load i32, ptr %8, align 8, !tbaa !74
  %67 = add i32 %66, 1
  store i32 %67, ptr %8, align 8, !tbaa !74
  br label %68

68:                                               ; preds = %55, %53
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_721ValidationContextImpl8addIdRefEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %0, ptr noundef %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !47 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValidationContextImpl", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !59
  %5 = icmp eq ptr %4, null
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValidationContextImpl", ptr %0, i64 0, i32 3
  %7 = load i8, ptr %6, align 8, !range !84
  %8 = icmp eq i8 %7, 0
  %9 = select i1 %5, i1 true, i1 %8
  br i1 %9, label %52, label %10

10:                                               ; preds = %2
  %11 = tail call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_10XMLRefInfoEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %1)
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %49

13:                                               ; preds = %10
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValidationContext", ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !64
  %16 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 32, ptr noundef %15)
  %17 = load ptr, ptr %14, align 8, !tbaa !64
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_710XMLRefInfoE, i64 0, inrange i32 0, i64 2), ptr %16, align 8, !tbaa !48
  %18 = getelementptr inbounds %"class.xercesc_2_7::XMLRefInfo", ptr %16, i64 0, i32 1
  store i8 0, ptr %18, align 8, !tbaa !91
  %19 = getelementptr inbounds %"class.xercesc_2_7::XMLRefInfo", ptr %16, i64 0, i32 2
  store i8 0, ptr %19, align 1, !tbaa !92
  %20 = getelementptr inbounds %"class.xercesc_2_7::XMLRefInfo", ptr %16, i64 0, i32 3
  store ptr null, ptr %20, align 8, !tbaa !57
  %21 = getelementptr inbounds %"class.xercesc_2_7::XMLRefInfo", ptr %16, i64 0, i32 4
  store ptr %17, ptr %21, align 8, !tbaa !51
  %22 = icmp eq ptr %1, null
  br i1 %22, label %44, label %23

23:                                               ; preds = %13
  %24 = load i16, ptr %1, align 2, !tbaa !93
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %37, label %26

26:                                               ; preds = %23, %26
  %27 = phi ptr [ %28, %26 ], [ %1, %23 ]
  %28 = getelementptr inbounds i16, ptr %27, i64 1
  %29 = load i16, ptr %28, align 2, !tbaa !93
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %31, label %26, !llvm.loop !95

31:                                               ; preds = %26
  %32 = ptrtoint ptr %28 to i64
  %33 = ptrtoint ptr %1 to i64
  %34 = sub i64 %32, %33
  %35 = add i64 %34, 2
  %36 = and i64 %35, 8589934590
  br label %37

37:                                               ; preds = %31, %23
  %38 = phi i64 [ %36, %31 ], [ 2, %23 ]
  %39 = load ptr, ptr %17, align 8, !tbaa !48
  %40 = getelementptr inbounds ptr, ptr %39, i64 2
  %41 = load ptr, ptr %40, align 8
  %42 = invoke noundef ptr %41(ptr noundef nonnull align 8 dereferenceable(8) %17, i64 noundef %38)
          to label %43 unwind label %47

43:                                               ; preds = %37
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %42, ptr nonnull align 2 %1, i64 %38, i1 false)
  br label %44

44:                                               ; preds = %13, %43
  %45 = phi ptr [ %42, %43 ], [ null, %13 ]
  store ptr %45, ptr %20, align 8, !tbaa !57
  %46 = load ptr, ptr %3, align 8, !tbaa !59
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_10XMLRefInfoEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %46, ptr noundef %45, ptr noundef nonnull %16)
  br label %49

47:                                               ; preds = %37
  %48 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef nonnull %16, ptr noundef %15) #14
  resume { ptr, i32 } %48

49:                                               ; preds = %44, %10
  %50 = phi ptr [ %11, %10 ], [ %16, %44 ]
  %51 = getelementptr inbounds %"class.xercesc_2_7::XMLRefInfo", ptr %50, i64 0, i32 2
  store i8 1, ptr %51, align 1, !tbaa !92
  br label %52

52:                                               ; preds = %2, %49
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_721ValidationContextImpl16toCheckIdRefListEb(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(48) %0, i1 noundef zeroext %1) unnamed_addr #8 align 2 !prof !98 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::ValidationContextImpl", ptr %0, i64 0, i32 3
  store i8 %3, ptr %4, align 8, !tbaa !65
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_721ValidationContextImpl17getEntityDeclPoolEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %0) unnamed_addr #6 align 2 !prof !47 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValidationContextImpl", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !99
  ret ptr %3
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef ptr @_ZN11xercesc_2_721ValidationContextImpl17setEntityDeclPoolEPKNS_10NameIdPoolINS_13DTDEntityDeclEEE(ptr nocapture noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) unnamed_addr #9 align 2 !prof !100 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValidationContextImpl", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !99
  store ptr %1, ptr %3, align 8, !tbaa !99
  ret ptr %4
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xercesc_2_721ValidationContextImpl11checkEntityEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %0, ptr noundef %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !47 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %"class.xercesc_2_7::ValidationContextImpl", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !99
  %6 = icmp eq ptr %5, null
  br i1 %6, label %27, label %7

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  %8 = call noundef ptr @_ZNK11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE14findBucketElemEPKtRj(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = load ptr, ptr %8, align 8, !tbaa !101
  br label %12

12:                                               ; preds = %7, %10
  %13 = phi ptr [ %11, %10 ], [ null, %7 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %13, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !103
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %15, %12
  %20 = call ptr @__cxa_allocate_exception(i64 48) #14
  %21 = getelementptr inbounds %"class.xercesc_2_7::ValidationContext", ptr %0, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !64
  invoke void @_ZN11xercesc_2_729InvalidDatatypeValueExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %20, ptr noundef nonnull @.str, i32 noundef 160, i32 noundef 256, ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %22)
          to label %23 unwind label %24

23:                                               ; preds = %19
  call void @__cxa_throw(ptr nonnull %20, ptr nonnull @_ZTIN11xercesc_2_729InvalidDatatypeValueExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

24:                                               ; preds = %19
  %25 = landingpad { ptr, i32 }
          cleanup
  br label %34

26:                                               ; preds = %15
  ret void

27:                                               ; preds = %2
  %28 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %29 = getelementptr inbounds %"class.xercesc_2_7::ValidationContext", ptr %0, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !64
  invoke void @_ZN11xercesc_2_729InvalidDatatypeValueExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %28, ptr noundef nonnull @.str, i32 noundef 172, i32 noundef 256, ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %30)
          to label %31 unwind label %32

31:                                               ; preds = %27
  tail call void @__cxa_throw(ptr nonnull %28, ptr nonnull @_ZTIN11xercesc_2_729InvalidDatatypeValueExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

32:                                               ; preds = %27
  %33 = landingpad { ptr, i32 }
          cleanup
  br label %34

34:                                               ; preds = %32, %24
  %35 = phi ptr [ %28, %32 ], [ %20, %24 ]
  %36 = phi { ptr, i32 } [ %33, %32 ], [ %25, %24 ]
  call void @__cxa_free_exception(ptr %35) #14
  resume { ptr, i32 } %36
}

declare noundef zeroext i1 @_ZNK11xercesc_2_710XMLRefInfo14isSerializableEv(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #5

declare void @_ZN11xercesc_2_710XMLRefInfo9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(100)) unnamed_addr #5

declare noundef ptr @_ZNK11xercesc_2_710XMLRefInfo12getProtoTypeEv(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #5

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_721ValidationContextImpl23getValidatingMemberTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 !prof !47 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValidationContextImpl", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !66
  ret ptr %3
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_721ValidationContextImpl23setValidatingMemberTypeEPNS_17DatatypeValidatorE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 !prof !47 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValidationContextImpl", ptr %0, i64 0, i32 4
  store ptr %1, ptr %3, align 8, !tbaa !66
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717ValidationContextD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 !prof !47 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717ValidationContextD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 !prof !47 {
  tail call void @llvm.trap() #15
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #10

declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #5

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_729InvalidDatatypeValueExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 !prof !47 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_729InvalidDatatypeValueException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 !prof !47 {
  ret ptr @_ZN11xercesc_2_76XMLUni36fgInvalidDatatypeValueException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_729InvalidDatatypeValueException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !47 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !105
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_729InvalidDatatypeValueExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !48
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #14
  resume { ptr, i32 } %7
}

declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_10XMLRefInfoEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #4 comdat align 2 !prof !58 {
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_10XMLRefInfoEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  %2 = load ptr, ptr %0, align 8, !tbaa !67
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !71
  %5 = load ptr, ptr %2, align 8, !tbaa !48
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4), !prof !108
  store ptr null, ptr %3, align 8, !tbaa !71
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !75
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11, !prof !62

11:                                               ; preds = %1
  %12 = load ptr, ptr %9, align 8, !tbaa !48
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(8) %9) #14, !prof !109
  br label %15

15:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_10XMLRefInfoEE10initializeEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !58 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %10, !prof !62

4:                                                ; preds = %2
  %5 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %6 = load ptr, ptr %0, align 8, !tbaa !67
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull @.str.1, i32 noundef 99, i32 noundef 48, ptr noundef %6)
          to label %7 unwind label %8

7:                                                ; preds = %4
  tail call void @__cxa_throw(ptr nonnull %5, ptr nonnull @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

8:                                                ; preds = %4
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %5) #14
  resume { ptr, i32 } %9

10:                                               ; preds = %2
  %11 = load ptr, ptr %0, align 8, !tbaa !67
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !72
  %14 = zext i32 %13 to i64
  %15 = shl nuw nsw i64 %14, 3
  %16 = load ptr, ptr %11, align 8, !tbaa !48
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef %15), !prof !110
  %20 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  store ptr %19, ptr %20, align 8, !tbaa !71
  %21 = load i32, ptr %12, align 8, !tbaa !72
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23, !prof !111

23:                                               ; preds = %10
  %24 = zext i32 %21 to i64
  br label %26

25:                                               ; preds = %26, %10
  ret void

26:                                               ; preds = %23, %26
  %27 = phi i64 [ 0, %23 ], [ %30, %26 ]
  %28 = load ptr, ptr %20, align 8, !tbaa !71
  %29 = getelementptr inbounds ptr, ptr %28, i64 %27
  store ptr null, ptr %29, align 8, !tbaa !81
  %30 = add nuw nsw i64 %27, 1
  %31 = icmp eq i64 %30, %24
  br i1 %31, label %25, label %26, !prof !112, !llvm.loop !113
}

declare void @_ZN11xercesc_2_79HashXMLChC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !47 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !48
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  resume { ptr, i32 } %8
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #2

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #5

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 !prof !47 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 !prof !47 {
  ret ptr @_ZN11xercesc_2_76XMLUni31fgIllegalArgumentException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !47 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !105
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !48
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #14
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_10XMLRefInfoEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !47 {
  %2 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !72
  %5 = shl i32 %4, 1
  %6 = load ptr, ptr %0, align 8, !tbaa !67
  %7 = zext i32 %5 to i64
  %8 = shl nuw nsw i64 %7, 3
  %9 = load ptr, ptr %6, align 8, !tbaa !48
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef %8)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #14
  %13 = load ptr, ptr %0, align 8, !tbaa !67
  store ptr %12, ptr %2, align 8, !tbaa !114
  %14 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %2, i64 0, i32 1
  store ptr %13, ptr %14, align 8, !tbaa !116
  tail call void @llvm.memset.p0.i64(ptr align 8 %12, i8 0, i64 %8, i1 false)
  %15 = load i32, ptr %3, align 8, !tbaa !72
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %19 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  br label %28

20:                                               ; preds = %52, %1
  %21 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !71
  %23 = load ptr, ptr %2, align 8, !tbaa !114
  store ptr null, ptr %2, align 8, !tbaa !114
  store ptr %23, ptr %21, align 8, !tbaa !71
  store i32 %5, ptr %3, align 8, !tbaa !72
  %24 = load ptr, ptr %0, align 8, !tbaa !67
  %25 = load ptr, ptr %24, align 8, !tbaa !48
  %26 = getelementptr inbounds ptr, ptr %25, i64 3
  %27 = load ptr, ptr %26, align 8
  invoke void %27(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef %22)
          to label %57 unwind label %58

28:                                               ; preds = %17, %52
  %29 = phi i64 [ 0, %17 ], [ %53, %52 ]
  %30 = load ptr, ptr %18, align 8, !tbaa !71
  %31 = getelementptr inbounds ptr, ptr %30, i64 %29
  %32 = load ptr, ptr %31, align 8, !tbaa !81
  %33 = icmp eq ptr %32, null
  br i1 %33, label %52, label %34

34:                                               ; preds = %28, %45
  %35 = phi ptr [ %37, %45 ], [ %32, %28 ]
  %36 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !82
  %38 = load ptr, ptr %19, align 8, !tbaa !75
  %39 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %35, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !96
  %41 = load ptr, ptr %0, align 8, !tbaa !67
  %42 = load ptr, ptr %38, align 8, !tbaa !48
  %43 = load ptr, ptr %42, align 8
  %44 = invoke noundef i32 %43(ptr noundef nonnull align 8 dereferenceable(8) %38, ptr noundef %40, i32 noundef %5, ptr noundef %41)
          to label %45 unwind label %50

45:                                               ; preds = %34
  %46 = zext i32 %44 to i64
  %47 = getelementptr inbounds ptr, ptr %12, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !81
  store ptr %48, ptr %36, align 8, !tbaa !82
  store ptr %35, ptr %47, align 8, !tbaa !81
  %49 = icmp eq ptr %37, null
  br i1 %49, label %52, label %34, !llvm.loop !117

50:                                               ; preds = %34
  %51 = landingpad { ptr, i32 }
          cleanup
  br label %60

52:                                               ; preds = %45, %28
  %53 = add nuw nsw i64 %29, 1
  %54 = load i32, ptr %3, align 8, !tbaa !72
  %55 = zext i32 %54 to i64
  %56 = icmp ult i64 %53, %55
  br i1 %56, label %28, label %20, !llvm.loop !118

57:                                               ; preds = %20
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_10XMLRefInfoEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #14
  ret void

58:                                               ; preds = %20
  %59 = landingpad { ptr, i32 }
          cleanup
  br label %60

60:                                               ; preds = %58, %50
  %61 = phi { ptr, i32 } [ %51, %50 ], [ %59, %58 ]
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_10XMLRefInfoEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #14
  resume { ptr, i32 } %61
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_10XMLRefInfoEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !47 {
  %2 = load ptr, ptr %0, align 8, !tbaa !114
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !116
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !48
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %2)
          to label %13 unwind label %14

12:                                               ; preds = %4
  tail call void @_ZdaPv(ptr noundef %2) #17
  br label %13

13:                                               ; preds = %8, %1, %12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void

14:                                               ; preds = %8
  %15 = landingpad { ptr, i32 }
          catch ptr null
  %16 = extractvalue { ptr, i32 } %15, 0
  tail call void @__clang_call_terminate(ptr %16) #15
  unreachable
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #13

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE14findBucketElemEPKtRj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #4 comdat align 2 !prof !47 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !119
  %6 = icmp eq ptr %1, null
  br i1 %6, label %30, label %7

7:                                                ; preds = %3
  %8 = load i16, ptr %1, align 2, !tbaa !93
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %30, label %10

10:                                               ; preds = %7
  %11 = zext i16 %8 to i32
  %12 = getelementptr inbounds i16, ptr %1, i64 1
  %13 = load i16, ptr %12, align 2, !tbaa !93
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %10, %15
  %16 = phi i16 [ %25, %15 ], [ %13, %10 ]
  %17 = phi ptr [ %24, %15 ], [ %12, %10 ]
  %18 = phi i32 [ %23, %15 ], [ %11, %10 ]
  %19 = mul i32 %18, 38
  %20 = lshr i32 %18, 24
  %21 = add i32 %19, %20
  %22 = zext i16 %16 to i32
  %23 = add i32 %21, %22
  %24 = getelementptr inbounds i16, ptr %17, i64 1
  %25 = load i16, ptr %24, align 2, !tbaa !93
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %27, label %15, !llvm.loop !121

27:                                               ; preds = %15, %10
  %28 = phi i32 [ %11, %10 ], [ %23, %15 ]
  %29 = urem i32 %28, %5
  br label %30

30:                                               ; preds = %3, %7, %27
  %31 = phi i32 [ %29, %27 ], [ 0, %7 ], [ 0, %3 ]
  store i32 %31, ptr %2, align 4, !tbaa !122
  %32 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !123
  %34 = zext i32 %31 to i64
  %35 = getelementptr inbounds ptr, ptr %33, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !81
  %37 = icmp eq ptr %36, null
  br i1 %37, label %72, label %38

38:                                               ; preds = %30, %68
  %39 = phi ptr [ %70, %68 ], [ %36, %30 ]
  %40 = load ptr, ptr %39, align 8, !tbaa !101
  %41 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %40, i64 0, i32 4
  %42 = load ptr, ptr %41, align 8, !tbaa !124
  %43 = icmp eq ptr %42, null
  %44 = or i1 %6, %43
  br i1 %44, label %49, label %45

45:                                               ; preds = %38
  %46 = load i16, ptr %1, align 2, !tbaa !93
  %47 = load i16, ptr %42, align 2, !tbaa !93
  %48 = icmp eq i16 %46, %47
  br i1 %48, label %57, label %68

49:                                               ; preds = %38
  br i1 %6, label %53, label %50

50:                                               ; preds = %49
  %51 = load i16, ptr %1, align 2, !tbaa !93
  %52 = icmp eq i16 %51, 0
  br i1 %52, label %53, label %68

53:                                               ; preds = %50, %49
  br i1 %43, label %72, label %54

54:                                               ; preds = %53
  %55 = load i16, ptr %42, align 2, !tbaa !93
  %56 = icmp eq i16 %55, 0
  br i1 %56, label %72, label %68

57:                                               ; preds = %45, %62
  %58 = phi i16 [ %65, %62 ], [ %46, %45 ]
  %59 = phi ptr [ %64, %62 ], [ %42, %45 ]
  %60 = phi ptr [ %63, %62 ], [ %1, %45 ]
  %61 = icmp eq i16 %58, 0
  br i1 %61, label %72, label %62

62:                                               ; preds = %57
  %63 = getelementptr inbounds i16, ptr %60, i64 1
  %64 = getelementptr inbounds i16, ptr %59, i64 1
  %65 = load i16, ptr %63, align 2, !tbaa !93
  %66 = load i16, ptr %64, align 2, !tbaa !93
  %67 = icmp eq i16 %65, %66
  br i1 %67, label %57, label %68, !llvm.loop !125

68:                                               ; preds = %62, %45, %54, %50
  %69 = getelementptr inbounds %"struct.xercesc_2_7::NameIdPoolBucketElem", ptr %39, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !81
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %38, !llvm.loop !126

72:                                               ; preds = %68, %53, %54, %57, %30
  %73 = phi ptr [ null, %30 ], [ %39, %57 ], [ %39, %54 ], [ %39, %53 ], [ null, %68 ]
  ret ptr %73
}

attributes #0 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind }
attributes #15 = { noreturn nounwind }
attributes #16 = { noreturn }
attributes #17 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!46}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45}
!35 = !{ptr @_ZN11xercesc_2_721ValidationContextImplD2Ev, ptr @_ZN11xercesc_2_714RefHashTableOfINS_10XMLRefInfoEE7cleanupEv, i64 5}
!36 = !{ptr @_ZN11xercesc_2_721ValidationContextImplD2Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 5}
!37 = !{ptr @_ZN11xercesc_2_721ValidationContextImplD0Ev, ptr @_ZN11xercesc_2_721ValidationContextImplD2Ev, i64 5}
!38 = !{ptr @_ZN11xercesc_2_721ValidationContextImplD0Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 5}
!39 = !{ptr @_ZN11xercesc_2_721ValidationContextImplC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 5}
!40 = !{ptr @_ZN11xercesc_2_721ValidationContextImplC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_714RefHashTableOfINS_10XMLRefInfoEEC2EjPNS_13MemoryManagerE, i64 5}
!41 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_10XMLRefInfoEEC2EjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_714RefHashTableOfINS_10XMLRefInfoEE10initializeEj, i64 5}
!42 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_10XMLRefInfoEEC2EjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 5}
!43 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_10XMLRefInfoEEC2EjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79HashXMLChC1Ev, i64 5}
!44 = !{ptr @_ZN11xercesc_2_721ValidationContextImpl14clearIdRefListEv, ptr @_ZN11xercesc_2_714RefHashTableOfINS_10XMLRefInfoEE9removeAllEv, i64 3}
!45 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_10XMLRefInfoEE7cleanupEv, ptr @_ZN11xercesc_2_714RefHashTableOfINS_10XMLRefInfoEE9removeAllEv, i64 5}
!46 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!47 = !{!"function_entry_count", i64 0}
!48 = !{!49, !49, i64 0}
!49 = !{!"vtable pointer", !50, i64 0}
!50 = !{!"Simple C++ TBAA"}
!51 = !{!52, !56, i64 24}
!52 = !{!"_ZTSN11xercesc_2_710XMLRefInfoE", !53, i64 0, !54, i64 8, !54, i64 9, !56, i64 16, !56, i64 24}
!53 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!54 = !{!"bool", !55, i64 0}
!55 = !{!"omnipotent char", !50, i64 0}
!56 = !{!"any pointer", !55, i64 0}
!57 = !{!52, !56, i64 16}
!58 = !{!"function_entry_count", i64 5}
!59 = !{!60, !56, i64 16}
!60 = !{!"_ZTSN11xercesc_2_721ValidationContextImplE", !61, i64 0, !56, i64 16, !56, i64 24, !54, i64 32, !56, i64 40}
!61 = !{!"_ZTSN11xercesc_2_717ValidationContextE", !56, i64 8}
!62 = !{!"branch_weights", i32 0, i32 5}
!63 = !{!"branch_weights", i32 5, i32 0}
!64 = !{!61, !56, i64 8}
!65 = !{!60, !54, i64 32}
!66 = !{!60, !56, i64 40}
!67 = !{!68, !56, i64 0}
!68 = !{!"_ZTSN11xercesc_2_714RefHashTableOfINS_10XMLRefInfoEEE", !56, i64 0, !54, i64 8, !56, i64 16, !69, i64 24, !69, i64 28, !69, i64 32, !56, i64 40}
!69 = !{!"int", !55, i64 0}
!70 = !{!68, !54, i64 8}
!71 = !{!68, !56, i64 16}
!72 = !{!68, !69, i64 24}
!73 = !{!68, !69, i64 28}
!74 = !{!68, !69, i64 32}
!75 = !{!68, !56, i64 40}
!76 = !{!"function_entry_count", i64 1}
!77 = !{!"function_entry_count", i64 3}
!78 = !{!"branch_weights", i32 0, i32 3}
!79 = !{!"function_entry_count", i64 8}
!80 = !{!"branch_weights", i32 8, i32 0}
!81 = !{!56, !56, i64 0}
!82 = !{!83, !56, i64 8}
!83 = !{!"_ZTSN11xercesc_2_722RefHashTableBucketElemINS_10XMLRefInfoEEE", !56, i64 0, !56, i64 8, !56, i64 16}
!84 = !{i8 0, i8 2}
!85 = !{}
!86 = !{!83, !56, i64 0}
!87 = distinct !{!87, !88, !89}
!88 = !{!"llvm.loop.mustprogress"}
!89 = !{!"llvm.loop.unroll.disable"}
!90 = distinct !{!90, !88, !89}
!91 = !{!52, !54, i64 8}
!92 = !{!52, !54, i64 9}
!93 = !{!94, !94, i64 0}
!94 = !{!"short", !55, i64 0}
!95 = distinct !{!95, !88, !89}
!96 = !{!83, !56, i64 16}
!97 = distinct !{!97, !88, !89}
!98 = !{!"function_entry_count", i64 200910}
!99 = !{!60, !56, i64 24}
!100 = !{!"function_entry_count", i64 4}
!101 = !{!102, !56, i64 0}
!102 = !{!"_ZTSN11xercesc_2_720NameIdPoolBucketElemINS_13DTDEntityDeclEEE", !56, i64 0, !56, i64 8}
!103 = !{!104, !56, i64 32}
!104 = !{!"_ZTSN11xercesc_2_713XMLEntityDeclE", !53, i64 0, !69, i64 8, !69, i64 12, !56, i64 16, !56, i64 24, !56, i64 32, !56, i64 40, !56, i64 48, !56, i64 56, !56, i64 64}
!105 = !{!106, !56, i64 40}
!106 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !107, i64 8, !56, i64 16, !69, i64 24, !56, i64 32, !56, i64 40}
!107 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !55, i64 0}
!108 = !{!"VP", i32 0, i64 5, i64 -7405368087501025645, i64 5}
!109 = !{!"VP", i32 0, i64 5, i64 -5147776714887549805, i64 5}
!110 = !{!"VP", i32 0, i64 5, i64 8345045103670217670, i64 5}
!111 = !{!"branch_weights", i32 1, i32 159}
!112 = !{!"branch_weights", i32 159, i32 17281}
!113 = distinct !{!113, !88, !89}
!114 = !{!115, !56, i64 0}
!115 = !{!"_ZTSN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_10XMLRefInfoEEEEE", !56, i64 0, !56, i64 8}
!116 = !{!115, !56, i64 8}
!117 = distinct !{!117, !88, !89}
!118 = distinct !{!118, !88, !89}
!119 = !{!120, !69, i64 32}
!120 = !{!"_ZTSN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEEE", !56, i64 0, !56, i64 8, !56, i64 16, !69, i64 24, !69, i64 28, !69, i64 32}
!121 = distinct !{!121, !88, !89}
!122 = !{!69, !69, i64 0}
!123 = !{!120, !56, i64 8}
!124 = !{!104, !56, i64 24}
!125 = distinct !{!125, !88, !89}
!126 = distinct !{!126, !88, !89}
