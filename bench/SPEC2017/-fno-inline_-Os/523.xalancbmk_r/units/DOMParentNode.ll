; ModuleID = 'DOMParentNode.cpp'
source_filename = "DOMParentNode.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::DOMParentNode" = type { ptr, ptr, %"class.xercesc_2_7::DOMNodeListImpl" }
%"class.xercesc_2_7::DOMNodeListImpl" = type { %"class.xercesc_2_7::DOMNodeList", ptr }
%"class.xercesc_2_7::DOMNodeList" = type { ptr }
%"class.xercesc_2_7::DOMChildNode" = type { ptr, ptr }
%"class.xercesc_2_7::DOMElementImpl" = type { %"class.xercesc_2_7::DOMElement", %"class.xercesc_2_7::DOMNodeImpl", %"class.xercesc_2_7::DOMParentNode", %"class.xercesc_2_7::DOMChildNode", ptr, ptr, ptr }
%"class.xercesc_2_7::DOMElement" = type { %"class.xercesc_2_7::DOMNode" }
%"class.xercesc_2_7::DOMNode" = type { ptr }
%"class.xercesc_2_7::DOMNodeImpl" = type <{ ptr, i16, [6 x i8] }>
%"class.xercesc_2_7::DOMTextImpl" = type { %"class.xercesc_2_7::DOMText", %"class.xercesc_2_7::DOMNodeImpl", %"class.xercesc_2_7::DOMChildNode", %"class.xercesc_2_7::DOMCharacterDataImpl" }
%"class.xercesc_2_7::DOMText" = type { %"class.xercesc_2_7::DOMCharacterData" }
%"class.xercesc_2_7::DOMCharacterData" = type { %"class.xercesc_2_7::DOMNode" }
%"class.xercesc_2_7::DOMCharacterDataImpl" = type { ptr, ptr }
%"class.xercesc_2_7::DOMDocumentImpl" = type <{ %"class.xercesc_2_7::DOMDocument", %"class.xercesc_2_7::DOMNodeImpl", %"class.xercesc_2_7::DOMParentNode", ptr, ptr, ptr, i8, [7 x i8], ptr, ptr, ptr, %"class.xercesc_2_7::XMLStringPool", ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, [3 x i8] }>
%"class.xercesc_2_7::DOMDocument" = type { %"class.xercesc_2_7::DOMDocumentRange", %"class.xercesc_2_7::DOMXPathEvaluator", %"class.xercesc_2_7::DOMDocumentTraversal", %"class.xercesc_2_7::DOMNode" }
%"class.xercesc_2_7::DOMDocumentRange" = type { ptr }
%"class.xercesc_2_7::DOMXPathEvaluator" = type { ptr }
%"class.xercesc_2_7::DOMDocumentTraversal" = type { ptr }
%"class.xercesc_2_7::XMLStringPool" = type { %"class.xercesc_2_7::XSerializable", ptr, ptr, ptr, i32, i32 }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::BaseRefVectorOf" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::BaseRefVectorOf.1" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv = comdat any

$_ZNK11xercesc_2_711DOMNodeImpl10isReadOnlyEv = comdat any

$_ZN11xercesc_2_711DOMNodeImpl7isOwnedEb = comdat any

$_ZN11xercesc_2_711DOMNodeImpl12isFirstChildEb = comdat any

$_ZNK11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEE4sizeEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEE9elementAtEj = comdat any

$_ZNK11xercesc_2_715BaseRefVectorOfINS_19DOMNodeIteratorImplEE4sizeEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_19DOMNodeIteratorImplEE9elementAtEj = comdat any

$_ZN11xercesc_2_711DOMNodeImpl14isToBeReleasedEb = comdat any

$_ZNK11xercesc_2_711DOMNodeImpl10isLeafNodeEv = comdat any

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
@_ZN11xercesc_2_711DOMNodeImpl12LEAFNODETYPEE = external local_unnamed_addr constant i16, align 2
@_ZN11xercesc_2_711DOMNodeImpl8READONLYE = external local_unnamed_addr constant i16, align 2
@_ZN11xercesc_2_711DOMNodeImpl5OWNEDE = external local_unnamed_addr constant i16, align 2
@_ZN11xercesc_2_711DOMNodeImpl10FIRSTCHILDE = external local_unnamed_addr constant i16, align 2
@_ZN11xercesc_2_711DOMNodeImpl12TOBERELEASEDE = external local_unnamed_addr constant i16, align 2
@.str = private unnamed_addr constant [33 x i8] c"./xercesc/util/BaseRefVectorOf.c\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant [48 x i8] c"N11xercesc_2_730ArrayIndexOutOfBoundsExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE = external constant [0 x i16], align 2

@_ZN11xercesc_2_713DOMParentNodeC1EPNS_11DOMDocumentE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_713DOMParentNodeC2EPNS_11DOMDocumentE
@_ZN11xercesc_2_713DOMParentNodeC1ERKS0_ = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_713DOMParentNodeC2ERKS0_

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_713DOMParentNodeC2EPNS_11DOMDocumentE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !58 {
  store ptr %1, ptr %0, align 8, !tbaa !59
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMParentNode", ptr %0, i64 0, i32 1
  store ptr null, ptr %3, align 8, !tbaa !66
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMParentNode", ptr %0, i64 0, i32 2
  %5 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L10castToNodeEPKNS_13DOMParentNodeE(ptr noundef nonnull %0) #7
  tail call void @_ZN11xercesc_2_715DOMNodeListImplC1EPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %5) #7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef nonnull ptr @_ZN11xercesc_2_7L10castToNodeEPKNS_13DOMParentNodeE(ptr noundef readnone %0) unnamed_addr #1 !prof !67 !PGOFuncName !68 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -24
  ret ptr %2
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_715DOMNodeListImplC1EPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_713DOMParentNodeC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %1) unnamed_addr #0 align 2 !prof !69 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMParentNode", ptr %0, i64 0, i32 2
  %4 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L10castToNodeEPKNS_13DOMParentNodeE(ptr noundef nonnull %0) #7
  tail call void @_ZN11xercesc_2_715DOMNodeListImplC1EPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %4) #7
  %5 = load ptr, ptr %1, align 8, !tbaa !59
  store ptr %5, ptr %0, align 8, !tbaa !59
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMParentNode", ptr %0, i64 0, i32 1
  store ptr null, ptr %6, align 8, !tbaa !66
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_713DOMParentNode7changedEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0) local_unnamed_addr #0 align 2 !prof !70 {
  %2 = tail call noundef ptr @_ZNK11xercesc_2_713DOMParentNode16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #7
  %3 = load ptr, ptr %2, align 8, !tbaa !71
  %4 = getelementptr inbounds ptr, ptr %3, i64 89
  %5 = load ptr, ptr %4, align 8
  tail call void %5(ptr noundef nonnull align 8 dereferenceable(293) %2) #7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_713DOMParentNode16getOwnerDocumentEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0) local_unnamed_addr #3 align 2 !prof !73 {
  %2 = load ptr, ptr %0, align 8, !tbaa !59
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_713DOMParentNode7changesEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0) local_unnamed_addr #0 align 2 !prof !69 {
  %2 = tail call noundef ptr @_ZNK11xercesc_2_713DOMParentNode16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #7
  %3 = load ptr, ptr %2, align 8, !tbaa !71
  %4 = getelementptr inbounds ptr, ptr %3, i64 90
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef i32 %5(ptr noundef nonnull align 8 dereferenceable(293) %2) #7
  ret i32 %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_713DOMParentNode11appendChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef returned %1) local_unnamed_addr #0 align 2 !prof !74 {
  %3 = tail call noundef ptr @_ZN11xercesc_2_713DOMParentNode12insertBeforeEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef null) #7
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_713DOMParentNode12insertBeforeEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef returned %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !75 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %5, label %18, !prof !76

5:                                                ; preds = %3
  %6 = tail call ptr @__cxa_allocate_exception(i64 40) #8
  %7 = load ptr, ptr %0, align 8, !tbaa !59
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %7) #7
  br label %13

