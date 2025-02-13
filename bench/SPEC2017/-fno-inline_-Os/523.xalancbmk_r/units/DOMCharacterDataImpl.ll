; ModuleID = 'DOMCharacterDataImpl.cpp'
source_filename = "DOMCharacterDataImpl.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::DOMCharacterDataImpl" = type { ptr, ptr }
%"class.xercesc_2_7::DOMBuffer" = type { ptr, i32, i32, ptr }
%"class.xercesc_2_7::DOMElementImpl" = type { %"class.xercesc_2_7::DOMElement", %"class.xercesc_2_7::DOMNodeImpl", %"class.xercesc_2_7::DOMParentNode", %"class.xercesc_2_7::DOMChildNode", ptr, ptr, ptr }
%"class.xercesc_2_7::DOMElement" = type { %"class.xercesc_2_7::DOMNode" }
%"class.xercesc_2_7::DOMNode" = type { ptr }
%"class.xercesc_2_7::DOMNodeImpl" = type <{ ptr, i16, [6 x i8] }>
%"class.xercesc_2_7::DOMParentNode" = type { ptr, ptr, %"class.xercesc_2_7::DOMNodeListImpl" }
%"class.xercesc_2_7::DOMNodeListImpl" = type { %"class.xercesc_2_7::DOMNodeList", ptr }
%"class.xercesc_2_7::DOMNodeList" = type { ptr }
%"class.xercesc_2_7::DOMChildNode" = type { ptr, ptr }
%"class.xercesc_2_7::DOMDocumentImpl" = type <{ %"class.xercesc_2_7::DOMDocument", %"class.xercesc_2_7::DOMNodeImpl", %"class.xercesc_2_7::DOMParentNode", ptr, ptr, ptr, i8, [7 x i8], ptr, ptr, ptr, %"class.xercesc_2_7::XMLStringPool", ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, [3 x i8] }>
%"class.xercesc_2_7::DOMDocument" = type { %"class.xercesc_2_7::DOMDocumentRange", %"class.xercesc_2_7::DOMXPathEvaluator", %"class.xercesc_2_7::DOMDocumentTraversal", %"class.xercesc_2_7::DOMNode" }
%"class.xercesc_2_7::DOMDocumentRange" = type { ptr }
%"class.xercesc_2_7::DOMXPathEvaluator" = type { ptr }
%"class.xercesc_2_7::DOMDocumentTraversal" = type { ptr }
%"class.xercesc_2_7::XMLStringPool" = type { %"class.xercesc_2_7::XSerializable", ptr, ptr, ptr, i32, i32 }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::BaseRefVectorOf" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$_ZnwmPN11xercesc_2_711DOMDocumentE = comdat any

$_ZNK11xercesc_2_79DOMBuffer12getRawBufferEv = comdat any

$_ZNK11xercesc_2_711DOMNodeImpl10isReadOnlyEv = comdat any

$_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv = comdat any

$_ZNK11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEE4sizeEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEE9elementAtEj = comdat any

$_ZNK11xercesc_2_79DOMBuffer6getLenEv = comdat any

$_ZN11xercesc_2_79XMLString9stringLenEPKt = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_ = comdat any

$_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

@_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE = external local_unnamed_addr global ptr, align 8
@_ZTIN11xercesc_2_712DOMExceptionE = external constant ptr
@_ZN11xercesc_2_711DOMNodeImpl8READONLYE = external local_unnamed_addr constant i16, align 2
@.str = private unnamed_addr constant [33 x i8] c"./xercesc/util/BaseRefVectorOf.c\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant [48 x i8] c"N11xercesc_2_730ArrayIndexOutOfBoundsExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE = external constant [0 x i16], align 2

