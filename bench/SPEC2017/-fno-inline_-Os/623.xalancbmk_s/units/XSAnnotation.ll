; ModuleID = 'XSAnnotation.cpp'
source_filename = "XSAnnotation.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XProtoType" = type { ptr, ptr }
%"class.xercesc_2_7::XSAnnotation" = type { %"class.xercesc_2_7::XSerializable", %"class.xercesc_2_7::XSObject.base", ptr, ptr, ptr, i32, i32 }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::XSObject.base" = type <{ ptr, i32, [4 x i8], ptr, ptr, i32 }>
%"class.xercesc_2_7::MemBufInputSource" = type { %"class.xercesc_2_7::InputSource.base", i8, i32, i8, ptr }
%"class.xercesc_2_7::InputSource.base" = type <{ ptr, ptr, ptr, ptr, ptr, i8 }>

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_713XSerializableC2Ev = comdat any

$_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_713XSerializableD2Ev = comdat any

$_ZN11xercesc_2_713XSerializableD0Ev = comdat any

$_ZN11xercesc_2_79XMLString9stringLenEPKt = comdat any

$_ZN11xercesc_2_717MemBufInputSource18setCopyBufToStreamEb = comdat any

$_ZN11xercesc_2_716XMLReaderFactory15createXMLReaderEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE = comdat any

$_ZNK11xercesc_2_716XSerializeEngine9isStoringEv = comdat any

$_ZN11xercesc_2_7lsERNS_16XSerializeEngineEPNS_13XSerializableE = comdat any

$_ZN11xercesc_2_716XSerializeEngine10readStringERPt = comdat any

$_ZN11xercesc_2_7rsERNS_16XSerializeEngineERPNS_12XSAnnotationE = comdat any

$_ZTSN11xercesc_2_713XSerializableE = comdat any

$_ZTIN11xercesc_2_713XSerializableE = comdat any

$_ZTVN11xercesc_2_713XSerializableE = comdat any

@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_713XSerializableE = linkonce_odr dso_local constant [31 x i8] c"N11xercesc_2_713XSerializableE\00", comdat, align 1
@_ZTIN11xercesc_2_713XSerializableE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_713XSerializableE }, comdat, align 8
@_ZTVN11xercesc_2_712XSAnnotationE = dso_local unnamed_addr constant { [7 x ptr], [8 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_712XSAnnotationE, ptr @_ZN11xercesc_2_712XSAnnotationD2Ev, ptr @_ZN11xercesc_2_712XSAnnotationD0Ev, ptr @_ZNK11xercesc_2_712XSAnnotation14isSerializableEv, ptr @_ZN11xercesc_2_712XSAnnotation9serializeERNS_16XSerializeEngineE, ptr @_ZNK11xercesc_2_712XSAnnotation12getProtoTypeEv], [8 x ptr] [ptr inttoptr (i64 -8 to ptr), ptr @_ZTIN11xercesc_2_712XSAnnotationE, ptr @_ZThn8_N11xercesc_2_712XSAnnotationD1Ev, ptr @_ZThn8_N11xercesc_2_712XSAnnotationD0Ev, ptr @_ZN11xercesc_2_78XSObject7getNameEv, ptr @_ZN11xercesc_2_78XSObject12getNamespaceEv, ptr @_ZN11xercesc_2_78XSObject16getNamespaceItemEv, ptr @_ZNK11xercesc_2_78XSObject5getIdEv] }, align 8
@_ZTSN11xercesc_2_712XSAnnotationE = dso_local constant [30 x i8] c"N11xercesc_2_712XSAnnotationE\00", align 1
@_ZTIN11xercesc_2_78XSObjectE = external constant ptr
@_ZTIN11xercesc_2_712XSAnnotationE = dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_712XSAnnotationE, i32 0, i32 2, ptr @_ZTIN11xercesc_2_713XSerializableE, i64 2, ptr @_ZTIN11xercesc_2_78XSObjectE, i64 2050 }, align 8
@_ZTVN11xercesc_2_713XSerializableE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_713XSerializableE, ptr @_ZN11xercesc_2_713XSerializableD2Ev, ptr @_ZN11xercesc_2_713XSerializableD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_ZN11xercesc_2_76XMLUni21fgXMLChEncodingStringE = external constant [0 x i16], align 2
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZN11xercesc_2_76XMLUni20fgSAX2CoreNameSpacesE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni20fgSAX2CoreValidationE = external constant [0 x i16], align 2
@_ZN11xercesc_2_712XSAnnotation17classXSAnnotationE = dso_local global %"class.xercesc_2_7::XProtoType" { ptr @.str.1, ptr @_ZN11xercesc_2_712XSAnnotation12createObjectEPNS_13MemoryManagerE }, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"XSAnnotation\00", align 1