11:                                               ; preds = %5
  %12 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !77
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi ptr [ %10, %9 ], [ %12, %11 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %6, i16 noundef signext 3, ptr noundef null, ptr noundef %14) #7
          to label %15 unwind label %16

15:                                               ; preds = %13
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #9
  unreachable

16:                                               ; preds = %13
  %17 = landingpad { ptr, i32 }
          cleanup
  br label %252

18:                                               ; preds = %3
  %19 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L14castToNodeImplEPKNS_13DOMParentNodeE(ptr noundef nonnull %0) #7
  %20 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl10isReadOnlyEv(ptr noundef nonnull align 8 dereferenceable(10) %19) #7
  br i1 %20, label %21, label %34, !prof !76

21:                                               ; preds = %18
  %22 = tail call ptr @__cxa_allocate_exception(i64 40) #8
  %23 = load ptr, ptr %0, align 8, !tbaa !59
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %23) #7
  br label %29

27:                                               ; preds = %21
  %28 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !77
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi ptr [ %26, %25 ], [ %28, %27 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %22, i16 noundef signext 7, ptr noundef null, ptr noundef %30) #7
          to label %31 unwind label %32

31:                                               ; preds = %29
  tail call void @__cxa_throw(ptr nonnull %22, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #9
  unreachable

32:                                               ; preds = %29
  %33 = landingpad { ptr, i32 }
          cleanup
  br label %252

34:                                               ; preds = %18
  %35 = load ptr, ptr %1, align 8, !tbaa !71
  %36 = getelementptr inbounds ptr, ptr %35, i64 12
  %37 = load ptr, ptr %36, align 8
  %38 = tail call noundef ptr %37(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  %39 = load ptr, ptr %0, align 8, !tbaa !59
  %40 = icmp eq ptr %38, %39
  br i1 %40, label %54, label %41, !prof !78

41:                                               ; preds = %34
  %42 = tail call ptr @__cxa_allocate_exception(i64 40) #8
  %43 = load ptr, ptr %0, align 8, !tbaa !59
  %44 = icmp eq ptr %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %41
  %46 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %43) #7
  br label %49

47:                                               ; preds = %41
  %48 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !77
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi ptr [ %46, %45 ], [ %48, %47 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %42, i16 noundef signext 4, ptr noundef null, ptr noundef %50) #7
          to label %51 unwind label %52

51:                                               ; preds = %49
  tail call void @__cxa_throw(ptr nonnull %42, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #9
  unreachable

52:                                               ; preds = %49
  %53 = landingpad { ptr, i32 }
          cleanup
  br label %252

54:                                               ; preds = %34
  %55 = load ptr, ptr %1, align 8, !tbaa !71
  %56 = getelementptr inbounds ptr, ptr %55, i64 18
  %57 = load ptr, ptr %56, align 8
  %58 = tail call noundef zeroext i1 %57(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  br i1 %58, label %59, label %89, !prof !76

59:                                               ; preds = %54
  %60 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L10castToNodeEPKNS_13DOMParentNodeE(ptr noundef nonnull %0) #7
  %61 = load ptr, ptr %60, align 8, !tbaa !71
  %62 = getelementptr inbounds ptr, ptr %61, i64 5
  %63 = load ptr, ptr %62, align 8
  %64 = tail call noundef ptr %63(ptr noundef nonnull align 8 dereferenceable(8) %60) #7
  %65 = icmp eq ptr %64, null
  br i1 %65, label %89, label %67

66:                                               ; preds = %67
  br i1 %69, label %89, label %76

67:                                               ; preds = %59, %67
  %68 = phi ptr [ %73, %67 ], [ %64, %59 ]
  %69 = icmp ne ptr %68, %1
  %70 = load ptr, ptr %68, align 8, !tbaa !71
  %71 = getelementptr inbounds ptr, ptr %70, i64 5
  %72 = load ptr, ptr %71, align 8
  %73 = tail call noundef ptr %72(ptr noundef nonnull align 8 dereferenceable(8) %68) #7
  %74 = icmp ne ptr %73, null
  %75 = and i1 %69, %74
  br i1 %75, label %67, label %66, !llvm.loop !79

76:                                               ; preds = %66
  %77 = tail call ptr @__cxa_allocate_exception(i64 40) #8
  %78 = load ptr, ptr %0, align 8, !tbaa !59
  %79 = icmp eq ptr %78, null
  br i1 %79, label %82, label %80

80:                                               ; preds = %76
  %81 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %78) #7
  br label %84

82:                                               ; preds = %76
  %83 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !77
  br label %84

84:                                               ; preds = %82, %80
  %85 = phi ptr [ %81, %80 ], [ %83, %82 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %77, i16 noundef signext 3, ptr noundef null, ptr noundef %85) #7
          to label %86 unwind label %87

86:                                               ; preds = %84
  tail call void @__cxa_throw(ptr nonnull %77, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #9
  unreachable

87:                                               ; preds = %84
  %88 = landingpad { ptr, i32 }
          cleanup
  br label %252

89:                                               ; preds = %59, %66, %54
  %90 = icmp eq ptr %2, null
  br i1 %90, label %116, label %91, !prof !78

91:                                               ; preds = %89
  %92 = load ptr, ptr %2, align 8, !tbaa !71
  %93 = getelementptr inbounds ptr, ptr %92, i64 5
  %94 = load ptr, ptr %93, align 8
  %95 = tail call noundef ptr %94(ptr noundef nonnull align 8 dereferenceable(8) %2) #7
  %96 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L10castToNodeEPKNS_13DOMParentNodeE(ptr noundef nonnull %0) #7
  %97 = icmp eq ptr %95, %96
  br i1 %97, label %111, label %98

98:                                               ; preds = %91
  %99 = tail call ptr @__cxa_allocate_exception(i64 40) #8
  %100 = load ptr, ptr %0, align 8, !tbaa !59
  %101 = icmp eq ptr %100, null
  br i1 %101, label %104, label %102

102:                                              ; preds = %98
  %103 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %100) #7
  br label %106

104:                                              ; preds = %98
  %105 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !77
  br label %106

106:                                              ; preds = %104, %102
  %107 = phi ptr [ %103, %102 ], [ %105, %104 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %99, i16 noundef signext 8, ptr noundef null, ptr noundef %107) #7
          to label %108 unwind label %109

108:                                              ; preds = %106
  tail call void @__cxa_throw(ptr nonnull %99, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #9
  unreachable

109:                                              ; preds = %106
  %110 = landingpad { ptr, i32 }
          cleanup
  br label %252

111:                                              ; preds = %91
  %112 = load ptr, ptr %1, align 8, !tbaa !71
  %113 = getelementptr inbounds ptr, ptr %112, i64 27
  %114 = load ptr, ptr %113, align 8
  %115 = tail call noundef zeroext i1 %114(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %2) #7
  br i1 %115, label %251, label %116

116:                                              ; preds = %89, %111
  %117 = load ptr, ptr %1, align 8, !tbaa !71
  %118 = getelementptr inbounds ptr, ptr %117, i64 4
  %119 = load ptr, ptr %118, align 8
  %120 = tail call noundef signext i16 %119(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  %121 = icmp eq i16 %120, 11
  br i1 %121, label %122, label %167, !prof !76

122:                                              ; preds = %116
  %123 = load ptr, ptr %1, align 8, !tbaa !71
  %124 = getelementptr inbounds ptr, ptr %123, i64 7
  %125 = load ptr, ptr %124, align 8
  %126 = tail call noundef ptr %125(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  %127 = icmp eq ptr %126, null
  br i1 %127, label %130, label %128

128:                                              ; preds = %122
  %129 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L10castToNodeEPKNS_13DOMParentNodeE(ptr noundef nonnull %0) #7
  br label %135

130:                                              ; preds = %151, %122
  %131 = load ptr, ptr %1, align 8, !tbaa !71
  %132 = getelementptr inbounds ptr, ptr %131, i64 18
  %133 = load ptr, ptr %132, align 8
  %134 = tail call noundef zeroext i1 %133(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  br i1 %134, label %157, label %232

135:                                              ; preds = %128, %151
  %136 = phi ptr [ %126, %128 ], [ %155, %151 ]
  %137 = tail call noundef zeroext i1 @_ZN11xercesc_2_715DOMDocumentImpl7isKidOKEPNS_7DOMNodeES2_(ptr noundef nonnull %129, ptr noundef nonnull %136) #7
  br i1 %137, label %151, label %138

138:                                              ; preds = %135
  %139 = tail call ptr @__cxa_allocate_exception(i64 40) #8
  %140 = load ptr, ptr %0, align 8, !tbaa !59
  %141 = icmp eq ptr %140, null
  br i1 %141, label %144, label %142

142:                                              ; preds = %138
  %143 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %140) #7
  br label %146

144:                                              ; preds = %138
  %145 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !77
  br label %146

146:                                              ; preds = %144, %142
  %147 = phi ptr [ %143, %142 ], [ %145, %144 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %139, i16 noundef signext 3, ptr noundef null, ptr noundef %147) #7
          to label %148 unwind label %149

148:                                              ; preds = %146
  tail call void @__cxa_throw(ptr nonnull %139, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #9
  unreachable

149:                                              ; preds = %146
  %150 = landingpad { ptr, i32 }
          cleanup
  br label %252

151:                                              ; preds = %135
  %152 = load ptr, ptr %136, align 8, !tbaa !71
  %153 = getelementptr inbounds ptr, ptr %152, i64 10
  %154 = load ptr, ptr %153, align 8
  %155 = tail call noundef ptr %154(ptr noundef nonnull align 8 dereferenceable(8) %136) #7
  %156 = icmp eq ptr %155, null
  br i1 %156, label %130, label %135, !llvm.loop !81

157:                                              ; preds = %130, %157
  %158 = load ptr, ptr %1, align 8, !tbaa !71
  %159 = getelementptr inbounds ptr, ptr %158, i64 7
  %160 = load ptr, ptr %159, align 8
  %161 = tail call noundef ptr %160(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  %162 = tail call noundef ptr @_ZN11xercesc_2_713DOMParentNode12insertBeforeEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %161, ptr noundef %2) #7
  %163 = load ptr, ptr %1, align 8, !tbaa !71
  %164 = getelementptr inbounds ptr, ptr %163, i64 18
  %165 = load ptr, ptr %164, align 8
  %166 = tail call noundef zeroext i1 %165(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  br i1 %166, label %157, label %232, !llvm.loop !82

167:                                              ; preds = %116
  %168 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L10castToNodeEPKNS_13DOMParentNodeE(ptr noundef nonnull %0) #7
  %169 = tail call noundef zeroext i1 @_ZN11xercesc_2_715DOMDocumentImpl7isKidOKEPNS_7DOMNodeES2_(ptr noundef nonnull %168, ptr noundef nonnull %1) #7
  br i1 %169, label %183, label %170, !prof !78

170:                                              ; preds = %167
  %171 = tail call ptr @__cxa_allocate_exception(i64 40) #8
  %172 = load ptr, ptr %0, align 8, !tbaa !59
  %173 = icmp eq ptr %172, null
  br i1 %173, label %176, label %174

174:                                              ; preds = %170
  %175 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %172) #7
  br label %178

176:                                              ; preds = %170
  %177 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !77
  br label %178

178:                                              ; preds = %176, %174
  %179 = phi ptr [ %175, %174 ], [ %177, %176 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %171, i16 noundef signext 3, ptr noundef null, ptr noundef %179) #7
          to label %180 unwind label %181

180:                                              ; preds = %178
  tail call void @__cxa_throw(ptr nonnull %171, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #9
  unreachable

181:                                              ; preds = %178
  %182 = landingpad { ptr, i32 }
          cleanup
  br label %252

183:                                              ; preds = %167
  %184 = load ptr, ptr %1, align 8, !tbaa !71
  %185 = getelementptr inbounds ptr, ptr %184, i64 5
  %186 = load ptr, ptr %185, align 8
  %187 = tail call noundef ptr %186(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  %188 = icmp eq ptr %187, null
  br i1 %188, label %194, label %189, !prof !78

189:                                              ; preds = %183
  %190 = load ptr, ptr %187, align 8, !tbaa !71
  %191 = getelementptr inbounds ptr, ptr %190, i64 16
  %192 = load ptr, ptr %191, align 8
  %193 = tail call noundef ptr %192(ptr noundef nonnull align 8 dereferenceable(8) %187, ptr noundef nonnull %1) #7
  br label %194

194:                                              ; preds = %189, %183
  %195 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L14castToNodeImplEPKNS_7DOMNodeE(ptr noundef nonnull %1) #7
  store ptr %168, ptr %195, align 8, !tbaa !83
  tail call void @_ZN11xercesc_2_711DOMNodeImpl7isOwnedEb(ptr noundef nonnull align 8 dereferenceable(10) %195, i1 noundef zeroext true) #7
  %196 = getelementptr inbounds %"class.xercesc_2_7::DOMParentNode", ptr %0, i64 0, i32 1
  %197 = load ptr, ptr %196, align 8, !tbaa !66
  %198 = icmp eq ptr %197, null
  br i1 %198, label %199, label %201, !prof !86

199:                                              ; preds = %194
  store ptr %1, ptr %196, align 8, !tbaa !66
  tail call void @_ZN11xercesc_2_711DOMNodeImpl12isFirstChildEb(ptr noundef nonnull align 8 dereferenceable(10) %195, i1 noundef zeroext true) #7
  %200 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L15castToChildImplEPKNS_7DOMNodeE(ptr noundef nonnull %1) #7
  store ptr %1, ptr %200, align 8, !tbaa !87
  br label %232

201:                                              ; preds = %194
  br i1 %90, label %202, label %210, !prof !89

202:                                              ; preds = %201
  %203 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L15castToChildImplEPKNS_7DOMNodeE(ptr noundef nonnull %197) #7
  %204 = load ptr, ptr %203, align 8, !tbaa !87
  %205 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L15castToChildImplEPKNS_7DOMNodeE(ptr noundef %204) #7
  %206 = getelementptr inbounds %"class.xercesc_2_7::DOMChildNode", ptr %205, i64 0, i32 1
  store ptr %1, ptr %206, align 8, !tbaa !90
  %207 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L15castToChildImplEPKNS_7DOMNodeE(ptr noundef nonnull %1) #7
  store ptr %204, ptr %207, align 8, !tbaa !87
  %208 = load ptr, ptr %196, align 8, !tbaa !66
  %209 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L15castToChildImplEPKNS_7DOMNodeE(ptr noundef %208) #7
  store ptr %1, ptr %209, align 8, !tbaa !87
  br label %232

210:                                              ; preds = %201
  %211 = icmp eq ptr %197, %2
  br i1 %211, label %212, label %223

212:                                              ; preds = %210
  %213 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L14castToNodeImplEPKNS_7DOMNodeE(ptr noundef nonnull %2) #7
  tail call void @_ZN11xercesc_2_711DOMNodeImpl12isFirstChildEb(ptr noundef nonnull align 8 dereferenceable(10) %213, i1 noundef zeroext false) #7
  %214 = load ptr, ptr %196, align 8, !tbaa !66
  %215 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L15castToChildImplEPKNS_7DOMNodeE(ptr noundef nonnull %1) #7
  %216 = getelementptr inbounds %"class.xercesc_2_7::DOMChildNode", ptr %215, i64 0, i32 1
  store ptr %214, ptr %216, align 8, !tbaa !90
  %217 = load ptr, ptr %196, align 8, !tbaa !66
  %218 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L15castToChildImplEPKNS_7DOMNodeE(ptr noundef %217) #7
  %219 = load ptr, ptr %218, align 8, !tbaa !87
  %220 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L15castToChildImplEPKNS_7DOMNodeE(ptr noundef nonnull %1) #7
  store ptr %219, ptr %220, align 8, !tbaa !87
  %221 = load ptr, ptr %196, align 8, !tbaa !66
  %222 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L15castToChildImplEPKNS_7DOMNodeE(ptr noundef %221) #7
  store ptr %1, ptr %222, align 8, !tbaa !87
  store ptr %1, ptr %196, align 8, !tbaa !66
  tail call void @_ZN11xercesc_2_711DOMNodeImpl12isFirstChildEb(ptr noundef nonnull align 8 dereferenceable(10) %195, i1 noundef zeroext true) #7
  br label %232

223:                                              ; preds = %210
  %224 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L15castToChildImplEPKNS_7DOMNodeE(ptr noundef nonnull %2) #7
  %225 = load ptr, ptr %224, align 8, !tbaa !87
  %226 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L15castToChildImplEPKNS_7DOMNodeE(ptr noundef nonnull %1) #7
  %227 = getelementptr inbounds %"class.xercesc_2_7::DOMChildNode", ptr %226, i64 0, i32 1
  store ptr %2, ptr %227, align 8, !tbaa !90
  %228 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L15castToChildImplEPKNS_7DOMNodeE(ptr noundef %225) #7
  %229 = getelementptr inbounds %"class.xercesc_2_7::DOMChildNode", ptr %228, i64 0, i32 1
  store ptr %1, ptr %229, align 8, !tbaa !90
  %230 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L15castToChildImplEPKNS_7DOMNodeE(ptr noundef nonnull %2) #7
  store ptr %1, ptr %230, align 8, !tbaa !87
  %231 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L15castToChildImplEPKNS_7DOMNodeE(ptr noundef nonnull %1) #7
  store ptr %225, ptr %231, align 8, !tbaa !87
  br label %232

232:                                              ; preds = %157, %130, %199, %212, %223, %202
  tail call void @_ZN11xercesc_2_713DOMParentNode7changedEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #7
  %233 = tail call noundef ptr @_ZNK11xercesc_2_713DOMParentNode16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #7
  %234 = icmp eq ptr %233, null
  br i1 %234, label %251, label %235, !prof !76

235:                                              ; preds = %232
  %236 = load ptr, ptr %233, align 8, !tbaa !71
  %237 = getelementptr inbounds ptr, ptr %236, i64 82
  %238 = load ptr, ptr %237, align 8
  %239 = tail call noundef ptr %238(ptr noundef nonnull align 8 dereferenceable(293) %233) #7
  %240 = icmp eq ptr %239, null
  br i1 %240, label %251, label %241, !prof !78

241:                                              ; preds = %235
  %242 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %239) #7
  %243 = zext i32 %242 to i64
  %244 = icmp eq i32 %242, 0
  br i1 %244, label %251, label %245

245:                                              ; preds = %241, %245
  %246 = phi i64 [ %249, %245 ], [ 0, %241 ]
  %247 = trunc i64 %246 to i32
  %248 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %239, i32 noundef %247) #7
  tail call void @_ZN11xercesc_2_712DOMRangeImpl26updateRangeForInsertedNodeEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(80) %248, ptr noundef nonnull %1) #7
  %249 = add nuw nsw i64 %246, 1
  %250 = icmp eq i64 %249, %243
  br i1 %250, label %251, label %245, !llvm.loop !91

251:                                              ; preds = %245, %232, %241, %235, %111
  ret ptr %1

252:                                              ; preds = %32, %52, %87, %109, %149, %181, %16
  %253 = phi ptr [ %22, %32 ], [ %42, %52 ], [ %77, %87 ], [ %99, %109 ], [ %139, %149 ], [ %171, %181 ], [ %6, %16 ]
  %254 = phi { ptr, i32 } [ %33, %32 ], [ %53, %52 ], [ %88, %87 ], [ %110, %109 ], [ %150, %149 ], [ %182, %181 ], [ %17, %16 ]
  tail call void @__cxa_free_exception(ptr %253) #8
  resume { ptr, i32 } %254
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_713DOMParentNode13cloneChildrenEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #0 align 2 !prof !69 {
  %3 = load ptr, ptr %1, align 8, !tbaa !71
  %4 = getelementptr inbounds ptr, ptr %3, i64 7
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %9, %2
  ret void

9:                                                ; preds = %2, %9
  %10 = phi ptr [ %19, %9 ], [ %6, %2 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !71
  %12 = getelementptr inbounds ptr, ptr %11, i64 13
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(8) %10, i1 noundef zeroext true) #7
  %15 = tail call noundef ptr @_ZN11xercesc_2_713DOMParentNode11appendChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %14) #7
  %16 = load ptr, ptr %10, align 8, !tbaa !71
  %17 = getelementptr inbounds ptr, ptr %16, i64 10
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %10) #7
  %20 = icmp eq ptr %19, null
  br i1 %20, label %8, label %9, !llvm.loop !92
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_713DOMParentNode11getDocumentEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0) local_unnamed_addr #3 align 2 !prof !69 {
  %2 = load ptr, ptr %0, align 8, !tbaa !59
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_713DOMParentNode16setOwnerDocumentEPNS_11DOMDocumentE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #4 align 2 !prof !69 {
  store ptr %1, ptr %0, align 8, !tbaa !59
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK11xercesc_2_713DOMParentNode13getChildNodesEv(ptr noundef nonnull readnone align 8 dereferenceable(32) %0) local_unnamed_addr #1 align 2 !prof !69 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMParentNode", ptr %0, i64 0, i32 2
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_713DOMParentNode13getFirstChildEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0) local_unnamed_addr #3 align 2 !prof !93 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMParentNode", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !66
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_713DOMParentNode12getLastChildEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0) local_unnamed_addr #5 align 2 !prof !69 {
  %2 = tail call noundef ptr @_ZNK11xercesc_2_713DOMParentNode9lastChildEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #7
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_713DOMParentNode9lastChildEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0) local_unnamed_addr #5 align 2 !prof !69 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMParentNode", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !66
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L15castToChildImplEPKNS_7DOMNodeE(ptr noundef nonnull %3) #7
  %7 = load ptr, ptr %6, align 8, !tbaa !87
  br label %8