@_ZN11xercesc_2_720DOMCharacterDataImplC1EPNS_11DOMDocumentEPKt = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xercesc_2_720DOMCharacterDataImplC2EPNS_11DOMDocumentEPKt
@_ZN11xercesc_2_720DOMCharacterDataImplC1ERKS0_ = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_720DOMCharacterDataImplC2ERKS0_
@_ZN11xercesc_2_720DOMCharacterDataImplD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_720DOMCharacterDataImplD2Ev

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_720DOMCharacterDataImplC2EPNS_11DOMDocumentEPKt(ptr nocapture noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 align 2 !prof !42 {
  store ptr null, ptr %0, align 8, !tbaa !43
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMCharacterDataImpl", ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !48
  %5 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl9popBufferEv(ptr noundef nonnull align 8 dereferenceable(293) %1) #8
  store ptr %5, ptr %0, align 8, !tbaa !43
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %11, !prof !49

7:                                                ; preds = %3
  %8 = load ptr, ptr %4, align 8, !tbaa !48
  %9 = tail call noundef ptr @_ZnwmPN11xercesc_2_711DOMDocumentE(i64 noundef 24, ptr noundef %8) #8
  %10 = load ptr, ptr %4, align 8, !tbaa !48
  tail call void @_ZN11xercesc_2_79DOMBufferC1EPNS_15DOMDocumentImplEPKt(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef %10, ptr noundef %2) #8
  store ptr %9, ptr %0, align 8, !tbaa !43
  br label %12

11:                                               ; preds = %3
  tail call void @_ZN11xercesc_2_79DOMBuffer3setEPKtj(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef %2, i32 noundef 0) #8
  br label %12

12:                                               ; preds = %11, %7
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl9popBufferEv(ptr noundef nonnull align 8 dereferenceable(293)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZnwmPN11xercesc_2_711DOMDocumentE(i64 noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !50 {
  %3 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr noundef nonnull align 8 dereferenceable(293) %1, i64 noundef %0) #8
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79DOMBufferC1EPNS_15DOMDocumentImplEPKt(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79DOMBuffer3setEPKtj(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_720DOMCharacterDataImplC2ERKS0_(ptr nocapture noundef nonnull align 8 dereferenceable(16) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %1) unnamed_addr #0 align 2 !prof !51 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMCharacterDataImpl", ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMCharacterDataImpl", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  store ptr %5, ptr %3, align 8, !tbaa !48
  %6 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl9popBufferEv(ptr noundef nonnull align 8 dereferenceable(293) %5) #8
  store ptr %6, ptr %0, align 8, !tbaa !43
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = load ptr, ptr %3, align 8, !tbaa !48
  %10 = tail call noundef ptr @_ZnwmPN11xercesc_2_711DOMDocumentE(i64 noundef 24, ptr noundef %9) #8
  %11 = load ptr, ptr %3, align 8, !tbaa !48
  %12 = load ptr, ptr %1, align 8, !tbaa !43
  %13 = tail call noundef ptr @_ZNK11xercesc_2_79DOMBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(24) %12) #8
  tail call void @_ZN11xercesc_2_79DOMBufferC1EPNS_15DOMDocumentImplEPKt(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef %11, ptr noundef %13) #8
  store ptr %10, ptr %0, align 8, !tbaa !43
  br label %17

14:                                               ; preds = %2
  %15 = load ptr, ptr %1, align 8, !tbaa !43
  %16 = tail call noundef ptr @_ZNK11xercesc_2_79DOMBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(24) %15) #8
  tail call void @_ZN11xercesc_2_79DOMBuffer3setEPKtj(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef %16, i32 noundef 0) #8
  br label %17

17:                                               ; preds = %14, %8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_79DOMBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !52 {
  %2 = load ptr, ptr %0, align 8, !tbaa !53
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMBuffer", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !56
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds i16, ptr %2, i64 %5
  store i16 0, ptr %6, align 2, !tbaa !57
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_720DOMCharacterDataImplD2Ev(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #3 align 2 !prof !51 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_720DOMCharacterDataImpl12getNodeValueEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %0) local_unnamed_addr #2 align 2 !prof !52 {
  %2 = load ptr, ptr %0, align 8, !tbaa !43
  %3 = tail call noundef ptr @_ZNK11xercesc_2_79DOMBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #8
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_720DOMCharacterDataImpl12setNodeValueEPKNS_7DOMNodeEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !51 {
  %4 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L14castToNodeImplEPKNS_7DOMNodeE(ptr noundef %1) #8
  %5 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl10isReadOnlyEv(ptr noundef nonnull align 8 dereferenceable(10) %4) #8
  br i1 %5, label %6, label %20

6:                                                ; preds = %3
  %7 = tail call ptr @__cxa_allocate_exception(i64 40) #9
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMCharacterDataImpl", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %6
  %12 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %9) #8
  br label %15

13:                                               ; preds = %6
  %14 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !59
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi ptr [ %12, %11 ], [ %14, %13 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %7, i16 noundef signext 7, ptr noundef null, ptr noundef %16) #8
          to label %17 unwind label %18

17:                                               ; preds = %15
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #10
  unreachable

18:                                               ; preds = %15
  %19 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #9
  resume { ptr, i32 } %19

20:                                               ; preds = %3
  %21 = load ptr, ptr %0, align 8, !tbaa !43
  tail call void @_ZN11xercesc_2_79DOMBuffer3setEPKtj(ptr noundef nonnull align 8 dereferenceable(24) %21, ptr noundef %2, i32 noundef 0) #8
  %22 = load ptr, ptr %1, align 8, !tbaa !60
  %23 = getelementptr inbounds ptr, ptr %22, i64 12
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef ptr %24(ptr noundef nonnull align 8 dereferenceable(8) %1) #8
  %26 = icmp eq ptr %25, null
  br i1 %26, label %47, label %27

27:                                               ; preds = %20
  %28 = load ptr, ptr %1, align 8, !tbaa !60
  %29 = getelementptr inbounds ptr, ptr %28, i64 12
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef ptr %30(ptr noundef nonnull align 8 dereferenceable(8) %1) #8
  %32 = load ptr, ptr %31, align 8, !tbaa !60
  %33 = getelementptr inbounds ptr, ptr %32, i64 82
  %34 = load ptr, ptr %33, align 8
  %35 = tail call noundef ptr %34(ptr noundef nonnull align 8 dereferenceable(293) %31) #8
  %36 = icmp eq ptr %35, null
  br i1 %36, label %47, label %37

37:                                               ; preds = %27
  %38 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %35) #8
  %39 = zext i32 %38 to i64
  %40 = icmp eq i32 %38, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %37, %41
  %42 = phi i64 [ %45, %41 ], [ 0, %37 ]
  %43 = trunc i64 %42 to i32
  %44 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %35, i32 noundef %43) #8
  tail call void @_ZN11xercesc_2_712DOMRangeImpl19receiveReplacedTextEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(80) %44, ptr noundef nonnull %1) #8
  %45 = add nuw nsw i64 %42, 1
  %46 = icmp eq i64 %45, %39
  br i1 %46, label %47, label %41, !llvm.loop !62

47:                                               ; preds = %41, %27, %37, %20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef nonnull ptr @_ZN11xercesc_2_7L14castToNodeImplEPKNS_7DOMNodeE(ptr noundef readnone %0) unnamed_addr #3 !prof !51 !PGOFuncName !64 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl10isReadOnlyEv(ptr noundef nonnull align 8 dereferenceable(10) %0) local_unnamed_addr #2 comdat align 2 !prof !65 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %0, i64 0, i32 1
  %3 = load i16, ptr %2, align 8, !tbaa !66
  %4 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl8READONLYE, align 2, !tbaa !57
  %5 = and i16 %4, %3
  %6 = icmp ne i16 %5, 0
  ret i1 %6
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %0) local_unnamed_addr #2 comdat align 2 !prof !68 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 25
  %3 = load ptr, ptr %2, align 8, !tbaa !69
  ret ptr %3
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33), i16 noundef signext, ptr noundef, ptr noundef) unnamed_addr #1

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712DOMExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(33)) unnamed_addr #4

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #2 comdat align 2 !prof !51 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !83
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !51 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !83
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #9
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !85
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 249, i32 noundef 116, ptr noundef %9) #8
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #10
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #9
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !86
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !59
  ret ptr %18
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712DOMRangeImpl19receiveReplacedTextEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_720DOMCharacterDataImpl10appendDataEPKNS_7DOMNodeEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !51 {
  %4 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L14castToNodeImplEPKNS_7DOMNodeE(ptr noundef %1) #8
  %5 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl10isReadOnlyEv(ptr noundef nonnull align 8 dereferenceable(10) %4) #8
  br i1 %5, label %6, label %20

6:                                                ; preds = %3
  %7 = tail call ptr @__cxa_allocate_exception(i64 40) #9
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMCharacterDataImpl", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %6
  %12 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %9) #8
  br label %15

