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

$_ZN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEE9elementAtEj = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv = comdat any

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

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xercesc_2_720DOMCharacterDataImplC2EPNS_11DOMDocumentEPKt(ptr nocapture noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 align 2 !prof !39 {
  store ptr null, ptr %0, align 8, !tbaa !40
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMCharacterDataImpl", ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !45
  %5 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl9popBufferEv(ptr noundef nonnull align 8 dereferenceable(293) %1)
  store ptr %5, ptr %0, align 8, !tbaa !40
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %11, !prof !46

7:                                                ; preds = %3
  %8 = load ptr, ptr %4, align 8, !tbaa !45
  %9 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr noundef nonnull align 8 dereferenceable(293) %8, i64 noundef 24)
  %10 = load ptr, ptr %4, align 8, !tbaa !45
  tail call void @_ZN11xercesc_2_79DOMBufferC1EPNS_15DOMDocumentImplEPKt(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef %10, ptr noundef %2)
  store ptr %9, ptr %0, align 8, !tbaa !40
  br label %12

11:                                               ; preds = %3
  tail call void @_ZN11xercesc_2_79DOMBuffer3setEPKtj(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef %2, i32 noundef 0)
  br label %12

12:                                               ; preds = %11, %7
  ret void
}

declare noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl9popBufferEv(ptr noundef nonnull align 8 dereferenceable(293)) local_unnamed_addr #1

declare void @_ZN11xercesc_2_79DOMBufferC1EPNS_15DOMDocumentImplEPKt(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef) unnamed_addr #1

declare void @_ZN11xercesc_2_79DOMBuffer3setEPKtj(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_720DOMCharacterDataImplC2ERKS0_(ptr nocapture noundef nonnull align 8 dereferenceable(16) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %1) unnamed_addr #2 align 2 !prof !47 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMCharacterDataImpl", ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMCharacterDataImpl", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  store ptr %5, ptr %3, align 8, !tbaa !45
  %6 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl9popBufferEv(ptr noundef nonnull align 8 dereferenceable(293) %5)
  store ptr %6, ptr %0, align 8, !tbaa !40
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %18

8:                                                ; preds = %2
  %9 = load ptr, ptr %3, align 8, !tbaa !45
  %10 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr noundef nonnull align 8 dereferenceable(293) %9, i64 noundef 24)
  %11 = load ptr, ptr %3, align 8, !tbaa !45
  %12 = load ptr, ptr %1, align 8, !tbaa !40
  %13 = load ptr, ptr %12, align 8, !tbaa !48
  %14 = getelementptr inbounds %"class.xercesc_2_7::DOMBuffer", ptr %12, i64 0, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !51
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds i16, ptr %13, i64 %16
  store i16 0, ptr %17, align 2, !tbaa !52
  tail call void @_ZN11xercesc_2_79DOMBufferC1EPNS_15DOMDocumentImplEPKt(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef %11, ptr noundef %13)
  store ptr %10, ptr %0, align 8, !tbaa !40
  br label %25

18:                                               ; preds = %2
  %19 = load ptr, ptr %1, align 8, !tbaa !40
  %20 = load ptr, ptr %19, align 8, !tbaa !48
  %21 = getelementptr inbounds %"class.xercesc_2_7::DOMBuffer", ptr %19, i64 0, i32 1
  %22 = load i32, ptr %21, align 8, !tbaa !51
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i16, ptr %20, i64 %23
  store i16 0, ptr %24, align 2, !tbaa !52
  tail call void @_ZN11xercesc_2_79DOMBuffer3setEPKtj(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef %20, i32 noundef 0)
  br label %25

25:                                               ; preds = %18, %8
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_720DOMCharacterDataImplD2Ev(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #3 align 2 !prof !47 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_720DOMCharacterDataImpl12getNodeValueEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %0) local_unnamed_addr #4 align 2 !prof !54 {
  %2 = load ptr, ptr %0, align 8, !tbaa !40
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMBuffer", ptr %2, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !51
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds i16, ptr %3, i64 %6
  store i16 0, ptr %7, align 2, !tbaa !52
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_720DOMCharacterDataImpl12setNodeValueEPKNS_7DOMNodeEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !47 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %1, i64 0, i32 1, i32 1
  %5 = load i16, ptr %4, align 8, !tbaa !55
  %6 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl8READONLYE, align 2, !tbaa !52
  %7 = and i16 %6, %5
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %20, label %9

9:                                                ; preds = %3
  %10 = tail call ptr @__cxa_allocate_exception(i64 40) #12
  %11 = getelementptr inbounds %"class.xercesc_2_7::DOMCharacterDataImpl", ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !45
  %13 = icmp eq ptr %12, null
  %14 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %12, i64 0, i32 25
  %15 = select i1 %13, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, ptr %14
  %16 = load ptr, ptr %15, align 8, !tbaa !57
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %10, i16 noundef signext 7, ptr noundef null, ptr noundef %16)
          to label %17 unwind label %18