8:                                                ; preds = %1, %5
  %9 = phi ptr [ %7, %5 ], [ null, %1 ]
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define internal fastcc noundef nonnull ptr @_ZN11xercesc_2_7L15castToChildImplEPKNS_7DOMNodeE(ptr noundef %0) unnamed_addr #5 !prof !94 !PGOFuncName !95 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl10isLeafNodeEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #7
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMTextImpl", ptr %0, i64 0, i32 2
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 3
  %6 = select i1 %3, ptr %4, ptr %5, !prof !96
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_713DOMParentNode9lastChildEPNS_7DOMNodeE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #5 align 2 !prof !69 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMParentNode", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !66
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L15castToChildImplEPKNS_7DOMNodeE(ptr noundef nonnull %4) #7
  store ptr %1, ptr %7, align 8, !tbaa !87
  br label %8

8:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_713DOMParentNode13hasChildNodesEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0) local_unnamed_addr #3 align 2 !prof !97 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMParentNode", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !66
  %4 = icmp ne ptr %3, null
  ret i1 %4
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %0) local_unnamed_addr #5 comdat align 2 !prof !98 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 25
  %3 = load ptr, ptr %2, align 8, !tbaa !99
  ret ptr %3
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33), i16 noundef signext, ptr noundef, ptr noundef) unnamed_addr #2

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712DOMExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(33)) unnamed_addr #6

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef nonnull ptr @_ZN11xercesc_2_7L14castToNodeImplEPKNS_13DOMParentNodeE(ptr noundef readnone %0) unnamed_addr #1 !prof !75 !PGOFuncName !111 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl10isReadOnlyEv(ptr noundef nonnull align 8 dereferenceable(10) %0) local_unnamed_addr #5 comdat align 2 !prof !112 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %0, i64 0, i32 1
  %3 = load i16, ptr %2, align 8, !tbaa !113
  %4 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl8READONLYE, align 2, !tbaa !114
  %5 = and i16 %4, %3
  %6 = icmp ne i16 %5, 0
  ret i1 %6
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_715DOMDocumentImpl7isKidOKEPNS_7DOMNodeES2_(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef nonnull ptr @_ZN11xercesc_2_7L14castToNodeImplEPKNS_7DOMNodeE(ptr noundef readnone %0) unnamed_addr #1 !prof !115 !PGOFuncName !116 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711DOMNodeImpl7isOwnedEb(ptr noundef nonnull align 8 dereferenceable(10) %0, i1 noundef zeroext %1) local_unnamed_addr #5 comdat align 2 !prof !70 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %0, i64 0, i32 1
  %4 = load i16, ptr %3, align 8, !tbaa !113
  %5 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl5OWNEDE, align 2, !tbaa !114
  br i1 %1, label %6, label %8, !prof !117

6:                                                ; preds = %2
  %7 = or i16 %5, %4
  br label %11

8:                                                ; preds = %2
  %9 = xor i16 %5, -1
  %10 = and i16 %4, %9
  br label %11

11:                                               ; preds = %8, %6
  %12 = phi i16 [ %7, %6 ], [ %10, %8 ]
  %13 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %0, i64 0, i32 1
  store i16 %12, ptr %13, align 8, !tbaa !113
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711DOMNodeImpl12isFirstChildEb(ptr noundef nonnull align 8 dereferenceable(10) %0, i1 noundef zeroext %1) local_unnamed_addr #5 comdat align 2 !prof !118 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %0, i64 0, i32 1
  %4 = load i16, ptr %3, align 8, !tbaa !113
  %5 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl10FIRSTCHILDE, align 2, !tbaa !114
  br i1 %1, label %6, label %8, !prof !119

6:                                                ; preds = %2
  %7 = or i16 %5, %4
  br label %11

8:                                                ; preds = %2
  %9 = xor i16 %5, -1
  %10 = and i16 %4, %9
  br label %11

11:                                               ; preds = %8, %6
  %12 = phi i16 [ %7, %6 ], [ %10, %8 ]
  %13 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %0, i64 0, i32 1
  store i16 %12, ptr %13, align 8, !tbaa !113
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #5 comdat align 2 !prof !69 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !120
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !69 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !120
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #8
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !122
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 249, i32 noundef 116, ptr noundef %9) #7
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #9
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #8
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !123
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !77
  ret ptr %18
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712DOMRangeImpl26updateRangeForInsertedNodeEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_713DOMParentNode11removeChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef returned %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !69 {
  %3 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L14castToNodeImplEPKNS_13DOMParentNodeE(ptr noundef nonnull %0) #7
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl10isReadOnlyEv(ptr noundef nonnull align 8 dereferenceable(10) %3) #7
  br i1 %4, label %5, label %18

5:                                                ; preds = %2
  %6 = tail call ptr @__cxa_allocate_exception(i64 40) #8
  %7 = load ptr, ptr %0, align 8, !tbaa !59
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %7) #7
  br label %13