13:                                               ; preds = %6
  %14 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !59
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi ptr [ %12, %11 ], [ %14, %13 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %7, i16 noundef signext 7, ptr noundef null, ptr noundef %16) #8
          to label %17 unwind label %18

17:                                               ; preds = %15
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #10
  unreachable

18:                                               ; preds = %15
  %19 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #9
  resume { ptr, i32 } %19

20:                                               ; preds = %3
  %21 = load ptr, ptr %0, align 8, !tbaa !43
  tail call void @_ZN11xercesc_2_79DOMBuffer6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(24) %21, ptr noundef %2, i32 noundef 0) #8
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79DOMBuffer6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_720DOMCharacterDataImpl10deleteDataEPKNS_7DOMNodeEmm(ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !51 {
  %5 = alloca [4000 x i16], align 16
  %6 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L14castToNodeImplEPKNS_7DOMNodeE(ptr noundef %1) #8
  %7 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl10isReadOnlyEv(ptr noundef nonnull align 8 dereferenceable(10) %6) #8
  br i1 %7, label %8, label %22

8:                                                ; preds = %4
  %9 = tail call ptr @__cxa_allocate_exception(i64 40) #9
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMCharacterDataImpl", ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !48
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %8
  %14 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %11) #8
  br label %17

15:                                               ; preds = %8
  %16 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !59
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi ptr [ %14, %13 ], [ %16, %15 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %9, i16 noundef signext 7, ptr noundef null, ptr noundef %18) #8
          to label %19 unwind label %20

19:                                               ; preds = %17
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #10
  unreachable

20:                                               ; preds = %17
  %21 = landingpad { ptr, i32 }
          cleanup
  br label %103

22:                                               ; preds = %4
  %23 = load ptr, ptr %0, align 8, !tbaa !43
  %24 = tail call noundef i32 @_ZNK11xercesc_2_79DOMBuffer6getLenEv(ptr noundef nonnull align 8 dereferenceable(24) %23) #8
  %25 = zext i32 %24 to i64
  %26 = icmp ult i64 %25, %2
  br i1 %26, label %27, label %41

27:                                               ; preds = %22
  %28 = tail call ptr @__cxa_allocate_exception(i64 40) #9
  %29 = getelementptr inbounds %"class.xercesc_2_7::DOMCharacterDataImpl", ptr %0, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !48
  %31 = icmp eq ptr %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %27
  %33 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %30) #8
  br label %36

34:                                               ; preds = %27
  %35 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !59
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi ptr [ %33, %32 ], [ %35, %34 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %28, i16 noundef signext 1, ptr noundef null, ptr noundef %37) #8
          to label %38 unwind label %39