@_ZN11xercesc_2_712XSAnnotationC1EPKtPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xercesc_2_712XSAnnotationC2EPKtPNS_13MemoryManagerE
@_ZN11xercesc_2_712XSAnnotationC1EPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_712XSAnnotationC2EPNS_13MemoryManagerE
@_ZN11xercesc_2_712XSAnnotationD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_712XSAnnotationD2Ev

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_712XSAnnotationD0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 align 2 {
  tail call void @_ZN11xercesc_2_712XSAnnotationD2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_712XSAnnotation14isSerializableEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #1 align 2 !prof !40 {
  ret i1 true
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712XSAnnotation9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(100) %1) unnamed_addr #2 align 2 !prof !40 {
  %3 = tail call noundef zeroext i1 @_ZNK11xercesc_2_716XSerializeEngine9isStoringEv(ptr noundef nonnull align 8 dereferenceable(100) %1) #15
  %4 = getelementptr inbounds %"class.xercesc_2_7::XSAnnotation", ptr %0, i64 0, i32 2
  br i1 %3, label %5, label %18

5:                                                ; preds = %2
  %6 = load ptr, ptr %4, align 8, !tbaa !41
  tail call void @_ZN11xercesc_2_716XSerializeEngine11writeStringEPKtib(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %6, i32 noundef 0, i1 noundef zeroext false) #15
  %7 = getelementptr inbounds %"class.xercesc_2_7::XSAnnotation", ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !50
  %9 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_7lsERNS_16XSerializeEngineEPNS_13XSerializableE(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %8) #15
  %10 = getelementptr inbounds %"class.xercesc_2_7::XSAnnotation", ptr %0, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !51
  tail call void @_ZN11xercesc_2_716XSerializeEngine11writeStringEPKtib(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %11, i32 noundef 0, i1 noundef zeroext false) #15
  %12 = getelementptr inbounds %"class.xercesc_2_7::XSAnnotation", ptr %0, i64 0, i32 5
  %13 = load i32, ptr %12, align 8, !tbaa !52
  %14 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef %13) #15
  %15 = getelementptr inbounds %"class.xercesc_2_7::XSAnnotation", ptr %0, i64 0, i32 6
  %16 = load i32, ptr %15, align 4, !tbaa !53
  %17 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef %16) #15
  br label %26

18:                                               ; preds = %2
  tail call void @_ZN11xercesc_2_716XSerializeEngine10readStringERPt(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 8 dereferenceable(8) %4) #15
  %19 = getelementptr inbounds %"class.xercesc_2_7::XSAnnotation", ptr %0, i64 0, i32 3
  %20 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_7rsERNS_16XSerializeEngineERPNS_12XSAnnotationE(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 8 dereferenceable(8) %19) #15
  %21 = getelementptr inbounds %"class.xercesc_2_7::XSAnnotation", ptr %0, i64 0, i32 4
  tail call void @_ZN11xercesc_2_716XSerializeEngine10readStringERPt(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 8 dereferenceable(8) %21) #15
  %22 = getelementptr inbounds %"class.xercesc_2_7::XSAnnotation", ptr %0, i64 0, i32 5
  %23 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERi(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 4 dereferenceable(4) %22) #15
  %24 = getelementptr inbounds %"class.xercesc_2_7::XSAnnotation", ptr %0, i64 0, i32 6
  %25 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERi(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 4 dereferenceable(4) %24) #15
  br label %26