11:                                               ; preds = %5
  %12 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !77
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi ptr [ %10, %9 ], [ %12, %11 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %6, i16 noundef signext 7, ptr noundef null, ptr noundef %14) #7
          to label %15 unwind label %16

15:                                               ; preds = %13
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #9
  unreachable

16:                                               ; preds = %13
  %17 = landingpad { ptr, i32 }
          cleanup
  br label %123

18:                                               ; preds = %2
  %19 = icmp eq ptr %1, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %18
  %21 = load ptr, ptr %1, align 8, !tbaa !71
  %22 = getelementptr inbounds ptr, ptr %21, i64 5
  %23 = load ptr, ptr %22, align 8
  %24 = tail call noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  %25 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L10castToNodeEPKNS_13DOMParentNodeE(ptr noundef nonnull %0) #7
  %26 = icmp eq ptr %24, %25
  br i1 %26, label %40, label %27

27:                                               ; preds = %20, %18
  %28 = tail call ptr @__cxa_allocate_exception(i64 40) #8
  %29 = load ptr, ptr %0, align 8, !tbaa !59
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %29) #7
  br label %35

33:                                               ; preds = %27
  %34 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !77
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi ptr [ %32, %31 ], [ %34, %33 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %28, i16 noundef signext 8, ptr noundef null, ptr noundef %36) #7
          to label %37 unwind label %38