17:                                               ; preds = %9
  tail call void @__cxa_throw(ptr nonnull %10, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #13
  unreachable

18:                                               ; preds = %9
  %19 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %10) #12
  resume { ptr, i32 } %19

20:                                               ; preds = %3
  %21 = load ptr, ptr %0, align 8, !tbaa !40
  tail call void @_ZN11xercesc_2_79DOMBuffer3setEPKtj(ptr noundef nonnull align 8 dereferenceable(24) %21, ptr noundef %2, i32 noundef 0)
  %22 = load ptr, ptr %1, align 8, !tbaa !58
  %23 = getelementptr inbounds ptr, ptr %22, i64 12
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef ptr %24(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %26 = icmp eq ptr %25, null
  br i1 %26, label %48, label %27

27:                                               ; preds = %20
  %28 = load ptr, ptr %1, align 8, !tbaa !58
  %29 = getelementptr inbounds ptr, ptr %28, i64 12
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef ptr %30(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %32 = load ptr, ptr %31, align 8, !tbaa !58
  %33 = getelementptr inbounds ptr, ptr %32, i64 82
  %34 = load ptr, ptr %33, align 8
  %35 = tail call noundef ptr %34(ptr noundef nonnull align 8 dereferenceable(293) %31)
  %36 = icmp eq ptr %35, null
  br i1 %36, label %48, label %37

37:                                               ; preds = %27
  %38 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %35, i64 0, i32 2
  %39 = load i32, ptr %38, align 4, !tbaa !60
  %40 = zext i32 %39 to i64
  %41 = icmp eq i32 %39, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %37, %42
  %43 = phi i64 [ %46, %42 ], [ 0, %37 ]
  %44 = trunc i64 %43 to i32
  %45 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %35, i32 noundef %44)
  tail call void @_ZN11xercesc_2_712DOMRangeImpl19receiveReplacedTextEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(80) %45, ptr noundef nonnull %1)
  %46 = add nuw nsw i64 %43, 1
  %47 = icmp eq i64 %46, %40
  br i1 %47, label %48, label %42, !llvm.loop !63

48:                                               ; preds = %42, %37, %27, %20
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare i32 @__gxx_personality_v0(...)

declare void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33), i16 noundef signext, ptr noundef, ptr noundef) unnamed_addr #1

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712DOMExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(33)) unnamed_addr #5

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !47 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !60
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !66
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 249, i32 noundef 116, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #13
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #12
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !67
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !57
  ret ptr %18
}

declare void @_ZN11xercesc_2_712DOMRangeImpl19receiveReplacedTextEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_720DOMCharacterDataImpl10appendDataEPKNS_7DOMNodeEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !47 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %1, i64 0, i32 1, i32 1
  %5 = load i16, ptr %4, align 8, !tbaa !55
  %6 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl8READONLYE, align 2, !tbaa !52
  %7 = and i16 %6, %5
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %20, label %9

9:                                                ; preds = %3
  %10 = tail call ptr @__cxa_allocate_exception(i64 40) #12
  %11 = getelementptr inbounds %"class.xercesc_2_7::DOMCharacterDataImpl", ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !45
  %13 = icmp eq ptr %12, null
  %14 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %12, i64 0, i32 25
  %15 = select i1 %13, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, ptr %14
  %16 = load ptr, ptr %15, align 8, !tbaa !57
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %10, i16 noundef signext 7, ptr noundef null, ptr noundef %16)
          to label %17 unwind label %18

17:                                               ; preds = %9
  tail call void @__cxa_throw(ptr nonnull %10, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #13
  unreachable

18:                                               ; preds = %9
  %19 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %10) #12
  resume { ptr, i32 } %19

20:                                               ; preds = %3
  %21 = load ptr, ptr %0, align 8, !tbaa !40
  tail call void @_ZN11xercesc_2_79DOMBuffer6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(24) %21, ptr noundef %2, i32 noundef 0)
  ret void
}