26:                                               ; preds = %18, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK11xercesc_2_712XSAnnotation12getProtoTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #1 align 2 !prof !40 {
  ret ptr @_ZN11xercesc_2_712XSAnnotation17classXSAnnotationE
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_ZThn8_N11xercesc_2_712XSAnnotationD1Ev(ptr noundef %0) unnamed_addr #3 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11xercesc_2_712XSAnnotationD2Ev(ptr noundef nonnull align 8 dereferenceable(80) %2) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_ZThn8_N11xercesc_2_712XSAnnotationD0Ev(ptr noundef %0) unnamed_addr #3 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11xercesc_2_712XSAnnotationD0Ev(ptr noundef nonnull align 8 dereferenceable(80) %2) #14
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_78XSObject7getNameEv(ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #4

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_78XSObject12getNamespaceEv(ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #4

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_78XSObject16getNamespaceItemEv(ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #4

; Function Attrs: optsize
declare noundef i32 @_ZNK11xercesc_2_78XSObject5getIdEv(ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #4

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #5

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #6

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #16
  tail call void @_ZSt9terminatev() #17
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712XSAnnotationC2EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  tail call void @_ZN11xercesc_2_713XSerializableC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #15
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  invoke void @_ZN11xercesc_2_78XSObjectC2ENS_11XSConstants14COMPONENT_TYPEEPNS_7XSModelEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %4, i32 noundef 12, ptr noundef null, ptr noundef %2) #15
          to label %5 unwind label %10

5:                                                ; preds = %3
  store ptr getelementptr inbounds ({ [7 x ptr], [8 x ptr] }, ptr @_ZTVN11xercesc_2_712XSAnnotationE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !54
  store ptr getelementptr inbounds ({ [7 x ptr], [8 x ptr] }, ptr @_ZTVN11xercesc_2_712XSAnnotationE, i64 0, inrange i32 1, i64 2), ptr %4, align 8, !tbaa !54
  %6 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %2) #15
          to label %7 unwind label %12

7:                                                ; preds = %5
  %8 = getelementptr inbounds %"class.xercesc_2_7::XSAnnotation", ptr %0, i64 0, i32 2
  store ptr %6, ptr %8, align 8, !tbaa !41
  %9 = getelementptr inbounds %"class.xercesc_2_7::XSAnnotation", ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  ret void

10:                                               ; preds = %3
  %11 = landingpad { ptr, i32 }
          cleanup
  br label %14

12:                                               ; preds = %5
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_78XSObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %4) #14
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi { ptr, i32 } [ %13, %12 ], [ %11, %10 ]
  tail call void @_ZN11xercesc_2_713XSerializableD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #14
  resume { ptr, i32 } %15
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XSerializableC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !56 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_713XSerializableE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !54
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78XSObjectC2ENS_11XSConstants14COMPONENT_TYPEEPNS_7XSModelEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, ptr noundef, ptr noundef) unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !57 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %13, label %4, !prof !58

4:                                                ; preds = %2
  %5 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef nonnull %0) #15
  %6 = add i32 %5, 1
  %7 = zext i32 %6 to i64
  %8 = shl nuw nsw i64 %7, 1
  %9 = load ptr, ptr %1, align 8, !tbaa !54
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %8) #15
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %12, ptr nonnull align 2 %0, i64 %8, i1 false)
  br label %13

13:                                               ; preds = %4, %2
  %14 = phi ptr [ %12, %4 ], [ null, %2 ]
  ret ptr %14
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_78XSObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XSerializableD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !59 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XSerializableD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
  tail call void @llvm.trap() #17
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %0) local_unnamed_addr #0 comdat align 2 !prof !60 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3, !prof !61

3:                                                ; preds = %1
  %4 = load i16, ptr %0, align 2, !tbaa !62
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %17, label %6, !prof !64

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %8, %6 ], [ %0, %3 ]
  %8 = getelementptr inbounds i16, ptr %7, i64 1
  %9 = load i16, ptr %8, align 2, !tbaa !62
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %6, !prof !65, !llvm.loop !66

11:                                               ; preds = %6
  %12 = ptrtoint ptr %8 to i64
  %13 = ptrtoint ptr %0 to i64
  %14 = sub i64 %12, %13
  %15 = lshr exact i64 %14, 1
  %16 = trunc i64 %15 to i32
  br label %17

17:                                               ; preds = %1, %3, %11
  %18 = phi i32 [ %16, %11 ], [ 0, %3 ], [ 0, %1 ]
  ret i32 %18
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712XSAnnotationC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  tail call void @_ZN11xercesc_2_713XSerializableC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #15
  %3 = getelementptr inbounds i8, ptr %0, i64 8
  invoke void @_ZN11xercesc_2_78XSObjectC2ENS_11XSConstants14COMPONENT_TYPEEPNS_7XSModelEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %3, i32 noundef 12, ptr noundef null, ptr noundef %1) #15
          to label %4 unwind label %6