37:                                               ; preds = %35
  tail call void @__cxa_throw(ptr nonnull %28, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #9
  unreachable

38:                                               ; preds = %35
  %39 = landingpad { ptr, i32 }
          cleanup
  br label %123

40:                                               ; preds = %20
  %41 = tail call noundef ptr @_ZNK11xercesc_2_713DOMParentNode16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #7
  %42 = icmp eq ptr %41, null
  br i1 %42, label %84, label %43

43:                                               ; preds = %40
  %44 = load ptr, ptr %41, align 8, !tbaa !71
  %45 = getelementptr inbounds ptr, ptr %44, i64 83
  %46 = load ptr, ptr %45, align 8
  %47 = tail call noundef ptr %46(ptr noundef nonnull align 8 dereferenceable(293) %41) #7
  %48 = icmp eq ptr %47, null
  br i1 %48, label %63, label %49

49:                                               ; preds = %43
  %50 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_19DOMNodeIteratorImplEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %47) #7
  %51 = zext i32 %50 to i64
  %52 = icmp eq i32 %50, 0
  br i1 %52, label %63, label %53

53:                                               ; preds = %49, %60
  %54 = phi i64 [ %61, %60 ], [ 0, %49 ]
  %55 = trunc i64 %54 to i32
  %56 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_19DOMNodeIteratorImplEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %47, i32 noundef %55) #7
  %57 = icmp eq ptr %56, null
  br i1 %57, label %60, label %58

58:                                               ; preds = %53
  %59 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_19DOMNodeIteratorImplEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %47, i32 noundef %55) #7
  tail call void @_ZN11xercesc_2_719DOMNodeIteratorImpl10removeNodeEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(57) %59, ptr noundef nonnull %1) #7
  br label %60

60:                                               ; preds = %53, %58
  %61 = add nuw nsw i64 %54, 1
  %62 = icmp eq i64 %61, %51
  br i1 %62, label %63, label %53, !llvm.loop !124

63:                                               ; preds = %60, %49, %43
  %64 = tail call noundef ptr @_ZNK11xercesc_2_713DOMParentNode16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #7
  %65 = load ptr, ptr %64, align 8, !tbaa !71
  %66 = getelementptr inbounds ptr, ptr %65, i64 82
  %67 = load ptr, ptr %66, align 8
  %68 = tail call noundef ptr %67(ptr noundef nonnull align 8 dereferenceable(293) %64) #7
  %69 = icmp eq ptr %68, null
  br i1 %69, label %84, label %70

70:                                               ; preds = %63
  %71 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %68) #7
  %72 = zext i32 %71 to i64
  %73 = icmp eq i32 %71, 0
  br i1 %73, label %84, label %74

74:                                               ; preds = %70, %81
  %75 = phi i64 [ %82, %81 ], [ 0, %70 ]
  %76 = trunc i64 %75 to i32
  %77 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %68, i32 noundef %76) #7
  %78 = icmp eq ptr %77, null
  br i1 %78, label %81, label %79

79:                                               ; preds = %74
  %80 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %68, i32 noundef %76) #7
  tail call void @_ZN11xercesc_2_712DOMRangeImpl25updateRangeForDeletedNodeEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(80) %80, ptr noundef nonnull %1) #7
  br label %81

81:                                               ; preds = %74, %79
  %82 = add nuw nsw i64 %75, 1
  %83 = icmp eq i64 %82, %72
  br i1 %83, label %84, label %74, !llvm.loop !125

84:                                               ; preds = %81, %63, %70, %40
  %85 = getelementptr inbounds %"class.xercesc_2_7::DOMParentNode", ptr %0, i64 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !66
  %87 = icmp eq ptr %86, %1
  br i1 %87, label %88, label %100