38:                                               ; preds = %36
  tail call void @__cxa_throw(ptr nonnull %28, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #10
  unreachable

39:                                               ; preds = %36
  %40 = landingpad { ptr, i32 }
          cleanup
  br label %103

41:                                               ; preds = %22
  %42 = tail call i64 @llvm.umin.i64(i64 %25, i64 %3)
  %43 = add nuw nsw i64 %42, %2
  %44 = icmp ult i64 %43, %25
  %45 = sub nsw i64 %25, %2
  %46 = select i1 %44, i64 %42, i64 %45
  %47 = sub nsw i64 %25, %46
  call void @llvm.lifetime.start.p0(i64 8000, ptr nonnull %5) #9
  %48 = icmp ugt i64 %47, 3998
  br i1 %48, label %49, label %57

49:                                               ; preds = %41
  %50 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !59
  %51 = shl nsw i64 %47, 1
  %52 = add i64 %51, 2
  %53 = load ptr, ptr %50, align 8, !tbaa !60
  %54 = getelementptr inbounds ptr, ptr %53, i64 2
  %55 = load ptr, ptr %54, align 8
  %56 = tail call noundef ptr %55(ptr noundef nonnull align 8 dereferenceable(8) %50, i64 noundef %52) #8
  br label %57

57:                                               ; preds = %41, %49
  %58 = phi ptr [ %56, %49 ], [ %5, %41 ]
  %59 = load ptr, ptr %0, align 8, !tbaa !43
  %60 = tail call noundef ptr @_ZNK11xercesc_2_79DOMBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(24) %59) #8
  %61 = trunc i64 %2 to i32
  %62 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString11copyNStringEPtPKtj(ptr noundef %58, ptr noundef %60, i32 noundef %61) #8
  %63 = getelementptr inbounds i16, ptr %58, i64 %2
  %64 = load ptr, ptr %0, align 8, !tbaa !43
  %65 = call noundef ptr @_ZNK11xercesc_2_79DOMBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(24) %64) #8
  %66 = getelementptr inbounds i16, ptr %65, i64 %2
  %67 = getelementptr inbounds i16, ptr %66, i64 %46
  call void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef %63, ptr noundef %67) #8
  %68 = load ptr, ptr %0, align 8, !tbaa !43
  call void @_ZN11xercesc_2_79DOMBuffer3setEPKtj(ptr noundef nonnull align 8 dereferenceable(24) %68, ptr noundef %58, i32 noundef 0) #8
  br i1 %48, label %69, label %74

69:                                               ; preds = %57
  %70 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !59
  %71 = load ptr, ptr %70, align 8, !tbaa !60
  %72 = getelementptr inbounds ptr, ptr %71, i64 3
  %73 = load ptr, ptr %72, align 8
  call void %73(ptr noundef nonnull align 8 dereferenceable(8) %70, ptr noundef %58) #8
  br label %74

74:                                               ; preds = %69, %57
  %75 = load ptr, ptr %1, align 8, !tbaa !60
  %76 = getelementptr inbounds ptr, ptr %75, i64 12
  %77 = load ptr, ptr %76, align 8
  %78 = call noundef ptr %77(ptr noundef nonnull align 8 dereferenceable(8) %1) #8
  %79 = icmp eq ptr %78, null
  br i1 %79, label %102, label %80

80:                                               ; preds = %74
  %81 = load ptr, ptr %1, align 8, !tbaa !60
  %82 = getelementptr inbounds ptr, ptr %81, i64 12
  %83 = load ptr, ptr %82, align 8
  %84 = call noundef ptr %83(ptr noundef nonnull align 8 dereferenceable(8) %1) #8
  %85 = load ptr, ptr %84, align 8, !tbaa !60
  %86 = getelementptr inbounds ptr, ptr %85, i64 82
  %87 = load ptr, ptr %86, align 8
  %88 = call noundef ptr %87(ptr noundef nonnull align 8 dereferenceable(293) %84) #8
  %89 = icmp eq ptr %88, null
  br i1 %89, label %102, label %90

90:                                               ; preds = %80
  %91 = call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %88) #8
  %92 = zext i32 %91 to i64
  %93 = icmp eq i32 %91, 0
  br i1 %93, label %102, label %94

94:                                               ; preds = %90
  %95 = trunc i64 %46 to i32
  br label %96

96:                                               ; preds = %94, %96
  %97 = phi i64 [ 0, %94 ], [ %100, %96 ]
  %98 = trunc i64 %97 to i32
  %99 = call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %88, i32 noundef %98) #8
  call void @_ZN11xercesc_2_712DOMRangeImpl25updateRangeForDeletedTextEPNS_7DOMNodeEmi(ptr noundef nonnull align 8 dereferenceable(80) %99, ptr noundef nonnull %1, i64 noundef %2, i32 noundef %95) #8
  %100 = add nuw nsw i64 %97, 1
  %101 = icmp eq i64 %100, %92
  br i1 %101, label %102, label %96, !llvm.loop !87

102:                                              ; preds = %96, %80, %90, %74
  call void @llvm.lifetime.end.p0(i64 8000, ptr nonnull %5) #9
  ret void