4:                                                ; preds = %2
  store ptr getelementptr inbounds ({ [7 x ptr], [8 x ptr] }, ptr @_ZTVN11xercesc_2_712XSAnnotationE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !54
  store ptr getelementptr inbounds ({ [7 x ptr], [8 x ptr] }, ptr @_ZTVN11xercesc_2_712XSAnnotationE, i64 0, inrange i32 1, i64 2), ptr %3, align 8, !tbaa !54
  %5 = getelementptr inbounds %"class.xercesc_2_7::XSAnnotation", ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  ret void

6:                                                ; preds = %2
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_713XSerializableD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #14
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_712XSAnnotationD2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  store ptr getelementptr inbounds ({ [7 x ptr], [8 x ptr] }, ptr @_ZTVN11xercesc_2_712XSAnnotationE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !54
  %2 = getelementptr inbounds i8, ptr %0, i64 8
  store ptr getelementptr inbounds ({ [7 x ptr], [8 x ptr] }, ptr @_ZTVN11xercesc_2_712XSAnnotationE, i64 0, inrange i32 1, i64 2), ptr %2, align 8, !tbaa !54
  %3 = getelementptr inbounds i8, ptr %0, i64 32
  %4 = load ptr, ptr %3, align 8, !tbaa !68
  %5 = getelementptr inbounds %"class.xercesc_2_7::XSAnnotation", ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !41
  %7 = load ptr, ptr %4, align 8, !tbaa !54
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  invoke void %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %6) #15
          to label %10 unwind label %26

10:                                               ; preds = %1
  %11 = getelementptr inbounds %"class.xercesc_2_7::XSAnnotation", ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !50
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr %12, align 8, !tbaa !54
  %16 = getelementptr inbounds ptr, ptr %15, i64 1
  %17 = load ptr, ptr %16, align 8
  tail call void %17(ptr noundef nonnull align 8 dereferenceable(80) %12) #14
  br label %18

18:                                               ; preds = %14, %10
  %19 = load ptr, ptr %3, align 8, !tbaa !68
  %20 = getelementptr inbounds %"class.xercesc_2_7::XSAnnotation", ptr %0, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !51
  %22 = load ptr, ptr %19, align 8, !tbaa !54
  %23 = getelementptr inbounds ptr, ptr %22, i64 3
  %24 = load ptr, ptr %23, align 8
  invoke void %24(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef %21) #15
          to label %25 unwind label %26

25:                                               ; preds = %18
  tail call void @_ZN11xercesc_2_78XSObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %2) #14
  tail call void @_ZN11xercesc_2_713XSerializableD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #14
  ret void

26:                                               ; preds = %18, %1
  %27 = landingpad { ptr, i32 }
          catch ptr null
  %28 = extractvalue { ptr, i32 } %27, 0
  tail call void @__clang_call_terminate(ptr %28) #17
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712XSAnnotation15writeAnnotationEPNS_7DOMNodeENS0_17ANNOTATION_TARGETE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %4 = getelementptr inbounds i8, ptr %0, i64 32
  %5 = load ptr, ptr %4, align 8, !tbaa !68
  %6 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 224, ptr noundef %5) #15
  %7 = load ptr, ptr %4, align 8, !tbaa !68
  invoke void @_ZN11xercesc_2_715XercesDOMParserC1EPNS_12XMLValidatorEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE(ptr noundef nonnull align 8 dereferenceable(224) %6, ptr noundef null, ptr noundef %7, ptr noundef null) #15
          to label %8 unwind label %32

8:                                                ; preds = %3
  tail call void @_ZN11xercesc_2_717AbstractDOMParser15setDoNamespacesEb(ptr noundef nonnull align 8 dereferenceable(200) %6, i1 noundef zeroext true) #15
  tail call void @_ZN11xercesc_2_717AbstractDOMParser19setValidationSchemeENS0_10ValSchemesE(ptr noundef nonnull align 8 dereferenceable(200) %6, i32 noundef 0) #15
  %9 = icmp eq i32 %2, 1
  br i1 %9, label %10, label %15

10:                                               ; preds = %8
  %11 = load ptr, ptr %1, align 8, !tbaa !54
  %12 = getelementptr inbounds ptr, ptr %11, i64 12
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(8) %1) #15
  br label %19