88:                                               ; preds = %84
  %89 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L14castToNodeImplEPKNS_7DOMNodeE(ptr noundef nonnull %1) #7
  tail call void @_ZN11xercesc_2_711DOMNodeImpl12isFirstChildEb(ptr noundef nonnull align 8 dereferenceable(10) %89, i1 noundef zeroext false) #7
  %90 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L15castToChildImplEPKNS_7DOMNodeE(ptr noundef nonnull %1) #7
  %91 = getelementptr inbounds %"class.xercesc_2_7::DOMChildNode", ptr %90, i64 0, i32 1
  %92 = load ptr, ptr %91, align 8, !tbaa !90
  store ptr %92, ptr %85, align 8, !tbaa !66
  %93 = icmp eq ptr %92, null
  br i1 %93, label %114, label %94

94:                                               ; preds = %88
  %95 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L14castToNodeImplEPKNS_7DOMNodeE(ptr noundef nonnull %92) #7
  tail call void @_ZN11xercesc_2_711DOMNodeImpl12isFirstChildEb(ptr noundef nonnull align 8 dereferenceable(10) %95, i1 noundef zeroext true) #7
  %96 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L15castToChildImplEPKNS_7DOMNodeE(ptr noundef nonnull %1) #7
  %97 = load ptr, ptr %96, align 8, !tbaa !87
  %98 = load ptr, ptr %85, align 8, !tbaa !66
  %99 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L15castToChildImplEPKNS_7DOMNodeE(ptr noundef %98) #7
  store ptr %97, ptr %99, align 8, !tbaa !87
  br label %114

100:                                              ; preds = %84
  %101 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L15castToChildImplEPKNS_7DOMNodeE(ptr noundef nonnull %1) #7
  %102 = load ptr, ptr %101, align 8, !tbaa !87
  %103 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L15castToChildImplEPKNS_7DOMNodeE(ptr noundef nonnull %1) #7
  %104 = getelementptr inbounds %"class.xercesc_2_7::DOMChildNode", ptr %103, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !90
  %106 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L15castToChildImplEPKNS_7DOMNodeE(ptr noundef %102) #7
  %107 = getelementptr inbounds %"class.xercesc_2_7::DOMChildNode", ptr %106, i64 0, i32 1
  store ptr %105, ptr %107, align 8, !tbaa !90
  %108 = icmp eq ptr %105, null
  br i1 %108, label %109, label %112

109:                                              ; preds = %100
  %110 = load ptr, ptr %85, align 8, !tbaa !66
  %111 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L15castToChildImplEPKNS_7DOMNodeE(ptr noundef %110) #7
  store ptr %102, ptr %111, align 8, !tbaa !87
  br label %114

112:                                              ; preds = %100
  %113 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L15castToChildImplEPKNS_7DOMNodeE(ptr noundef nonnull %105) #7
  store ptr %102, ptr %113, align 8, !tbaa !87
  br label %114

114:                                              ; preds = %109, %112, %88, %94
  %115 = load ptr, ptr %0, align 8, !tbaa !59
  %116 = icmp eq ptr %115, null
  %117 = getelementptr inbounds i8, ptr %115, i64 24
  %118 = select i1 %116, ptr null, ptr %117
  %119 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L14castToNodeImplEPKNS_7DOMNodeE(ptr noundef nonnull %1) #7
  store ptr %118, ptr %119, align 8, !tbaa !83
  tail call void @_ZN11xercesc_2_711DOMNodeImpl7isOwnedEb(ptr noundef nonnull align 8 dereferenceable(10) %119, i1 noundef zeroext false) #7
  %120 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L15castToChildImplEPKNS_7DOMNodeE(ptr noundef nonnull %1) #7
  %121 = getelementptr inbounds %"class.xercesc_2_7::DOMChildNode", ptr %120, i64 0, i32 1
  store ptr null, ptr %121, align 8, !tbaa !90
  %122 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L15castToChildImplEPKNS_7DOMNodeE(ptr noundef nonnull %1) #7
  store ptr null, ptr %122, align 8, !tbaa !87
  tail call void @_ZN11xercesc_2_713DOMParentNode7changedEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #7
  ret ptr %1

123:                                              ; preds = %38, %16
  %124 = phi ptr [ %28, %38 ], [ %6, %16 ]
  %125 = phi { ptr, i32 } [ %39, %38 ], [ %17, %16 ]
  tail call void @__cxa_free_exception(ptr %124) #8
  resume { ptr, i32 } %125
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_19DOMNodeIteratorImplEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #5 comdat align 2 !prof !69 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !126
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_19DOMNodeIteratorImplEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !69 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !126
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #8
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !128
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 249, i32 noundef 116, ptr noundef %9) #7
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #9
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #8
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !129
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !77
  ret ptr %18
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_719DOMNodeIteratorImpl10removeNodeEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(57), ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712DOMRangeImpl25updateRangeForDeletedNodeEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_713DOMParentNode12replaceChildEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef returned %2) local_unnamed_addr #0 align 2 !prof !69 {
  %4 = tail call noundef ptr @_ZN11xercesc_2_713DOMParentNode12insertBeforeEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) #7
  %5 = tail call noundef ptr @_ZN11xercesc_2_713DOMParentNode11removeChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %2) #7
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_713DOMParentNode9normalizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 align 2 !prof !69 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMParentNode", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !66
  %4 = icmp eq ptr %3, null
  br i1 %4, label %45, label %5

5:                                                ; preds = %1, %42
  %6 = phi ptr [ %43, %42 ], [ %3, %1 ]
  %7 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L15castToChildImplEPKNS_7DOMNodeE(ptr noundef nonnull %6) #7
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMChildNode", ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !90
  %10 = icmp eq ptr %9, null
  br i1 %10, label %32, label %11

11:                                               ; preds = %5
  %12 = load ptr, ptr %6, align 8, !tbaa !71
  %13 = getelementptr inbounds ptr, ptr %12, i64 4
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef signext i16 %14(ptr noundef nonnull align 8 dereferenceable(8) %6) #7
  %16 = icmp eq i16 %15, 3
  br i1 %16, label %17, label %32

17:                                               ; preds = %11
  %18 = load ptr, ptr %9, align 8, !tbaa !71
  %19 = getelementptr inbounds ptr, ptr %18, i64 4
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef signext i16 %20(ptr noundef nonnull align 8 dereferenceable(8) %9) #7
  %22 = icmp eq i16 %21, 3
  br i1 %22, label %23, label %32

23:                                               ; preds = %17
  %24 = load ptr, ptr %9, align 8, !tbaa !71
  %25 = getelementptr inbounds ptr, ptr %24, i64 40
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(56) %9) #7
  %28 = load ptr, ptr %6, align 8, !tbaa !71
  %29 = getelementptr inbounds ptr, ptr %28, i64 43
  %30 = load ptr, ptr %29, align 8
  tail call void %30(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef %27) #7
  %31 = tail call noundef ptr @_ZN11xercesc_2_713DOMParentNode11removeChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %9) #7
  br label %42

32:                                               ; preds = %17, %11, %5
  %33 = load ptr, ptr %6, align 8, !tbaa !71
  %34 = getelementptr inbounds ptr, ptr %33, i64 4
  %35 = load ptr, ptr %34, align 8
  %36 = tail call noundef signext i16 %35(ptr noundef nonnull align 8 dereferenceable(8) %6) #7
  %37 = icmp eq i16 %36, 1
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load ptr, ptr %6, align 8, !tbaa !71
  %40 = getelementptr inbounds ptr, ptr %39, i64 20
  %41 = load ptr, ptr %40, align 8
  tail call void %41(ptr noundef nonnull align 8 dereferenceable(8) %6) #7
  br label %42

42:                                               ; preds = %23, %38, %32
  %43 = phi ptr [ %6, %23 ], [ %9, %38 ], [ %9, %32 ]
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %5, !llvm.loop !130

45:                                               ; preds = %42, %1
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_713DOMParentNode11isEqualNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #0 align 2 !prof !69 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %43, label %4