103:                                              ; preds = %39, %20
  %104 = phi ptr [ %28, %39 ], [ %9, %20 ]
  %105 = phi { ptr, i32 } [ %40, %39 ], [ %21, %20 ]
  tail call void @__cxa_free_exception(ptr %104) #9
  resume { ptr, i32 } %105
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_79DOMBuffer6getLenEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !51 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMBuffer", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !56
  ret i32 %3
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_79XMLString11copyNStringEPtPKtj(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712DOMRangeImpl25updateRangeForDeletedTextEPNS_7DOMNodeEmi(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_720DOMCharacterDataImpl7getDataEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %0) local_unnamed_addr #2 align 2 !prof !51 {
  %2 = load ptr, ptr %0, align 8, !tbaa !43
  %3 = tail call noundef ptr @_ZNK11xercesc_2_79DOMBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef i64 @_ZNK11xercesc_2_720DOMCharacterDataImpl9getLengthEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %0) local_unnamed_addr #2 align 2 !prof !51 {
  %2 = load ptr, ptr %0, align 8, !tbaa !43
  %3 = tail call noundef i32 @_ZNK11xercesc_2_79DOMBuffer6getLenEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #8
  %4 = zext i32 %3 to i64
  ret i64 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_720DOMCharacterDataImpl10insertDataEPKNS_7DOMNodeEmPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !51 {
  %5 = alloca [4000 x i16], align 16
  %6 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L14castToNodeImplEPKNS_7DOMNodeE(ptr noundef %1) #8
  %7 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl10isReadOnlyEv(ptr noundef nonnull align 8 dereferenceable(10) %6) #8
  br i1 %7, label %8, label %22

8:                                                ; preds = %4
  %9 = tail call ptr @__cxa_allocate_exception(i64 40) #9
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMCharacterDataImpl", ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !48
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %8
  %14 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %11) #8
  br label %17

15:                                               ; preds = %8
  %16 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !59
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi ptr [ %14, %13 ], [ %16, %15 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %9, i16 noundef signext 7, ptr noundef null, ptr noundef %18) #8
          to label %19 unwind label %20

19:                                               ; preds = %17
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #10
  unreachable

20:                                               ; preds = %17
  %21 = landingpad { ptr, i32 }
          cleanup
  br label %99

22:                                               ; preds = %4
  %23 = load ptr, ptr %0, align 8, !tbaa !43
  %24 = tail call noundef i32 @_ZNK11xercesc_2_79DOMBuffer6getLenEv(ptr noundef nonnull align 8 dereferenceable(24) %23) #8
  %25 = zext i32 %24 to i64
  %26 = icmp ult i64 %25, %2
  br i1 %26, label %27, label %41

27:                                               ; preds = %22
  %28 = tail call ptr @__cxa_allocate_exception(i64 40) #9
  %29 = getelementptr inbounds %"class.xercesc_2_7::DOMCharacterDataImpl", ptr %0, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !48
  %31 = icmp eq ptr %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %27
  %33 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %30) #8
  br label %36

34:                                               ; preds = %27
  %35 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !59
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi ptr [ %33, %32 ], [ %35, %34 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %28, i16 noundef signext 1, ptr noundef null, ptr noundef %37) #8
          to label %38 unwind label %39

38:                                               ; preds = %36
  tail call void @__cxa_throw(ptr nonnull %28, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #10
  unreachable

39:                                               ; preds = %36
  %40 = landingpad { ptr, i32 }
          cleanup
  br label %99

41:                                               ; preds = %22
  %42 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %3) #8
  %43 = zext i32 %42 to i64
  %44 = add nuw nsw i64 %43, %25
  call void @llvm.lifetime.start.p0(i64 8000, ptr nonnull %5) #9
  %45 = icmp ugt i64 %44, 3998
  br i1 %45, label %46, label %54

46:                                               ; preds = %41
  %47 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !59
  %48 = shl nuw nsw i64 %44, 1
  %49 = add nuw nsw i64 %48, 2
  %50 = load ptr, ptr %47, align 8, !tbaa !60
  %51 = getelementptr inbounds ptr, ptr %50, i64 2
  %52 = load ptr, ptr %51, align 8
  %53 = tail call noundef ptr %52(ptr noundef nonnull align 8 dereferenceable(8) %47, i64 noundef %49) #8
  br label %54

54:                                               ; preds = %41, %46
  %55 = phi ptr [ %53, %46 ], [ %5, %41 ]
  %56 = load ptr, ptr %0, align 8, !tbaa !43
  %57 = tail call noundef ptr @_ZNK11xercesc_2_79DOMBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(24) %56) #8
  %58 = trunc i64 %2 to i32
  %59 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString11copyNStringEPtPKtj(ptr noundef %55, ptr noundef %57, i32 noundef %58) #8
  %60 = getelementptr inbounds i16, ptr %55, i64 %2
  %61 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString11copyNStringEPtPKtj(ptr noundef %60, ptr noundef %3, i32 noundef %42) #8
  %62 = getelementptr inbounds i16, ptr %60, i64 %43
  %63 = load ptr, ptr %0, align 8, !tbaa !43
  %64 = call noundef ptr @_ZNK11xercesc_2_79DOMBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(24) %63) #8
  %65 = getelementptr inbounds i16, ptr %64, i64 %2
  call void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef %62, ptr noundef %65) #8
  %66 = load ptr, ptr %0, align 8, !tbaa !43
  call void @_ZN11xercesc_2_79DOMBuffer3setEPKtj(ptr noundef nonnull align 8 dereferenceable(24) %66, ptr noundef %55, i32 noundef 0) #8
  br i1 %45, label %67, label %72