declare void @_ZN11xercesc_2_79DOMBuffer6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_720DOMCharacterDataImpl10deleteDataEPKNS_7DOMNodeEmm(ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !47 {
  %5 = alloca [4000 x i16], align 16
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %1, i64 0, i32 1, i32 1
  %7 = load i16, ptr %6, align 8, !tbaa !55
  %8 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl8READONLYE, align 2, !tbaa !52
  %9 = and i16 %8, %7
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %22, label %11

11:                                               ; preds = %4
  %12 = tail call ptr @__cxa_allocate_exception(i64 40) #12
  %13 = getelementptr inbounds %"class.xercesc_2_7::DOMCharacterDataImpl", ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !45
  %15 = icmp eq ptr %14, null
  %16 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %14, i64 0, i32 25
  %17 = select i1 %15, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, ptr %16
  %18 = load ptr, ptr %17, align 8, !tbaa !57
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %12, i16 noundef signext 7, ptr noundef null, ptr noundef %18)
          to label %19 unwind label %20

19:                                               ; preds = %11
  tail call void @__cxa_throw(ptr nonnull %12, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #13
  unreachable

20:                                               ; preds = %11
  %21 = landingpad { ptr, i32 }
          cleanup
  br label %110

22:                                               ; preds = %4
  %23 = load ptr, ptr %0, align 8, !tbaa !40
  %24 = getelementptr inbounds %"class.xercesc_2_7::DOMBuffer", ptr %23, i64 0, i32 1
  %25 = load i32, ptr %24, align 8, !tbaa !51
  %26 = zext i32 %25 to i64
  %27 = icmp ult i64 %26, %2
  br i1 %27, label %28, label %39

28:                                               ; preds = %22
  %29 = tail call ptr @__cxa_allocate_exception(i64 40) #12
  %30 = getelementptr inbounds %"class.xercesc_2_7::DOMCharacterDataImpl", ptr %0, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !45
  %32 = icmp eq ptr %31, null
  %33 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %31, i64 0, i32 25
  %34 = select i1 %32, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, ptr %33
  %35 = load ptr, ptr %34, align 8, !tbaa !57
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %29, i16 noundef signext 1, ptr noundef null, ptr noundef %35)
          to label %36 unwind label %37

36:                                               ; preds = %28
  tail call void @__cxa_throw(ptr nonnull %29, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #13
  unreachable

37:                                               ; preds = %28
  %38 = landingpad { ptr, i32 }
          cleanup
  br label %110

39:                                               ; preds = %22
  %40 = tail call i64 @llvm.umin.i64(i64 %26, i64 %3)
  %41 = add nuw nsw i64 %40, %2
  %42 = icmp ult i64 %41, %26
  %43 = sub nsw i64 %26, %2
  %44 = select i1 %42, i64 %40, i64 %43
  %45 = sub nsw i64 %26, %44
  call void @llvm.lifetime.start.p0(i64 8000, ptr nonnull %5) #12
  %46 = icmp ugt i64 %45, 3998
  br i1 %46, label %47, label %55

47:                                               ; preds = %39
  %48 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !57
  %49 = shl i64 %45, 1
  %50 = add i64 %49, 2
  %51 = load ptr, ptr %48, align 8, !tbaa !58
  %52 = getelementptr inbounds ptr, ptr %51, i64 2
  %53 = load ptr, ptr %52, align 8
  %54 = tail call noundef ptr %53(ptr noundef nonnull align 8 dereferenceable(8) %48, i64 noundef %50)
  br label %55

55:                                               ; preds = %39, %47
  %56 = phi ptr [ %54, %47 ], [ %5, %39 ]
  %57 = load ptr, ptr %0, align 8, !tbaa !40
  %58 = load ptr, ptr %57, align 8, !tbaa !48
  %59 = getelementptr inbounds %"class.xercesc_2_7::DOMBuffer", ptr %57, i64 0, i32 1
  %60 = load i32, ptr %59, align 8, !tbaa !51
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i16, ptr %58, i64 %61
  store i16 0, ptr %62, align 2, !tbaa !52
  %63 = trunc i64 %2 to i32
  %64 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString11copyNStringEPtPKtj(ptr noundef %56, ptr noundef %58, i32 noundef %63)
  %65 = getelementptr inbounds i16, ptr %56, i64 %2
  %66 = load ptr, ptr %0, align 8, !tbaa !40
  %67 = load ptr, ptr %66, align 8, !tbaa !48
  %68 = getelementptr inbounds %"class.xercesc_2_7::DOMBuffer", ptr %66, i64 0, i32 1
  %69 = load i32, ptr %68, align 8, !tbaa !51
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds i16, ptr %67, i64 %70
  store i16 0, ptr %71, align 2, !tbaa !52
  %72 = getelementptr inbounds i16, ptr %67, i64 %2
  %73 = getelementptr inbounds i16, ptr %72, i64 %44
  call void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef %65, ptr noundef %73)
  %74 = load ptr, ptr %0, align 8, !tbaa !40
  call void @_ZN11xercesc_2_79DOMBuffer3setEPKtj(ptr noundef nonnull align 8 dereferenceable(24) %74, ptr noundef %56, i32 noundef 0)
  br i1 %46, label %75, label %80

75:                                               ; preds = %55
  %76 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !57
  %77 = load ptr, ptr %76, align 8, !tbaa !58
  %78 = getelementptr inbounds ptr, ptr %77, i64 3
  %79 = load ptr, ptr %78, align 8
  call void %79(ptr noundef nonnull align 8 dereferenceable(8) %76, ptr noundef %56)
  br label %80

80:                                               ; preds = %75, %55
  %81 = load ptr, ptr %1, align 8, !tbaa !58
  %82 = getelementptr inbounds ptr, ptr %81, i64 12
  %83 = load ptr, ptr %82, align 8
  %84 = call noundef ptr %83(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %85 = icmp eq ptr %84, null
  br i1 %85, label %109, label %86

86:                                               ; preds = %80
  %87 = load ptr, ptr %1, align 8, !tbaa !58
  %88 = getelementptr inbounds ptr, ptr %87, i64 12
  %89 = load ptr, ptr %88, align 8
  %90 = call noundef ptr %89(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %91 = load ptr, ptr %90, align 8, !tbaa !58
  %92 = getelementptr inbounds ptr, ptr %91, i64 82
  %93 = load ptr, ptr %92, align 8
  %94 = call noundef ptr %93(ptr noundef nonnull align 8 dereferenceable(293) %90)
  %95 = icmp eq ptr %94, null
  br i1 %95, label %109, label %96

96:                                               ; preds = %86
  %97 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %94, i64 0, i32 2
  %98 = load i32, ptr %97, align 4, !tbaa !60
  %99 = zext i32 %98 to i64
  %100 = icmp eq i32 %98, 0
  br i1 %100, label %109, label %101

101:                                              ; preds = %96
  %102 = trunc i64 %44 to i32
  br label %103

103:                                              ; preds = %101, %103
  %104 = phi i64 [ 0, %101 ], [ %107, %103 ]
  %105 = trunc i64 %104 to i32
  %106 = call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %94, i32 noundef %105)
  call void @_ZN11xercesc_2_712DOMRangeImpl25updateRangeForDeletedTextEPNS_7DOMNodeEmi(ptr noundef nonnull align 8 dereferenceable(80) %106, ptr noundef nonnull %1, i64 noundef %2, i32 noundef %102)
  %107 = add nuw nsw i64 %104, 1
  %108 = icmp eq i64 %107, %99
  br i1 %108, label %109, label %103, !llvm.loop !68

109:                                              ; preds = %103, %96, %86, %80
  call void @llvm.lifetime.end.p0(i64 8000, ptr nonnull %5) #12
  ret void

110:                                              ; preds = %37, %20
  %111 = phi ptr [ %29, %37 ], [ %12, %20 ]
  %112 = phi { ptr, i32 } [ %38, %37 ], [ %21, %20 ]
  tail call void @__cxa_free_exception(ptr %111) #12
  resume { ptr, i32 } %112
}

declare noundef zeroext i1 @_ZN11xercesc_2_79XMLString11copyNStringEPtPKtj(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN11xercesc_2_712DOMRangeImpl25updateRangeForDeletedTextEPNS_7DOMNodeEmi(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_720DOMCharacterDataImpl7getDataEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %0) local_unnamed_addr #7 align 2 !prof !47 {
  %2 = load ptr, ptr %0, align 8, !tbaa !40
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMBuffer", ptr %2, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !51
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds i16, ptr %3, i64 %6
  store i16 0, ptr %7, align 2, !tbaa !52
  ret ptr %3
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i64 @_ZNK11xercesc_2_720DOMCharacterDataImpl9getLengthEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %0) local_unnamed_addr #8 align 2 !prof !47 {
  %2 = load ptr, ptr %0, align 8, !tbaa !40
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMBuffer", ptr %2, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !51
  %5 = zext i32 %4 to i64
  ret i64 %5
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_720DOMCharacterDataImpl10insertDataEPKNS_7DOMNodeEmPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !47 {
  %5 = alloca [4000 x i16], align 16
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %1, i64 0, i32 1, i32 1
  %7 = load i16, ptr %6, align 8, !tbaa !55
  %8 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl8READONLYE, align 2, !tbaa !52
  %9 = and i16 %8, %7
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %22, label %11

11:                                               ; preds = %4
  %12 = tail call ptr @__cxa_allocate_exception(i64 40) #12
  %13 = getelementptr inbounds %"class.xercesc_2_7::DOMCharacterDataImpl", ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !45
  %15 = icmp eq ptr %14, null
  %16 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %14, i64 0, i32 25
  %17 = select i1 %15, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, ptr %16
  %18 = load ptr, ptr %17, align 8, !tbaa !57
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %12, i16 noundef signext 7, ptr noundef null, ptr noundef %18)
          to label %19 unwind label %20

19:                                               ; preds = %11
  tail call void @__cxa_throw(ptr nonnull %12, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #13
  unreachable

20:                                               ; preds = %11
  %21 = landingpad { ptr, i32 }
          cleanup
  br label %122

22:                                               ; preds = %4
  %23 = load ptr, ptr %0, align 8, !tbaa !40
  %24 = getelementptr inbounds %"class.xercesc_2_7::DOMBuffer", ptr %23, i64 0, i32 1
  %25 = load i32, ptr %24, align 8, !tbaa !51
  %26 = zext i32 %25 to i64
  %27 = icmp ult i64 %26, %2
  br i1 %27, label %28, label %39

28:                                               ; preds = %22
  %29 = tail call ptr @__cxa_allocate_exception(i64 40) #12
  %30 = getelementptr inbounds %"class.xercesc_2_7::DOMCharacterDataImpl", ptr %0, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !45
  %32 = icmp eq ptr %31, null
  %33 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %31, i64 0, i32 25
  %34 = select i1 %32, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, ptr %33
  %35 = load ptr, ptr %34, align 8, !tbaa !57
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %29, i16 noundef signext 1, ptr noundef null, ptr noundef %35)
          to label %36 unwind label %37

36:                                               ; preds = %28
  tail call void @__cxa_throw(ptr nonnull %29, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #13
  unreachable

37:                                               ; preds = %28
  %38 = landingpad { ptr, i32 }
          cleanup
  br label %122

39:                                               ; preds = %22
  %40 = icmp eq ptr %3, null
  br i1 %40, label %55, label %41

41:                                               ; preds = %39
  %42 = load i16, ptr %3, align 2, !tbaa !52
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %55, label %44

44:                                               ; preds = %41, %44
  %45 = phi ptr [ %46, %44 ], [ %3, %41 ]
  %46 = getelementptr inbounds i16, ptr %45, i64 1
  %47 = load i16, ptr %46, align 2, !tbaa !52
  %48 = icmp eq i16 %47, 0
  br i1 %48, label %49, label %44, !llvm.loop !69

49:                                               ; preds = %44
  %50 = ptrtoint ptr %46 to i64
  %51 = ptrtoint ptr %3 to i64
  %52 = sub i64 %50, %51
  %53 = lshr exact i64 %52, 1
  %54 = trunc i64 %53 to i32
  br label %55

55:                                               ; preds = %39, %41, %49
  %56 = phi i32 [ %54, %49 ], [ 0, %41 ], [ 0, %39 ]
  %57 = zext i32 %56 to i64
  %58 = add nuw nsw i64 %57, %26
  call void @llvm.lifetime.start.p0(i64 8000, ptr nonnull %5) #12
  %59 = icmp ugt i64 %58, 3998
  br i1 %59, label %60, label %68

60:                                               ; preds = %55
  %61 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !57
  %62 = shl nuw nsw i64 %58, 1
  %63 = add nuw nsw i64 %62, 2
  %64 = load ptr, ptr %61, align 8, !tbaa !58
  %65 = getelementptr inbounds ptr, ptr %64, i64 2
  %66 = load ptr, ptr %65, align 8
  %67 = tail call noundef ptr %66(ptr noundef nonnull align 8 dereferenceable(8) %61, i64 noundef %63)
  br label %68

68:                                               ; preds = %55, %60
  %69 = phi ptr [ %67, %60 ], [ %5, %55 ]
  %70 = load ptr, ptr %0, align 8, !tbaa !40
  %71 = load ptr, ptr %70, align 8, !tbaa !48
  %72 = getelementptr inbounds %"class.xercesc_2_7::DOMBuffer", ptr %70, i64 0, i32 1
  %73 = load i32, ptr %72, align 8, !tbaa !51
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i16, ptr %71, i64 %74
  store i16 0, ptr %75, align 2, !tbaa !52
  %76 = trunc i64 %2 to i32
  %77 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString11copyNStringEPtPKtj(ptr noundef %69, ptr noundef %71, i32 noundef %76)
  %78 = getelementptr inbounds i16, ptr %69, i64 %2
  %79 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString11copyNStringEPtPKtj(ptr noundef %78, ptr noundef %3, i32 noundef %56)
  %80 = getelementptr inbounds i16, ptr %78, i64 %57
  %81 = load ptr, ptr %0, align 8, !tbaa !40
  %82 = load ptr, ptr %81, align 8, !tbaa !48
  %83 = getelementptr inbounds %"class.xercesc_2_7::DOMBuffer", ptr %81, i64 0, i32 1
  %84 = load i32, ptr %83, align 8, !tbaa !51
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i16, ptr %82, i64 %85
  store i16 0, ptr %86, align 2, !tbaa !52
  %87 = getelementptr inbounds i16, ptr %82, i64 %2
  call void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef %80, ptr noundef %87)
  %88 = load ptr, ptr %0, align 8, !tbaa !40
  call void @_ZN11xercesc_2_79DOMBuffer3setEPKtj(ptr noundef nonnull align 8 dereferenceable(24) %88, ptr noundef %69, i32 noundef 0)
  br i1 %59, label %89, label %94

89:                                               ; preds = %68
  %90 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !57
  %91 = load ptr, ptr %90, align 8, !tbaa !58
  %92 = getelementptr inbounds ptr, ptr %91, i64 3
  %93 = load ptr, ptr %92, align 8
  call void %93(ptr noundef nonnull align 8 dereferenceable(8) %90, ptr noundef %69)
  br label %94

94:                                               ; preds = %89, %68
  %95 = load ptr, ptr %1, align 8, !tbaa !58
  %96 = getelementptr inbounds ptr, ptr %95, i64 12
  %97 = load ptr, ptr %96, align 8
  %98 = call noundef ptr %97(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %99 = icmp eq ptr %98, null
  br i1 %99, label %121, label %100

100:                                              ; preds = %94
  %101 = load ptr, ptr %1, align 8, !tbaa !58
  %102 = getelementptr inbounds ptr, ptr %101, i64 12
  %103 = load ptr, ptr %102, align 8
  %104 = call noundef ptr %103(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %105 = load ptr, ptr %104, align 8, !tbaa !58
  %106 = getelementptr inbounds ptr, ptr %105, i64 82
  %107 = load ptr, ptr %106, align 8
  %108 = call noundef ptr %107(ptr noundef nonnull align 8 dereferenceable(293) %104)
  %109 = icmp eq ptr %108, null
  br i1 %109, label %121, label %110

110:                                              ; preds = %100
  %111 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %108, i64 0, i32 2
  %112 = load i32, ptr %111, align 4, !tbaa !60
  %113 = zext i32 %112 to i64
  %114 = icmp eq i32 %112, 0
  br i1 %114, label %121, label %115

115:                                              ; preds = %110, %115
  %116 = phi i64 [ %119, %115 ], [ 0, %110 ]
  %117 = trunc i64 %116 to i32
  %118 = call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %108, i32 noundef %117)
  call void @_ZN11xercesc_2_712DOMRangeImpl26updateRangeForInsertedTextEPNS_7DOMNodeEmi(ptr noundef nonnull align 8 dereferenceable(80) %118, ptr noundef nonnull %1, i64 noundef %2, i32 noundef %56)
  %119 = add nuw nsw i64 %116, 1
  %120 = icmp eq i64 %119, %113
  br i1 %120, label %121, label %115, !llvm.loop !70

121:                                              ; preds = %115, %110, %100, %94
  call void @llvm.lifetime.end.p0(i64 8000, ptr nonnull %5) #12
  ret void

122:                                              ; preds = %37, %20
  %123 = phi ptr [ %29, %37 ], [ %12, %20 ]
  %124 = phi { ptr, i32 } [ %38, %37 ], [ %21, %20 ]
  tail call void @__cxa_free_exception(ptr %123) #12
  resume { ptr, i32 } %124
}

declare void @_ZN11xercesc_2_712DOMRangeImpl26updateRangeForInsertedTextEPNS_7DOMNodeEmi(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_720DOMCharacterDataImpl11replaceDataEPKNS_7DOMNodeEmmPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !47 {
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %1, i64 0, i32 1, i32 1
  %7 = load i16, ptr %6, align 8, !tbaa !55
  %8 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl8READONLYE, align 2, !tbaa !52
  %9 = and i16 %8, %7
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %22, label %11

11:                                               ; preds = %5
  %12 = tail call ptr @__cxa_allocate_exception(i64 40) #12
  %13 = getelementptr inbounds %"class.xercesc_2_7::DOMCharacterDataImpl", ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !45
  %15 = icmp eq ptr %14, null
  %16 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %14, i64 0, i32 25
  %17 = select i1 %15, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, ptr %16
  %18 = load ptr, ptr %17, align 8, !tbaa !57
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %12, i16 noundef signext 7, ptr noundef null, ptr noundef %18)
          to label %19 unwind label %20

19:                                               ; preds = %11
  tail call void @__cxa_throw(ptr nonnull %12, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #13
  unreachable

20:                                               ; preds = %11
  %21 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %12) #12
  resume { ptr, i32 } %21

22:                                               ; preds = %5
  tail call void @_ZN11xercesc_2_720DOMCharacterDataImpl10deleteDataEPKNS_7DOMNodeEmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3)
  tail call void @_ZN11xercesc_2_720DOMCharacterDataImpl10insertDataEPKNS_7DOMNodeEmPKt(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i64 noundef %2, ptr noundef %4)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_720DOMCharacterDataImpl7setDataEPKNS_7DOMNodeEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 align 2 !prof !47 {
  tail call void @_ZN11xercesc_2_720DOMCharacterDataImpl12setNodeValueEPKNS_7DOMNodeEPKt(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_720DOMCharacterDataImpl13substringDataEPKNS_7DOMNodeEmm(ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !47 {
  %5 = alloca [4000 x i16], align 16
  %6 = load ptr, ptr %0, align 8, !tbaa !40
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMBuffer", ptr %6, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !51
  %9 = zext i32 %8 to i64
  %10 = icmp ult i64 %9, %2
  br i1 %10, label %11, label %22

11:                                               ; preds = %4
  %12 = tail call ptr @__cxa_allocate_exception(i64 40) #12
  %13 = getelementptr inbounds %"class.xercesc_2_7::DOMCharacterDataImpl", ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !45
  %15 = icmp eq ptr %14, null
  %16 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %14, i64 0, i32 25
  %17 = select i1 %15, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, ptr %16
  %18 = load ptr, ptr %17, align 8, !tbaa !57
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %12, i16 noundef signext 1, ptr noundef null, ptr noundef %18)
          to label %19 unwind label %20

19:                                               ; preds = %11
  tail call void @__cxa_throw(ptr nonnull %12, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #13
  unreachable

20:                                               ; preds = %11
  %21 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %12) #12
  resume { ptr, i32 } %21

22:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 8000, ptr nonnull %5) #12
  %23 = icmp ugt i32 %8, 3998
  br i1 %23, label %24, label %37

24:                                               ; preds = %22
  %25 = load ptr, ptr %1, align 8, !tbaa !58
  %26 = getelementptr inbounds ptr, ptr %25, i64 12
  %27 = load ptr, ptr %26, align 8
  %28 = tail call noundef ptr %27(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %29 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %28, i64 0, i32 25
  %30 = load ptr, ptr %29, align 8, !tbaa !71
  %31 = shl nuw nsw i64 %9, 1
  %32 = add nuw nsw i64 %31, 2
  %33 = load ptr, ptr %30, align 8, !tbaa !58
  %34 = getelementptr inbounds ptr, ptr %33, i64 2
  %35 = load ptr, ptr %34, align 8
  %36 = tail call noundef ptr %35(ptr noundef nonnull align 8 dereferenceable(8) %30, i64 noundef %32)
  br label %37

37:                                               ; preds = %22, %24
  %38 = phi ptr [ %36, %24 ], [ %5, %22 ]
  %39 = load ptr, ptr %0, align 8, !tbaa !40
  %40 = load ptr, ptr %39, align 8, !tbaa !48
  %41 = getelementptr inbounds %"class.xercesc_2_7::DOMBuffer", ptr %39, i64 0, i32 1
  %42 = load i32, ptr %41, align 8, !tbaa !51
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i16, ptr %40, i64 %43
  store i16 0, ptr %44, align 2, !tbaa !52
  %45 = getelementptr inbounds i16, ptr %40, i64 %2
  %46 = trunc i64 %3 to i32
  %47 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString11copyNStringEPtPKtj(ptr noundef %38, ptr noundef %45, i32 noundef %46)
  %48 = getelementptr inbounds i16, ptr %38, i64 %3
  store i16 0, ptr %48, align 2, !tbaa !52
  %49 = load ptr, ptr %1, align 8, !tbaa !58
  %50 = getelementptr inbounds ptr, ptr %49, i64 12
  %51 = load ptr, ptr %50, align 8
  %52 = call noundef ptr %51(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %53 = call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %52, ptr noundef %38)
  br i1 %23, label %54, label %64

54:                                               ; preds = %37
  %55 = load ptr, ptr %1, align 8, !tbaa !58
  %56 = getelementptr inbounds ptr, ptr %55, i64 12
  %57 = load ptr, ptr %56, align 8
  %58 = call noundef ptr %57(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %59 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %58, i64 0, i32 25
  %60 = load ptr, ptr %59, align 8, !tbaa !71
  %61 = load ptr, ptr %60, align 8, !tbaa !58
  %62 = getelementptr inbounds ptr, ptr %61, i64 3
  %63 = load ptr, ptr %62, align 8
  call void %63(ptr noundef nonnull align 8 dereferenceable(8) %60, ptr noundef %38)
  br label %64

64:                                               ; preds = %54, %37
  call void @llvm.lifetime.end.p0(i64 8000, ptr nonnull %5) #12
  ret ptr %53
}

declare noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293), ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_720DOMCharacterDataImpl13releaseBufferEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %0) local_unnamed_addr #2 align 2 !prof !47 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMCharacterDataImpl", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = load ptr, ptr %0, align 8, !tbaa !40
  tail call void @_ZN11xercesc_2_715DOMDocumentImpl13releaseBufferEPNS_9DOMBufferE(ptr noundef nonnull align 8 dereferenceable(293) %3, ptr noundef %4)
  ret void
}

declare void @_ZN11xercesc_2_715DOMDocumentImpl13releaseBufferEPNS_9DOMBufferE(ptr noundef nonnull align 8 dereferenceable(293), ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr noundef nonnull align 8 dereferenceable(293), i64 noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !47 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !58
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #12
  resume { ptr, i32 } %8
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #5

declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #1

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #9 comdat align 2 !prof !47 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #9 comdat align 2 !prof !47 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !47 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !84
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !58
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #12
  resume { ptr, i32 } %7
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #5

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { nounwind }
attributes #13 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!38}

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
!34 = distinct !{!35, !36, !37}
!35 = !{ptr @_ZN11xercesc_2_720DOMCharacterDataImplC2EPNS_11DOMDocumentEPKt, ptr @_ZN11xercesc_2_715DOMDocumentImpl9popBufferEv, i64 650}
!36 = !{ptr @_ZN11xercesc_2_720DOMCharacterDataImplC2EPNS_11DOMDocumentEPKt, ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm, i64 650}
!37 = !{ptr @_ZN11xercesc_2_720DOMCharacterDataImplC2EPNS_11DOMDocumentEPKt, ptr @_ZN11xercesc_2_79DOMBufferC1EPNS_15DOMDocumentImplEPKt, i64 650}
!38 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!39 = !{!"function_entry_count", i64 650}
!40 = !{!41, !42, i64 0}
!41 = !{!"_ZTSN11xercesc_2_720DOMCharacterDataImplE", !42, i64 0, !42, i64 8}
!42 = !{!"any pointer", !43, i64 0}
!43 = !{!"omnipotent char", !44, i64 0}
!44 = !{!"Simple C++ TBAA"}
!45 = !{!41, !42, i64 8}
!46 = !{!"branch_weights", i32 650, i32 0}
!47 = !{!"function_entry_count", i64 0}
!48 = !{!49, !42, i64 0}
!49 = !{!"_ZTSN11xercesc_2_79DOMBufferE", !42, i64 0, !50, i64 8, !50, i64 12, !42, i64 16}
!50 = !{!"int", !43, i64 0}
!51 = !{!49, !50, i64 8}
!52 = !{!53, !53, i64 0}
!53 = !{!"short", !43, i64 0}
!54 = !{!"function_entry_count", i64 4639}
!55 = !{!56, !53, i64 8}
!56 = !{!"_ZTSN11xercesc_2_711DOMNodeImplE", !42, i64 0, !53, i64 8}
!57 = !{!42, !42, i64 0}
!58 = !{!59, !59, i64 0}
!59 = !{!"vtable pointer", !44, i64 0}
!60 = !{!61, !50, i64 12}
!61 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEEE", !62, i64 8, !50, i64 12, !50, i64 16, !42, i64 24, !42, i64 32}
!62 = !{!"bool", !43, i64 0}
!63 = distinct !{!63, !64, !65}
!64 = !{!"llvm.loop.mustprogress"}
!65 = !{!"llvm.loop.unroll.disable"}
!66 = !{!61, !42, i64 32}
!67 = !{!61, !42, i64 24}
!68 = distinct !{!68, !64, !65}
!69 = distinct !{!69, !64, !65}
!70 = distinct !{!70, !64, !65}
!71 = !{!72, !42, i64 280}
!72 = !{!"_ZTSN11xercesc_2_715DOMDocumentImplE", !73, i64 0, !56, i64 32, !78, i64 48, !42, i64 80, !42, i64 88, !42, i64 96, !62, i64 104, !42, i64 112, !42, i64 120, !42, i64 128, !81, i64 136, !42, i64 176, !42, i64 184, !42, i64 192, !83, i64 200, !42, i64 208, !42, i64 216, !42, i64 224, !42, i64 232, !42, i64 240, !42, i64 248, !42, i64 256, !42, i64 264, !42, i64 272, !42, i64 280, !50, i64 288, !62, i64 292}
!73 = !{!"_ZTSN11xercesc_2_711DOMDocumentE", !74, i64 0, !75, i64 8, !76, i64 16, !77, i64 24}
!74 = !{!"_ZTSN11xercesc_2_716DOMDocumentRangeE"}
!75 = !{!"_ZTSN11xercesc_2_717DOMXPathEvaluatorE"}
!76 = !{!"_ZTSN11xercesc_2_720DOMDocumentTraversalE"}
!77 = !{!"_ZTSN11xercesc_2_77DOMNodeE"}
!78 = !{!"_ZTSN11xercesc_2_713DOMParentNodeE", !42, i64 0, !42, i64 8, !79, i64 16}
!79 = !{!"_ZTSN11xercesc_2_715DOMNodeListImplE", !80, i64 0, !42, i64 8}
!80 = !{!"_ZTSN11xercesc_2_711DOMNodeListE"}
!81 = !{!"_ZTSN11xercesc_2_713XMLStringPoolE", !82, i64 0, !42, i64 8, !42, i64 16, !42, i64 24, !50, i64 32, !50, i64 36}
!82 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!83 = !{!"long", !43, i64 0}
!84 = !{!85, !42, i64 40}
!85 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !86, i64 8, !42, i64 16, !50, i64 24, !42, i64 32, !42, i64 40}
!86 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !43, i64 0}