15:                                               ; preds = %8
  %16 = icmp eq ptr %1, null
  %17 = getelementptr inbounds i8, ptr %1, i64 -24
  %18 = select i1 %16, ptr null, ptr %17
  br label %19

19:                                               ; preds = %15, %10
  %20 = phi ptr [ %14, %10 ], [ %18, %15 ]
  %21 = load ptr, ptr %4, align 8, !tbaa !68
  %22 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %21) #15
  %23 = getelementptr inbounds %"class.xercesc_2_7::XSAnnotation", ptr %0, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !41
  %25 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %24) #15
  %26 = shl i32 %25, 1
  %27 = load ptr, ptr %4, align 8, !tbaa !68
  invoke void @_ZN11xercesc_2_717MemBufInputSourceC1EPKhjPKcbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %22, ptr noundef %24, i32 noundef %26, ptr noundef nonnull @.str, i1 noundef zeroext false, ptr noundef %27) #15
          to label %28 unwind label %34

28:                                               ; preds = %19
  %29 = load ptr, ptr %22, align 8, !tbaa !54
  %30 = getelementptr inbounds ptr, ptr %29, i64 7
  %31 = load ptr, ptr %30, align 8
  tail call void %31(ptr noundef nonnull align 8 dereferenceable(41) %22, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni21fgXMLChEncodingStringE) #15
  tail call void @_ZN11xercesc_2_717MemBufInputSource18setCopyBufToStreamEb(ptr noundef nonnull align 8 dereferenceable(64) %22, i1 noundef zeroext false) #15
  invoke void @_ZN11xercesc_2_717AbstractDOMParser5parseERKNS_11InputSourceE(ptr noundef nonnull align 8 dereferenceable(200) %6, ptr noundef nonnull align 8 dereferenceable(41) %22) #15
          to label %44 unwind label %36

32:                                               ; preds = %3
  %33 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %6, ptr noundef %5) #14
  br label %68

34:                                               ; preds = %19
  %35 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %22, ptr noundef %21) #14
  br label %68

36:                                               ; preds = %28
  %37 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  %38 = extractvalue { ptr, i32 } %37, 1
  %39 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_712XMLExceptionE) #16
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %68

41:                                               ; preds = %36
  %42 = extractvalue { ptr, i32 } %37, 0
  %43 = tail call ptr @__cxa_begin_catch(ptr %42) #16
  tail call void @__cxa_end_catch()
  br label %44

44:                                               ; preds = %28, %41
  %45 = tail call noundef ptr @_ZN11xercesc_2_717AbstractDOMParser11getDocumentEv(ptr noundef nonnull align 8 dereferenceable(200) %6) #15
  %46 = load ptr, ptr %45, align 8, !tbaa !54
  %47 = getelementptr inbounds ptr, ptr %46, i64 13
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(32) %45) #15
  %50 = load ptr, ptr %20, align 8, !tbaa !54
  %51 = getelementptr inbounds ptr, ptr %50, i64 15
  %52 = load ptr, ptr %51, align 8
  %53 = tail call noundef ptr %52(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef %49, i1 noundef zeroext true) #15
  %54 = load ptr, ptr %1, align 8, !tbaa !54
  %55 = getelementptr inbounds ptr, ptr %54, i64 7
  %56 = load ptr, ptr %55, align 8
  %57 = tail call noundef ptr %56(ptr noundef nonnull align 8 dereferenceable(8) %1) #15
  %58 = load ptr, ptr %1, align 8, !tbaa !54
  %59 = getelementptr inbounds ptr, ptr %58, i64 14
  %60 = load ptr, ptr %59, align 8
  %61 = tail call noundef ptr %60(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %53, ptr noundef %57) #15
  %62 = load ptr, ptr %6, align 8, !tbaa !54
  %63 = getelementptr inbounds ptr, ptr %62, i64 1
  %64 = load ptr, ptr %63, align 8
  tail call void %64(ptr noundef nonnull align 8 dereferenceable(224) %6) #14
  %65 = load ptr, ptr %22, align 8, !tbaa !54
  %66 = getelementptr inbounds ptr, ptr %65, i64 1
  %67 = load ptr, ptr %66, align 8
  tail call void %67(ptr noundef nonnull align 8 dereferenceable(64) %22) #14
  ret void