67:                                               ; preds = %54
  %68 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !59
  %69 = load ptr, ptr %68, align 8, !tbaa !60
  %70 = getelementptr inbounds ptr, ptr %69, i64 3
  %71 = load ptr, ptr %70, align 8
  call void %71(ptr noundef nonnull align 8 dereferenceable(8) %68, ptr noundef %55) #8
  br label %72

72:                                               ; preds = %67, %54
  %73 = load ptr, ptr %1, align 8, !tbaa !60
  %74 = getelementptr inbounds ptr, ptr %73, i64 12
  %75 = load ptr, ptr %74, align 8
  %76 = call noundef ptr %75(ptr noundef nonnull align 8 dereferenceable(8) %1) #8
  %77 = icmp eq ptr %76, null
  br i1 %77, label %98, label %78

78:                                               ; preds = %72
  %79 = load ptr, ptr %1, align 8, !tbaa !60
  %80 = getelementptr inbounds ptr, ptr %79, i64 12
  %81 = load ptr, ptr %80, align 8
  %82 = call noundef ptr %81(ptr noundef nonnull align 8 dereferenceable(8) %1) #8
  %83 = load ptr, ptr %82, align 8, !tbaa !60
  %84 = getelementptr inbounds ptr, ptr %83, i64 82
  %85 = load ptr, ptr %84, align 8
  %86 = call noundef ptr %85(ptr noundef nonnull align 8 dereferenceable(293) %82) #8
  %87 = icmp eq ptr %86, null
  br i1 %87, label %98, label %88

88:                                               ; preds = %78
  %89 = call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %86) #8
  %90 = zext i32 %89 to i64
  %91 = icmp eq i32 %89, 0
  br i1 %91, label %98, label %92

92:                                               ; preds = %88, %92
  %93 = phi i64 [ %96, %92 ], [ 0, %88 ]
  %94 = trunc i64 %93 to i32
  %95 = call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %86, i32 noundef %94) #8
  call void @_ZN11xercesc_2_712DOMRangeImpl26updateRangeForInsertedTextEPNS_7DOMNodeEmi(ptr noundef nonnull align 8 dereferenceable(80) %95, ptr noundef nonnull %1, i64 noundef %2, i32 noundef %42) #8
  %96 = add nuw nsw i64 %93, 1
  %97 = icmp eq i64 %96, %90
  br i1 %97, label %98, label %92, !llvm.loop !88

98:                                               ; preds = %92, %78, %88, %72
  call void @llvm.lifetime.end.p0(i64 8000, ptr nonnull %5) #9
  ret void

99:                                               ; preds = %39, %20
  %100 = phi ptr [ %28, %39 ], [ %9, %20 ]
  %101 = phi { ptr, i32 } [ %40, %39 ], [ %21, %20 ]
  tail call void @__cxa_free_exception(ptr %100) #9
  resume { ptr, i32 } %101
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %0) local_unnamed_addr #2 comdat align 2 !prof !89 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3, !prof !90

3:                                                ; preds = %1
  %4 = load i16, ptr %0, align 2, !tbaa !57
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %17, label %6, !prof !91

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %8, %6 ], [ %0, %3 ]
  %8 = getelementptr inbounds i16, ptr %7, i64 1
  %9 = load i16, ptr %8, align 2, !tbaa !57
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %6, !prof !92, !llvm.loop !93

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

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712DOMRangeImpl26updateRangeForInsertedTextEPNS_7DOMNodeEmi(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_720DOMCharacterDataImpl11replaceDataEPKNS_7DOMNodeEmmPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !51 {
  %6 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L14castToNodeImplEPKNS_7DOMNodeE(ptr noundef %1) #8
  %7 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl10isReadOnlyEv(ptr noundef nonnull align 8 dereferenceable(10) %6) #8
  br i1 %7, label %8, label %22

8:                                                ; preds = %5
  %9 = tail call ptr @__cxa_allocate_exception(i64 40) #9
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMCharacterDataImpl", ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !48
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %8
  %14 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %11) #8
  br label %17

15:                                               ; preds = %8
  %16 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !59
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi ptr [ %14, %13 ], [ %16, %15 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %9, i16 noundef signext 7, ptr noundef null, ptr noundef %18) #8
          to label %19 unwind label %20

19:                                               ; preds = %17
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #10
  unreachable

20:                                               ; preds = %17
  %21 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %9) #9
  resume { ptr, i32 } %21