4:                                                ; preds = %2
  %5 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L14castToNodeImplEPKNS_13DOMParentNodeE(ptr noundef nonnull %0) #7
  %6 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl10isSameNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10) %5, ptr noundef nonnull %1) #7
  br i1 %6, label %43, label %7

7:                                                ; preds = %4
  %8 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl11isEqualNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10) %5, ptr noundef nonnull %1) #7
  br i1 %8, label %9, label %43

9:                                                ; preds = %7
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMParentNode", ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !66
  %12 = load ptr, ptr %1, align 8, !tbaa !71
  %13 = getelementptr inbounds ptr, ptr %12, i64 7
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  %16 = icmp ne ptr %11, null
  %17 = icmp ne ptr %15, null
  %18 = and i1 %16, %17
  br i1 %18, label %19, label %38

19:                                               ; preds = %9, %26
  %20 = phi ptr [ %34, %26 ], [ %15, %9 ]
  %21 = phi ptr [ %30, %26 ], [ %11, %9 ]
  %22 = load ptr, ptr %21, align 8, !tbaa !71
  %23 = getelementptr inbounds ptr, ptr %22, i64 28
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef zeroext i1 %24(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef nonnull %20) #7
  br i1 %25, label %26, label %43

26:                                               ; preds = %19
  %27 = load ptr, ptr %21, align 8, !tbaa !71
  %28 = getelementptr inbounds ptr, ptr %27, i64 10
  %29 = load ptr, ptr %28, align 8
  %30 = tail call noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(8) %21) #7
  %31 = load ptr, ptr %20, align 8, !tbaa !71
  %32 = getelementptr inbounds ptr, ptr %31, i64 10
  %33 = load ptr, ptr %32, align 8
  %34 = tail call noundef ptr %33(ptr noundef nonnull align 8 dereferenceable(8) %20) #7
  %35 = icmp ne ptr %30, null
  %36 = icmp ne ptr %34, null
  %37 = and i1 %35, %36
  br i1 %37, label %19, label %38, !llvm.loop !131

38:                                               ; preds = %26, %9
  %39 = phi i1 [ %16, %9 ], [ %35, %26 ]
  %40 = phi i1 [ %17, %9 ], [ %36, %26 ]
  %41 = or i1 %39, %40
  %42 = xor i1 %41, true
  br label %43

43:                                               ; preds = %19, %4, %7, %2, %38
  %44 = phi i1 [ true, %4 ], [ %42, %38 ], [ false, %2 ], [ false, %7 ], [ false, %19 ]
  ret i1 %44
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl10isSameNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl11isEqualNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_713DOMParentNode7releaseEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0) local_unnamed_addr #0 align 2 !prof !69 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMParentNode", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !66
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %9, %5 ], [ %3, %1 ]
  %7 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L15castToChildImplEPKNS_7DOMNodeE(ptr noundef nonnull %6) #7
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMChildNode", ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !90
  %10 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L14castToNodeImplEPKNS_7DOMNodeE(ptr noundef nonnull %6) #7
  tail call void @_ZN11xercesc_2_711DOMNodeImpl14isToBeReleasedEb(ptr noundef nonnull align 8 dereferenceable(10) %10, i1 noundef zeroext true) #7
  %11 = load ptr, ptr %6, align 8, !tbaa !71
  %12 = getelementptr inbounds ptr, ptr %11, i64 39
  %13 = load ptr, ptr %12, align 8
  tail call void %13(ptr noundef nonnull align 8 dereferenceable(8) %6) #7
  %14 = icmp eq ptr %9, null
  br i1 %14, label %15, label %5, !llvm.loop !132

15:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711DOMNodeImpl14isToBeReleasedEb(ptr noundef nonnull align 8 dereferenceable(10) %0, i1 noundef zeroext %1) local_unnamed_addr #5 comdat align 2 !prof !69 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %0, i64 0, i32 1
  %4 = load i16, ptr %3, align 8, !tbaa !113
  %5 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl12TOBERELEASEDE, align 2, !tbaa !114
  %6 = or i16 %5, %4
  %7 = xor i16 %5, -1
  %8 = and i16 %4, %7
  %9 = select i1 %1, i16 %6, i16 %8
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %0, i64 0, i32 1
  store i16 %9, ptr %10, align 8, !tbaa !113
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl10isLeafNodeEv(ptr noundef nonnull align 8 dereferenceable(10) %0) local_unnamed_addr #5 comdat align 2 !prof !133 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %0, i64 0, i32 1
  %3 = load i16, ptr %2, align 8, !tbaa !113
  %4 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl12LEAFNODETYPEE, align 2, !tbaa !114
  %5 = and i16 %4, %3
  %6 = icmp ne i16 %5, 0
  ret i1 %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !69 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #7
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !71
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #7
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #10
  resume { ptr, i32 } %8
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #6

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #10
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !69 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !69 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !134
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #7
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #7
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #10
  resume { ptr, i32 } %7
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 comdat align 2 !prof !69 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #7
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !71
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #2

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { optsize }
attributes #8 = { nounwind }
attributes #9 = { noreturn }
attributes #10 = { nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!57}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56}
!35 = !{ptr @_ZN11xercesc_2_713DOMParentNodeC2EPNS_11DOMDocumentE, ptr @_ZN11xercesc_2_7L10castToNodeEPKNS_13DOMParentNodeE, i64 1201}
!36 = !{ptr @_ZN11xercesc_2_713DOMParentNodeC2EPNS_11DOMDocumentE, ptr @_ZN11xercesc_2_715DOMNodeListImplC1EPNS_7DOMNodeE, i64 1201}
!37 = !{ptr @_ZN11xercesc_2_713DOMParentNode7changedEv, ptr @_ZNK11xercesc_2_713DOMParentNode16getOwnerDocumentEv, i64 1850}
!38 = !{ptr @_ZN11xercesc_2_713DOMParentNode11appendChildEPNS_7DOMNodeE, ptr @_ZN11xercesc_2_713DOMParentNode12insertBeforeEPNS_7DOMNodeES2_, i64 1199}
!39 = !{ptr @_ZN11xercesc_2_713DOMParentNode12insertBeforeEPNS_7DOMNodeES2_, ptr @__cxa_allocate_exception, i64 4}
!40 = !{ptr @_ZN11xercesc_2_713DOMParentNode12insertBeforeEPNS_7DOMNodeES2_, ptr @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE, i64 4}
!41 = !{ptr @_ZN11xercesc_2_713DOMParentNode12insertBeforeEPNS_7DOMNodeES2_, ptr @_ZN11xercesc_2_7L14castToNodeImplEPKNS_13DOMParentNodeE, i64 1199}
!42 = !{ptr @_ZN11xercesc_2_713DOMParentNode12insertBeforeEPNS_7DOMNodeES2_, ptr @_ZNK11xercesc_2_711DOMNodeImpl10isReadOnlyEv, i64 1199}
!43 = !{ptr @_ZN11xercesc_2_713DOMParentNode12insertBeforeEPNS_7DOMNodeES2_, ptr @_ZN11xercesc_2_7L10castToNodeEPKNS_13DOMParentNodeE, i64 1199}
!44 = !{ptr @_ZN11xercesc_2_713DOMParentNode12insertBeforeEPNS_7DOMNodeES2_, ptr @_ZN11xercesc_2_715DOMDocumentImpl7isKidOKEPNS_7DOMNodeES2_, i64 1216}
!45 = !{ptr @_ZN11xercesc_2_713DOMParentNode12insertBeforeEPNS_7DOMNodeES2_, ptr @_ZN11xercesc_2_713DOMParentNode12insertBeforeEPNS_7DOMNodeES2_, i64 16}
!46 = !{ptr @_ZN11xercesc_2_713DOMParentNode12insertBeforeEPNS_7DOMNodeES2_, ptr @_ZN11xercesc_2_7L14castToNodeImplEPKNS_7DOMNodeE, i64 1195}
!47 = !{ptr @_ZN11xercesc_2_713DOMParentNode12insertBeforeEPNS_7DOMNodeES2_, ptr @_ZN11xercesc_2_711DOMNodeImpl7isOwnedEb, i64 1195}
!48 = !{ptr @_ZN11xercesc_2_713DOMParentNode12insertBeforeEPNS_7DOMNodeES2_, ptr @_ZN11xercesc_2_711DOMNodeImpl12isFirstChildEb, i64 765}
!49 = !{ptr @_ZN11xercesc_2_713DOMParentNode12insertBeforeEPNS_7DOMNodeES2_, ptr @_ZN11xercesc_2_7L15castToChildImplEPKNS_7DOMNodeE, i64 2482}
!50 = !{ptr @_ZN11xercesc_2_713DOMParentNode12insertBeforeEPNS_7DOMNodeES2_, ptr @_ZN11xercesc_2_713DOMParentNode7changedEv, i64 1196}
!51 = !{ptr @_ZN11xercesc_2_713DOMParentNode12insertBeforeEPNS_7DOMNodeES2_, ptr @_ZNK11xercesc_2_713DOMParentNode16getOwnerDocumentEv, i64 1196}
!52 = !{ptr @_ZN11xercesc_2_713DOMParentNode12insertBeforeEPNS_7DOMNodeES2_, ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEE4sizeEv, i64 1}
!53 = !{ptr @_ZN11xercesc_2_713DOMParentNode12insertBeforeEPNS_7DOMNodeES2_, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEE9elementAtEj, i64 20}
!54 = !{ptr @_ZN11xercesc_2_713DOMParentNode12insertBeforeEPNS_7DOMNodeES2_, ptr @_ZN11xercesc_2_712DOMRangeImpl26updateRangeForInsertedNodeEPNS_7DOMNodeE, i64 20}
!55 = !{ptr @_ZN11xercesc_2_713DOMParentNode12insertBeforeEPNS_7DOMNodeES2_, ptr @__cxa_free_exception, i64 2}
!56 = !{ptr @_ZN11xercesc_2_7L15castToChildImplEPKNS_7DOMNodeE, ptr @_ZNK11xercesc_2_711DOMNodeImpl10isLeafNodeEv, i64 2493}
!57 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!58 = !{!"function_entry_count", i64 1201}
!59 = !{!60, !61, i64 0}
!60 = !{!"_ZTSN11xercesc_2_713DOMParentNodeE", !61, i64 0, !61, i64 8, !64, i64 16}
!61 = !{!"any pointer", !62, i64 0}
!62 = !{!"omnipotent char", !63, i64 0}
!63 = !{!"Simple C++ TBAA"}
!64 = !{!"_ZTSN11xercesc_2_715DOMNodeListImplE", !65, i64 0, !61, i64 8}
!65 = !{!"_ZTSN11xercesc_2_711DOMNodeListE"}
!66 = !{!60, !61, i64 8}
!67 = !{!"function_entry_count", i64 3601}
!68 = !{!"DOMParentNode.cpp:_ZN11xercesc_2_7L10castToNodeEPKNS_13DOMParentNodeE"}
!69 = !{!"function_entry_count", i64 0}
!70 = !{!"function_entry_count", i64 1850}
!71 = !{!72, !72, i64 0}
!72 = !{!"vtable pointer", !63, i64 0}
!73 = !{!"function_entry_count", i64 4250}
!74 = !{!"function_entry_count", i64 1199}
!75 = !{!"function_entry_count", i64 1200}
!76 = !{!"branch_weights", i32 1, i32 1201}
!77 = !{!61, !61, i64 0}
!78 = !{!"branch_weights", i32 1201, i32 1}
!79 = distinct !{!79, !80}
!80 = !{!"llvm.loop.mustprogress"}
!81 = distinct !{!81, !80}
!82 = distinct !{!82, !80}
!83 = !{!84, !61, i64 0}
!84 = !{!"_ZTSN11xercesc_2_711DOMNodeImplE", !61, i64 0, !85, i64 8}
!85 = !{!"short", !62, i64 0}
!86 = !{!"branch_weights", i32 770, i32 432}
!87 = !{!88, !61, i64 0}
!88 = !{!"_ZTSN11xercesc_2_712DOMChildNodeE", !61, i64 0, !61, i64 8}
!89 = !{!"branch_weights", i32 432, i32 1}
!90 = !{!88, !61, i64 8}
!91 = distinct !{!91, !80}
!92 = distinct !{!92, !80}
!93 = !{!"function_entry_count", i64 719}
!94 = !{!"function_entry_count", i64 2493}
!95 = !{!"DOMParentNode.cpp:_ZN11xercesc_2_7L15castToChildImplEPKNS_7DOMNodeE"}
!96 = !{!"branch_weights", i32 651, i32 1844}
!97 = !{!"function_entry_count", i64 550}
!98 = !{!"function_entry_count", i64 2954}
!99 = !{!100, !61, i64 280}
!100 = !{!"_ZTSN11xercesc_2_715DOMDocumentImplE", !101, i64 0, !84, i64 32, !60, i64 48, !61, i64 80, !61, i64 88, !61, i64 96, !106, i64 104, !61, i64 112, !61, i64 120, !61, i64 128, !107, i64 136, !61, i64 176, !61, i64 184, !61, i64 192, !110, i64 200, !61, i64 208, !61, i64 216, !61, i64 224, !61, i64 232, !61, i64 240, !61, i64 248, !61, i64 256, !61, i64 264, !61, i64 272, !61, i64 280, !109, i64 288, !106, i64 292}
!101 = !{!"_ZTSN11xercesc_2_711DOMDocumentE", !102, i64 0, !103, i64 8, !104, i64 16, !105, i64 24}
!102 = !{!"_ZTSN11xercesc_2_716DOMDocumentRangeE"}
!103 = !{!"_ZTSN11xercesc_2_717DOMXPathEvaluatorE"}
!104 = !{!"_ZTSN11xercesc_2_720DOMDocumentTraversalE"}
!105 = !{!"_ZTSN11xercesc_2_77DOMNodeE"}
!106 = !{!"bool", !62, i64 0}
!107 = !{!"_ZTSN11xercesc_2_713XMLStringPoolE", !108, i64 0, !61, i64 8, !61, i64 16, !61, i64 24, !109, i64 32, !109, i64 36}
!108 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!109 = !{!"int", !62, i64 0}
!110 = !{!"long", !62, i64 0}
!111 = !{!"DOMParentNode.cpp:_ZN11xercesc_2_7L14castToNodeImplEPKNS_13DOMParentNodeE"}
!112 = !{!"function_entry_count", i64 3150}
!113 = !{!84, !85, i64 8}
!114 = !{!85, !85, i64 0}
!115 = !{!"function_entry_count", i64 3169}
!116 = !{!"DOMParentNode.cpp:_ZN11xercesc_2_7L14castToNodeImplEPKNS_7DOMNodeE"}
!117 = !{!"branch_weights", i32 1851, i32 1}
!118 = !{!"function_entry_count", i64 769}
!119 = !{!"branch_weights", i32 770, i32 1}
!120 = !{!121, !109, i64 12}
!121 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEEE", !106, i64 8, !109, i64 12, !109, i64 16, !61, i64 24, !61, i64 32}
!122 = !{!121, !61, i64 32}
!123 = !{!121, !61, i64 24}
!124 = distinct !{!124, !80}
!125 = distinct !{!125, !80}
!126 = !{!127, !109, i64 12}
!127 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_19DOMNodeIteratorImplEEE", !106, i64 8, !109, i64 12, !109, i64 16, !61, i64 24, !61, i64 32}
!128 = !{!127, !61, i64 32}
!129 = !{!127, !61, i64 24}
!130 = distinct !{!130, !80}
!131 = distinct !{!131, !80}
!132 = distinct !{!132, !80}
!133 = !{!"function_entry_count", i64 8433}
!134 = !{!135, !61, i64 40}
!135 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !136, i64 8, !61, i64 16, !109, i64 24, !61, i64 32, !61, i64 40}
!136 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !62, i64 0}