68:                                               ; preds = %34, %36, %32
  %69 = phi { ptr, i32 } [ %33, %32 ], [ %37, %36 ], [ %35, %34 ]
  resume { ptr, i32 } %69
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_715XercesDOMParserC1EPNS_12XMLValidatorEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #4

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser15setDoNamespacesEb(ptr noundef nonnull align 8 dereferenceable(200), i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser19setValidationSchemeENS0_10ValSchemesE(ptr noundef nonnull align 8 dereferenceable(200), i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717MemBufInputSourceC1EPKhjPKcbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef) unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717MemBufInputSource18setCopyBufToStreamEb(ptr noundef nonnull align 8 dereferenceable(64) %0, i1 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 !prof !40 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::MemBufInputSource", ptr %0, i64 0, i32 3
  store i8 %3, ptr %4, align 8, !tbaa !69
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser5parseERKNS_11InputSourceE(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef nonnull align 8 dereferenceable(41)) local_unnamed_addr #4

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #10

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_717AbstractDOMParser11getDocumentEv(ptr noundef nonnull align 8 dereferenceable(200)) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712XSAnnotation15writeAnnotationEPNS_14ContentHandlerE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0, ptr noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %3 = getelementptr inbounds i8, ptr %0, i64 32
  %4 = load ptr, ptr %3, align 8, !tbaa !68
  %5 = tail call noundef ptr @_ZN11xercesc_2_716XMLReaderFactory15createXMLReaderEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE(ptr noundef %4, ptr noundef null) #15
  %6 = load ptr, ptr %5, align 8, !tbaa !54
  %7 = getelementptr inbounds ptr, ptr %6, i64 12
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni20fgSAX2CoreNameSpacesE, i1 noundef zeroext true) #15
  %9 = load ptr, ptr %5, align 8, !tbaa !54
  %10 = getelementptr inbounds ptr, ptr %9, i64 12
  %11 = load ptr, ptr %10, align 8
  tail call void %11(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni20fgSAX2CoreValidationE, i1 noundef zeroext false) #15
  %12 = load ptr, ptr %5, align 8, !tbaa !54
  %13 = getelementptr inbounds ptr, ptr %12, i64 8
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %1) #15
  %15 = load ptr, ptr %3, align 8, !tbaa !68
  %16 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %15) #15
  %17 = getelementptr inbounds %"class.xercesc_2_7::XSAnnotation", ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !41
  %19 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %18) #15
  %20 = shl i32 %19, 1
  %21 = load ptr, ptr %3, align 8, !tbaa !68
  invoke void @_ZN11xercesc_2_717MemBufInputSourceC1EPKhjPKcbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %16, ptr noundef %18, i32 noundef %20, ptr noundef nonnull @.str, i1 noundef zeroext false, ptr noundef %21) #15
          to label %22 unwind label %29

22:                                               ; preds = %2
  %23 = load ptr, ptr %16, align 8, !tbaa !54
  %24 = getelementptr inbounds ptr, ptr %23, i64 7
  %25 = load ptr, ptr %24, align 8
  tail call void %25(ptr noundef nonnull align 8 dereferenceable(41) %16, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni21fgXMLChEncodingStringE) #15
  tail call void @_ZN11xercesc_2_717MemBufInputSource18setCopyBufToStreamEb(ptr noundef nonnull align 8 dereferenceable(64) %16, i1 noundef zeroext false) #15
  %26 = load ptr, ptr %5, align 8, !tbaa !54
  %27 = getelementptr inbounds ptr, ptr %26, i64 14
  %28 = load ptr, ptr %27, align 8
  invoke void %28(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(41) %16) #15
          to label %39 unwind label %31

29:                                               ; preds = %2
  %30 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %16, ptr noundef %15) #14
  br label %46

31:                                               ; preds = %22
  %32 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  %33 = extractvalue { ptr, i32 } %32, 1
  %34 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_712XMLExceptionE) #16
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %31
  %37 = extractvalue { ptr, i32 } %32, 0
  %38 = tail call ptr @__cxa_begin_catch(ptr %37) #16
  tail call void @__cxa_end_catch()
  br label %39

39:                                               ; preds = %36, %22
  %40 = load ptr, ptr %5, align 8, !tbaa !54
  %41 = getelementptr inbounds ptr, ptr %40, i64 1
  %42 = load ptr, ptr %41, align 8
  tail call void %42(ptr noundef nonnull align 8 dereferenceable(8) %5) #14
  %43 = load ptr, ptr %16, align 8, !tbaa !54
  %44 = getelementptr inbounds ptr, ptr %43, i64 1
  %45 = load ptr, ptr %44, align 8
  tail call void %45(ptr noundef nonnull align 8 dereferenceable(64) %16) #14
  ret void