22:                                               ; preds = %5
  tail call void @_ZN11xercesc_2_720DOMCharacterDataImpl10deleteDataEPKNS_7DOMNodeEmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) #8
  tail call void @_ZN11xercesc_2_720DOMCharacterDataImpl10insertDataEPKNS_7DOMNodeEmPKt(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i64 noundef %2, ptr noundef %4) #8
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_720DOMCharacterDataImpl7setDataEPKNS_7DOMNodeEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 !prof !51 {
  tail call void @_ZN11xercesc_2_720DOMCharacterDataImpl12setNodeValueEPKNS_7DOMNodeEPKt(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) #8
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_720DOMCharacterDataImpl13substringDataEPKNS_7DOMNodeEmm(ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !51 {
  %5 = alloca [4000 x i16], align 16
  %6 = load ptr, ptr %0, align 8, !tbaa !43
  %7 = tail call noundef i32 @_ZNK11xercesc_2_79DOMBuffer6getLenEv(ptr noundef nonnull align 8 dereferenceable(24) %6) #8
  %8 = zext i32 %7 to i64
  %9 = icmp ult i64 %8, %2
  br i1 %9, label %10, label %24

10:                                               ; preds = %4
  %11 = tail call ptr @__cxa_allocate_exception(i64 40) #9
  %12 = getelementptr inbounds %"class.xercesc_2_7::DOMCharacterDataImpl", ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !48
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %10
  %16 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %13) #8
  br label %19

17:                                               ; preds = %10
  %18 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !59
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi ptr [ %16, %15 ], [ %18, %17 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %11, i16 noundef signext 1, ptr noundef null, ptr noundef %20) #8
          to label %21 unwind label %22

21:                                               ; preds = %19
  tail call void @__cxa_throw(ptr nonnull %11, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #10
  unreachable

22:                                               ; preds = %19
  %23 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %11) #9
  resume { ptr, i32 } %23

24:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 8000, ptr nonnull %5) #9
  %25 = icmp ugt i32 %7, 3998
  br i1 %25, label %26, label %38

26:                                               ; preds = %24
  %27 = load ptr, ptr %1, align 8, !tbaa !60
  %28 = getelementptr inbounds ptr, ptr %27, i64 12
  %29 = load ptr, ptr %28, align 8
  %30 = tail call noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(8) %1) #8
  %31 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %30) #8
  %32 = shl nuw nsw i64 %8, 1
  %33 = add nuw nsw i64 %32, 2
  %34 = load ptr, ptr %31, align 8, !tbaa !60
  %35 = getelementptr inbounds ptr, ptr %34, i64 2
  %36 = load ptr, ptr %35, align 8
  %37 = tail call noundef ptr %36(ptr noundef nonnull align 8 dereferenceable(8) %31, i64 noundef %33) #8
  br label %38

38:                                               ; preds = %24, %26
  %39 = phi ptr [ %37, %26 ], [ %5, %24 ]
  %40 = load ptr, ptr %0, align 8, !tbaa !43
  %41 = tail call noundef ptr @_ZNK11xercesc_2_79DOMBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(24) %40) #8
  %42 = getelementptr inbounds i16, ptr %41, i64 %2
  %43 = trunc i64 %3 to i32
  %44 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString11copyNStringEPtPKtj(ptr noundef %39, ptr noundef %42, i32 noundef %43) #8
  %45 = getelementptr inbounds i16, ptr %39, i64 %3
  store i16 0, ptr %45, align 2, !tbaa !57
  %46 = load ptr, ptr %1, align 8, !tbaa !60
  %47 = getelementptr inbounds ptr, ptr %46, i64 12
  %48 = load ptr, ptr %47, align 8
  %49 = call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %1) #8
  %50 = call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %49, ptr noundef %39) #8
  br i1 %25, label %51, label %60

51:                                               ; preds = %38
  %52 = load ptr, ptr %1, align 8, !tbaa !60
  %53 = getelementptr inbounds ptr, ptr %52, i64 12
  %54 = load ptr, ptr %53, align 8
  %55 = call noundef ptr %54(ptr noundef nonnull align 8 dereferenceable(8) %1) #8
  %56 = call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %55) #8
  %57 = load ptr, ptr %56, align 8, !tbaa !60
  %58 = getelementptr inbounds ptr, ptr %57, i64 3
  %59 = load ptr, ptr %58, align 8
  call void %59(ptr noundef nonnull align 8 dereferenceable(8) %56, ptr noundef nonnull %39) #8
  br label %60