46:                                               ; preds = %31, %29
  %47 = phi { ptr, i32 } [ %32, %31 ], [ %30, %29 ]
  resume { ptr, i32 } %47
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_716XMLReaderFactory15createXMLReaderEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !73 {
  %3 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 248, ptr noundef %0) #15
  invoke void @_ZN11xercesc_2_717SAX2XMLReaderImplC1EPNS_13MemoryManagerEPNS_14XMLGrammarPoolE(ptr noundef nonnull align 8 dereferenceable(248) %3, ptr noundef %0, ptr noundef %1) #15
          to label %4 unwind label %5

4:                                                ; preds = %2
  ret ptr %3

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %3, ptr noundef %0) #14
  resume { ptr, i32 } %6
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717SAX2XMLReaderImplC1EPNS_13MemoryManagerEPNS_14XMLGrammarPoolE(ptr noundef nonnull align 8 dereferenceable(248), ptr noundef, ptr noundef) unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_712XSAnnotation7setNextEPS0_(ptr nocapture noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) local_unnamed_addr #11 align 2 !prof !40 {
  br label %3

3:                                                ; preds = %3, %2
  %4 = phi ptr [ %0, %2 ], [ %6, %3 ]
  %5 = getelementptr inbounds %"class.xercesc_2_7::XSAnnotation", ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !50
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %3

8:                                                ; preds = %3
  %9 = getelementptr inbounds %"class.xercesc_2_7::XSAnnotation", ptr %4, i64 0, i32 3
  store ptr %1, ptr %9, align 8, !tbaa !50
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712XSAnnotation7getNextEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0) local_unnamed_addr #12 align 2 !prof !40 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XSAnnotation", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !50
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712XSAnnotation11setSystemIdEPKt(ptr nocapture noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) local_unnamed_addr #2 align 2 !prof !40 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XSAnnotation", ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !51
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds i8, ptr %0, i64 32
  %8 = load ptr, ptr %7, align 8, !tbaa !68
  %9 = load ptr, ptr %8, align 8, !tbaa !54
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  tail call void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull %4) #15
  store ptr null, ptr %3, align 8, !tbaa !51
  br label %12

12:                                               ; preds = %6, %2
  %13 = icmp eq ptr %1, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds i8, ptr %0, i64 32
  %16 = load ptr, ptr %15, align 8, !tbaa !68
  %17 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef nonnull %1, ptr noundef %16) #15
  store ptr %17, ptr %3, align 8, !tbaa !51
  br label %18

18:                                               ; preds = %14, %12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712XSAnnotation12createObjectEPNS_13MemoryManagerE(ptr noundef %0) #2 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %2 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 80, ptr noundef %0) #15
  invoke void @_ZN11xercesc_2_712XSAnnotationC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef %0) #15
          to label %3 unwind label %4

3:                                                ; preds = %1
  ret ptr %2

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %2, ptr noundef %0) #14
  resume { ptr, i32 } %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_716XSerializeEngine9isStoringEv(ptr noundef nonnull align 8 dereferenceable(100) %0) local_unnamed_addr #0 comdat align 2 !prof !40 {
  %2 = load i16, ptr %0, align 8, !tbaa !74
  %3 = icmp eq i16 %2, 0
  ret i1 %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716XSerializeEngine11writeStringEPKtib(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_7lsERNS_16XSerializeEngineEPNS_13XSerializableE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef %1) local_unnamed_addr #2 comdat !prof !40 {
  tail call void @_ZN11xercesc_2_716XSerializeEngine5writeEPNS_13XSerializableE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef %1) #15
  ret ptr %0
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716XSerializeEngine10readStringERPt(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat align 2 !prof !40 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  call void @_ZN11xercesc_2_716XSerializeEngine10readStringERPtRiS3_b(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, i1 noundef zeroext false) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_7rsERNS_16XSerializeEngineERPNS_12XSAnnotationE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat !prof !40 {
  %3 = tail call noundef ptr @_ZN11xercesc_2_716XSerializeEngine4readEPNS_10XProtoTypeE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull @_ZN11xercesc_2_712XSAnnotation17classXSAnnotationE) #15
  store ptr %3, ptr %1, align 8, !tbaa !77
  ret ptr %0
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERi(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716XSerializeEngine5writeEPNS_13XSerializableE(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716XSerializeEngine10readStringERPtRiS3_b(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_716XSerializeEngine4readEPNS_10XProtoTypeE(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

attributes #0 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #6 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nofree nosync nounwind memory(none) }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { nounwind optsize }
attributes #15 = { optsize }
attributes #16 = { nounwind }
attributes #17 = { noreturn nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!39}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 545138346841}
!4 = !{!"MaxCount", i64 89343718472}
!5 = !{!"MaxInternalCount", i64 30012997642}
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
!16 = !{i32 300000, i64 30137156670, i32 4}
!17 = !{i32 400000, i64 28792558693, i32 6}
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
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{i32 5, !"CG Profile", !35}
!35 = distinct !{!36, !37, !38}
!36 = !{ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79XMLString9stringLenEPKt, i64 400185}
!37 = !{ptr @_ZN11xercesc_2_716XMLReaderFactory15createXMLReaderEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 1}
!38 = !{ptr @_ZN11xercesc_2_716XMLReaderFactory15createXMLReaderEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE, ptr @_ZN11xercesc_2_717SAX2XMLReaderImplC1EPNS_13MemoryManagerEPNS_14XMLGrammarPoolE, i64 1}
!39 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!40 = !{!"function_entry_count", i64 0}
!41 = !{!42, !48, i64 48}
!42 = !{!"_ZTSN11xercesc_2_712XSAnnotationE", !43, i64 0, !44, i64 8, !48, i64 48, !48, i64 56, !48, i64 64, !49, i64 72, !49, i64 76}
!43 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!44 = !{!"_ZTSN11xercesc_2_78XSObjectE", !45, i64 8, !48, i64 16, !48, i64 24, !49, i64 32}
!45 = !{!"_ZTSN11xercesc_2_711XSConstants14COMPONENT_TYPEE", !46, i64 0}
!46 = !{!"omnipotent char", !47, i64 0}
!47 = !{!"Simple C++ TBAA"}
!48 = !{!"any pointer", !46, i64 0}
!49 = !{!"int", !46, i64 0}
!50 = !{!42, !48, i64 56}
!51 = !{!42, !48, i64 64}
!52 = !{!42, !49, i64 72}
!53 = !{!42, !49, i64 76}
!54 = !{!55, !55, i64 0}
!55 = !{!"vtable pointer", !47, i64 0}
!56 = !{!"function_entry_count", i64 1068727}
!57 = !{!"function_entry_count", i64 558789}
!58 = !{!"branch_weights", i32 158605, i32 400186}
!59 = !{!"function_entry_count", i64 1069174}
!60 = !{!"function_entry_count", i64 2453164456}
!61 = !{!"branch_weights", i32 1, i32 -1841802839}
!62 = !{!63, !63, i64 0}
!63 = !{!"short", !46, i64 0}
!64 = !{!"branch_weights", i32 1150041, i32 -1842952879}
!65 = !{!"branch_weights", i32 408669070, i32 -279908792}
!66 = distinct !{!66, !67}
!67 = !{!"llvm.loop.mustprogress"}
!68 = !{!44, !48, i64 24}
!69 = !{!70, !72, i64 48}
!70 = !{!"_ZTSN11xercesc_2_717MemBufInputSourceE", !71, i64 0, !72, i64 41, !49, i64 44, !72, i64 48, !48, i64 56}
!71 = !{!"_ZTSN11xercesc_2_711InputSourceE", !48, i64 8, !48, i64 16, !48, i64 24, !48, i64 32, !72, i64 40}
!72 = !{!"bool", !46, i64 0}
!73 = !{!"function_entry_count", i64 1}
!74 = !{!75, !63, i64 0}
!75 = !{!"_ZTSN11xercesc_2_716XSerializeEngineE", !63, i64 0, !63, i64 2, !48, i64 8, !48, i64 16, !48, i64 24, !76, i64 32, !76, i64 40, !48, i64 48, !48, i64 56, !48, i64 64, !48, i64 72, !48, i64 80, !48, i64 88, !49, i64 96}
!76 = !{!"long", !46, i64 0}
!77 = !{!48, !48, i64 0}