60:                                               ; preds = %51, %38
  call void @llvm.lifetime.end.p0(i64 8000, ptr nonnull %5) #9
  ret ptr %50
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_720DOMCharacterDataImpl13releaseBufferEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %0) local_unnamed_addr #0 align 2 !prof !51 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMCharacterDataImpl", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  %4 = load ptr, ptr %0, align 8, !tbaa !43
  tail call void @_ZN11xercesc_2_715DOMDocumentImpl13releaseBufferEPNS_9DOMBufferE(ptr noundef nonnull align 8 dereferenceable(293) %3, ptr noundef %4) #8
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_715DOMDocumentImpl13releaseBufferEPNS_9DOMBufferE(ptr noundef nonnull align 8 dereferenceable(293), ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr noundef nonnull align 8 dereferenceable(293), i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !51 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #8
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !60
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #8
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #11
  resume { ptr, i32 } %8
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #11
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 !prof !51 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !51 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !94
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #8
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #8
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #11
  resume { ptr, i32 } %7
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 comdat align 2 !prof !51 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #8
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !60
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #7

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { optsize }
attributes #9 = { nounwind }
attributes #10 = { noreturn }
attributes #11 = { nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!41}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40}
!35 = !{ptr @_ZN11xercesc_2_720DOMCharacterDataImplC2EPNS_11DOMDocumentEPKt, ptr @_ZN11xercesc_2_715DOMDocumentImpl9popBufferEv, i64 650}
!36 = !{ptr @_ZN11xercesc_2_720DOMCharacterDataImplC2EPNS_11DOMDocumentEPKt, ptr @_ZnwmPN11xercesc_2_711DOMDocumentE, i64 649}
!37 = !{ptr @_ZN11xercesc_2_720DOMCharacterDataImplC2EPNS_11DOMDocumentEPKt, ptr @_ZN11xercesc_2_79DOMBufferC1EPNS_15DOMDocumentImplEPKt, i64 649}
!38 = !{ptr @_ZN11xercesc_2_720DOMCharacterDataImplC2EPNS_11DOMDocumentEPKt, ptr @_ZN11xercesc_2_79DOMBuffer3setEPKtj, i64 1}
!39 = !{ptr @_ZnwmPN11xercesc_2_711DOMDocumentE, ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm, i64 2815}
!40 = !{ptr @_ZNK11xercesc_2_720DOMCharacterDataImpl12getNodeValueEv, ptr @_ZNK11xercesc_2_79DOMBuffer12getRawBufferEv, i64 4639}
!41 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!42 = !{!"function_entry_count", i64 650}
!43 = !{!44, !45, i64 0}
!44 = !{!"_ZTSN11xercesc_2_720DOMCharacterDataImplE", !45, i64 0, !45, i64 8}
!45 = !{!"any pointer", !46, i64 0}
!46 = !{!"omnipotent char", !47, i64 0}
!47 = !{!"Simple C++ TBAA"}
!48 = !{!44, !45, i64 8}
!49 = !{!"branch_weights", i32 651, i32 1}
!50 = !{!"function_entry_count", i64 2815}
!51 = !{!"function_entry_count", i64 0}
!52 = !{!"function_entry_count", i64 4639}
!53 = !{!54, !45, i64 0}
!54 = !{!"_ZTSN11xercesc_2_79DOMBufferE", !45, i64 0, !55, i64 8, !55, i64 12, !45, i64 16}
!55 = !{!"int", !46, i64 0}
!56 = !{!54, !55, i64 8}
!57 = !{!58, !58, i64 0}
!58 = !{!"short", !46, i64 0}
!59 = !{!45, !45, i64 0}
!60 = !{!61, !61, i64 0}
!61 = !{!"vtable pointer", !47, i64 0}
!62 = distinct !{!62, !63}
!63 = !{!"llvm.loop.mustprogress"}
!64 = !{!"DOMCharacterDataImpl.cpp:_ZN11xercesc_2_7L14castToNodeImplEPKNS_7DOMNodeE"}
!65 = !{!"function_entry_count", i64 3150}
!66 = !{!67, !58, i64 8}
!67 = !{!"_ZTSN11xercesc_2_711DOMNodeImplE", !45, i64 0, !58, i64 8}
!68 = !{!"function_entry_count", i64 2954}
!69 = !{!70, !45, i64 280}
!70 = !{!"_ZTSN11xercesc_2_715DOMDocumentImplE", !71, i64 0, !67, i64 32, !76, i64 48, !45, i64 80, !45, i64 88, !45, i64 96, !79, i64 104, !45, i64 112, !45, i64 120, !45, i64 128, !80, i64 136, !45, i64 176, !45, i64 184, !45, i64 192, !82, i64 200, !45, i64 208, !45, i64 216, !45, i64 224, !45, i64 232, !45, i64 240, !45, i64 248, !45, i64 256, !45, i64 264, !45, i64 272, !45, i64 280, !55, i64 288, !79, i64 292}
!71 = !{!"_ZTSN11xercesc_2_711DOMDocumentE", !72, i64 0, !73, i64 8, !74, i64 16, !75, i64 24}
!72 = !{!"_ZTSN11xercesc_2_716DOMDocumentRangeE"}
!73 = !{!"_ZTSN11xercesc_2_717DOMXPathEvaluatorE"}
!74 = !{!"_ZTSN11xercesc_2_720DOMDocumentTraversalE"}
!75 = !{!"_ZTSN11xercesc_2_77DOMNodeE"}
!76 = !{!"_ZTSN11xercesc_2_713DOMParentNodeE", !45, i64 0, !45, i64 8, !77, i64 16}
!77 = !{!"_ZTSN11xercesc_2_715DOMNodeListImplE", !78, i64 0, !45, i64 8}
!78 = !{!"_ZTSN11xercesc_2_711DOMNodeListE"}
!79 = !{!"bool", !46, i64 0}
!80 = !{!"_ZTSN11xercesc_2_713XMLStringPoolE", !81, i64 0, !45, i64 8, !45, i64 16, !45, i64 24, !55, i64 32, !55, i64 36}
!81 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!82 = !{!"long", !46, i64 0}
!83 = !{!84, !55, i64 12}
!84 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEEE", !79, i64 8, !55, i64 12, !55, i64 16, !45, i64 24, !45, i64 32}
!85 = !{!84, !45, i64 32}
!86 = !{!84, !45, i64 24}
!87 = distinct !{!87, !63}
!88 = distinct !{!88, !63}
!89 = !{!"function_entry_count", i64 2453164456}
!90 = !{!"branch_weights", i32 1, i32 -1841802839}
!91 = !{!"branch_weights", i32 1150041, i32 -1842952879}
!92 = !{!"branch_weights", i32 408669070, i32 -279908794}
!93 = distinct !{!93, !63}
!94 = !{!95, !45, i64 40}
!95 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !96, i64 8, !45, i64 16, !55, i64 24, !45, i64 32, !45, i64 40}
!96 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !46, i64 0}
