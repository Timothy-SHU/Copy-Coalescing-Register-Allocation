; ModuleID = 'DOMParentNode.cpp'
source_filename = "DOMParentNode.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::DOMParentNode" = type { ptr, ptr, %"class.xercesc_2_7::DOMNodeListImpl" }
%"class.xercesc_2_7::DOMNodeListImpl" = type { %"class.xercesc_2_7::DOMNodeList", ptr }
%"class.xercesc_2_7::DOMNodeList" = type { ptr }
%"class.xercesc_2_7::DOMDocumentImpl" = type <{ %"class.xercesc_2_7::DOMDocument", %"class.xercesc_2_7::DOMNodeImpl", %"class.xercesc_2_7::DOMParentNode", ptr, ptr, ptr, i8, [7 x i8], ptr, ptr, ptr, %"class.xercesc_2_7::XMLStringPool", ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, [3 x i8] }>
%"class.xercesc_2_7::DOMDocument" = type { %"class.xercesc_2_7::DOMDocumentRange", %"class.xercesc_2_7::DOMXPathEvaluator", %"class.xercesc_2_7::DOMDocumentTraversal", %"class.xercesc_2_7::DOMNode" }
%"class.xercesc_2_7::DOMDocumentRange" = type { ptr }
%"class.xercesc_2_7::DOMXPathEvaluator" = type { ptr }
%"class.xercesc_2_7::DOMDocumentTraversal" = type { ptr }
%"class.xercesc_2_7::DOMNode" = type { ptr }
%"class.xercesc_2_7::DOMNodeImpl" = type <{ ptr, i16, [6 x i8] }>
%"class.xercesc_2_7::XMLStringPool" = type { %"class.xercesc_2_7::XSerializable", ptr, ptr, ptr, i32, i32 }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::DOMElementImpl" = type { %"class.xercesc_2_7::DOMElement", %"class.xercesc_2_7::DOMNodeImpl", %"class.xercesc_2_7::DOMParentNode", %"class.xercesc_2_7::DOMChildNode", ptr, ptr, ptr }
%"class.xercesc_2_7::DOMElement" = type { %"class.xercesc_2_7::DOMNode" }
%"class.xercesc_2_7::DOMChildNode" = type { ptr, ptr }
%"class.xercesc_2_7::DOMTextImpl" = type { %"class.xercesc_2_7::DOMText", %"class.xercesc_2_7::DOMNodeImpl", %"class.xercesc_2_7::DOMChildNode", %"class.xercesc_2_7::DOMCharacterDataImpl" }
%"class.xercesc_2_7::DOMText" = type { %"class.xercesc_2_7::DOMCharacterData" }
%"class.xercesc_2_7::DOMCharacterData" = type { %"class.xercesc_2_7::DOMNode" }
%"class.xercesc_2_7::DOMCharacterDataImpl" = type { ptr, ptr }
%"class.xercesc_2_7::BaseRefVectorOf" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::BaseRefVectorOf.1" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$_ZN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEE9elementAtEj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_19DOMNodeIteratorImplEE9elementAtEj = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv = comdat any

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

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xercesc_2_713DOMParentNodeC2EPNS_11DOMDocumentE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !39 {
  store ptr %1, ptr %0, align 8, !tbaa !40
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMParentNode", ptr %0, i64 0, i32 1
  store ptr null, ptr %3, align 8, !tbaa !47
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMParentNode", ptr %0, i64 0, i32 2
  %5 = getelementptr inbounds i8, ptr %0, i64 -24
  tail call void @_ZN11xercesc_2_715DOMNodeListImplC1EPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %5)
  ret void
}

declare void @_ZN11xercesc_2_715DOMNodeListImplC1EPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_713DOMParentNodeC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %1) unnamed_addr #2 align 2 !prof !48 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMParentNode", ptr %0, i64 0, i32 2
  %4 = getelementptr inbounds i8, ptr %0, i64 -24
  tail call void @_ZN11xercesc_2_715DOMNodeListImplC1EPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %4)
  %5 = load ptr, ptr %1, align 8, !tbaa !40
  store ptr %5, ptr %0, align 8, !tbaa !40
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMParentNode", ptr %0, i64 0, i32 1
  store ptr null, ptr %6, align 8, !tbaa !47
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xercesc_2_713DOMParentNode7changedEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0) local_unnamed_addr #0 align 2 !prof !49 {
  %2 = load ptr, ptr %0, align 8, !tbaa !40
  %3 = load ptr, ptr %2, align 8, !tbaa !50
  %4 = getelementptr inbounds ptr, ptr %3, i64 89
  %5 = load ptr, ptr %4, align 8
  tail call void %5(ptr noundef nonnull align 8 dereferenceable(293) %2), !prof !52
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_713DOMParentNode16getOwnerDocumentEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0) local_unnamed_addr #3 align 2 !prof !48 {
  %2 = load ptr, ptr %0, align 8, !tbaa !40
  ret ptr %2
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_713DOMParentNode7changesEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0) local_unnamed_addr #2 align 2 !prof !48 {
  %2 = load ptr, ptr %0, align 8, !tbaa !40
  %3 = load ptr, ptr %2, align 8, !tbaa !50
  %4 = getelementptr inbounds ptr, ptr %3, i64 90
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef i32 %5(ptr noundef nonnull align 8 dereferenceable(293) %2)
  ret i32 %6
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_713DOMParentNode11appendChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef returned %1) local_unnamed_addr #0 align 2 !prof !53 {
  %3 = tail call noundef ptr @_ZN11xercesc_2_713DOMParentNode12insertBeforeEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef null)
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_713DOMParentNode12insertBeforeEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef returned %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !54 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %5, label %15, !prof !55

5:                                                ; preds = %3
  %6 = tail call ptr @__cxa_allocate_exception(i64 40) #12
  %7 = load ptr, ptr %0, align 8, !tbaa !40
  %8 = icmp eq ptr %7, null
  %9 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %7, i64 0, i32 25
  %10 = select i1 %8, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, ptr %9
  %11 = load ptr, ptr %10, align 8, !tbaa !56
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %6, i16 noundef signext 3, ptr noundef null, ptr noundef %11)
          to label %12 unwind label %13

12:                                               ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #13
  unreachable

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          cleanup
  br label %290

15:                                               ; preds = %3
  %16 = getelementptr inbounds i8, ptr %0, i64 -8
  %17 = load i16, ptr %16, align 8, !tbaa !57
  %18 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl8READONLYE, align 2, !tbaa !60
  %19 = and i16 %18, %17
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %31, label %21, !prof !61

21:                                               ; preds = %15
  %22 = tail call ptr @__cxa_allocate_exception(i64 40) #12
  %23 = load ptr, ptr %0, align 8, !tbaa !40
  %24 = icmp eq ptr %23, null
  %25 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %23, i64 0, i32 25
  %26 = select i1 %24, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, ptr %25
  %27 = load ptr, ptr %26, align 8, !tbaa !56
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %22, i16 noundef signext 7, ptr noundef null, ptr noundef %27)
          to label %28 unwind label %29

28:                                               ; preds = %21
  tail call void @__cxa_throw(ptr nonnull %22, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #13
  unreachable

29:                                               ; preds = %21
  %30 = landingpad { ptr, i32 }
          cleanup
  br label %290

31:                                               ; preds = %15
  %32 = load ptr, ptr %1, align 8, !tbaa !50
  %33 = getelementptr inbounds ptr, ptr %32, i64 12
  %34 = load ptr, ptr %33, align 8
  %35 = tail call noundef ptr %34(ptr noundef nonnull align 8 dereferenceable(8) %1), !prof !62
  %36 = load ptr, ptr %0, align 8, !tbaa !40
  %37 = icmp eq ptr %35, %36
  br i1 %37, label %48, label %38, !prof !61

38:                                               ; preds = %31
  %39 = tail call ptr @__cxa_allocate_exception(i64 40) #12
  %40 = load ptr, ptr %0, align 8, !tbaa !40
  %41 = icmp eq ptr %40, null
  %42 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %40, i64 0, i32 25
  %43 = select i1 %41, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, ptr %42
  %44 = load ptr, ptr %43, align 8, !tbaa !56
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %39, i16 noundef signext 4, ptr noundef null, ptr noundef %44)
          to label %45 unwind label %46

45:                                               ; preds = %38
  tail call void @__cxa_throw(ptr nonnull %39, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #13
  unreachable

46:                                               ; preds = %38
  %47 = landingpad { ptr, i32 }
          cleanup
  br label %290

48:                                               ; preds = %31
  %49 = load ptr, ptr %1, align 8, !tbaa !50
  %50 = getelementptr inbounds ptr, ptr %49, i64 18
  %51 = load ptr, ptr %50, align 8
  %52 = tail call noundef zeroext i1 %51(ptr noundef nonnull align 8 dereferenceable(8) %1), !prof !63
  br i1 %52, label %53, label %80, !prof !55

53:                                               ; preds = %48
  %54 = getelementptr inbounds i8, ptr %0, i64 -24
  %55 = load ptr, ptr %54, align 8, !tbaa !50
  %56 = getelementptr inbounds ptr, ptr %55, i64 5
  %57 = load ptr, ptr %56, align 8
  %58 = tail call noundef ptr %57(ptr noundef nonnull align 8 dereferenceable(8) %54)
  %59 = icmp eq ptr %58, null
  br i1 %59, label %80, label %61

60:                                               ; preds = %61
  br i1 %63, label %80, label %70

61:                                               ; preds = %53, %61
  %62 = phi ptr [ %67, %61 ], [ %58, %53 ]
  %63 = icmp ne ptr %62, %1
  %64 = load ptr, ptr %62, align 8, !tbaa !50
  %65 = getelementptr inbounds ptr, ptr %64, i64 5
  %66 = load ptr, ptr %65, align 8
  %67 = tail call noundef ptr %66(ptr noundef nonnull align 8 dereferenceable(8) %62)
  %68 = icmp ne ptr %67, null
  %69 = and i1 %63, %68
  br i1 %69, label %61, label %60, !llvm.loop !64

70:                                               ; preds = %60
  %71 = tail call ptr @__cxa_allocate_exception(i64 40) #12
  %72 = load ptr, ptr %0, align 8, !tbaa !40
  %73 = icmp eq ptr %72, null
  %74 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %72, i64 0, i32 25
  %75 = select i1 %73, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, ptr %74
  %76 = load ptr, ptr %75, align 8, !tbaa !56
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %71, i16 noundef signext 3, ptr noundef null, ptr noundef %76)
          to label %77 unwind label %78

77:                                               ; preds = %70
  tail call void @__cxa_throw(ptr nonnull %71, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #13
  unreachable

78:                                               ; preds = %70
  %79 = landingpad { ptr, i32 }
          cleanup
  br label %290

80:                                               ; preds = %53, %60, %48
  %81 = icmp eq ptr %2, null
  br i1 %81, label %104, label %82, !prof !61

82:                                               ; preds = %80
  %83 = load ptr, ptr %2, align 8, !tbaa !50
  %84 = getelementptr inbounds ptr, ptr %83, i64 5
  %85 = load ptr, ptr %84, align 8
  %86 = tail call noundef ptr %85(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %87 = getelementptr inbounds i8, ptr %0, i64 -24
  %88 = icmp eq ptr %86, %87
  br i1 %88, label %99, label %89

89:                                               ; preds = %82
  %90 = tail call ptr @__cxa_allocate_exception(i64 40) #12
  %91 = load ptr, ptr %0, align 8, !tbaa !40
  %92 = icmp eq ptr %91, null
  %93 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %91, i64 0, i32 25
  %94 = select i1 %92, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, ptr %93
  %95 = load ptr, ptr %94, align 8, !tbaa !56
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %90, i16 noundef signext 8, ptr noundef null, ptr noundef %95)
          to label %96 unwind label %97

96:                                               ; preds = %89
  tail call void @__cxa_throw(ptr nonnull %90, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #13
  unreachable

97:                                               ; preds = %89
  %98 = landingpad { ptr, i32 }
          cleanup
  br label %290

99:                                               ; preds = %82
  %100 = load ptr, ptr %1, align 8, !tbaa !50
  %101 = getelementptr inbounds ptr, ptr %100, i64 27
  %102 = load ptr, ptr %101, align 8
  %103 = tail call noundef zeroext i1 %102(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %2)
  br i1 %103, label %289, label %104

104:                                              ; preds = %80, %99
  %105 = load ptr, ptr %1, align 8, !tbaa !50
  %106 = getelementptr inbounds ptr, ptr %105, i64 4
  %107 = load ptr, ptr %106, align 8
  %108 = tail call noundef signext i16 %107(ptr noundef nonnull align 8 dereferenceable(8) %1), !prof !67
  %109 = icmp eq i16 %108, 11
  br i1 %109, label %110, label %152, !prof !55

110:                                              ; preds = %104
  %111 = load ptr, ptr %1, align 8, !tbaa !50
  %112 = getelementptr inbounds ptr, ptr %111, i64 7
  %113 = load ptr, ptr %112, align 8
  %114 = tail call noundef ptr %113(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %115 = icmp eq ptr %114, null
  br i1 %115, label %118, label %116

116:                                              ; preds = %110
  %117 = getelementptr inbounds i8, ptr %0, i64 -24
  br label %123

118:                                              ; preds = %136, %110
  %119 = load ptr, ptr %1, align 8, !tbaa !50
  %120 = getelementptr inbounds ptr, ptr %119, i64 18
  %121 = load ptr, ptr %120, align 8
  %122 = tail call noundef zeroext i1 %121(ptr noundef nonnull align 8 dereferenceable(8) %1)
  br i1 %122, label %142, label %265

123:                                              ; preds = %116, %136
  %124 = phi ptr [ %114, %116 ], [ %140, %136 ]
  %125 = tail call noundef zeroext i1 @_ZN11xercesc_2_715DOMDocumentImpl7isKidOKEPNS_7DOMNodeES2_(ptr noundef nonnull %117, ptr noundef nonnull %124)
  br i1 %125, label %136, label %126

126:                                              ; preds = %123
  %127 = tail call ptr @__cxa_allocate_exception(i64 40) #12
  %128 = load ptr, ptr %0, align 8, !tbaa !40
  %129 = icmp eq ptr %128, null
  %130 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %128, i64 0, i32 25
  %131 = select i1 %129, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, ptr %130
  %132 = load ptr, ptr %131, align 8, !tbaa !56
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %127, i16 noundef signext 3, ptr noundef null, ptr noundef %132)
          to label %133 unwind label %134

133:                                              ; preds = %126
  tail call void @__cxa_throw(ptr nonnull %127, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #13
  unreachable

134:                                              ; preds = %126
  %135 = landingpad { ptr, i32 }
          cleanup
  br label %290

136:                                              ; preds = %123
  %137 = load ptr, ptr %124, align 8, !tbaa !50
  %138 = getelementptr inbounds ptr, ptr %137, i64 10
  %139 = load ptr, ptr %138, align 8
  %140 = tail call noundef ptr %139(ptr noundef nonnull align 8 dereferenceable(8) %124)
  %141 = icmp eq ptr %140, null
  br i1 %141, label %118, label %123, !llvm.loop !68

142:                                              ; preds = %118, %142
  %143 = load ptr, ptr %1, align 8, !tbaa !50
  %144 = getelementptr inbounds ptr, ptr %143, i64 7
  %145 = load ptr, ptr %144, align 8
  %146 = tail call noundef ptr %145(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %147 = tail call noundef ptr @_ZN11xercesc_2_713DOMParentNode12insertBeforeEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %146, ptr noundef %2)
  %148 = load ptr, ptr %1, align 8, !tbaa !50
  %149 = getelementptr inbounds ptr, ptr %148, i64 18
  %150 = load ptr, ptr %149, align 8
  %151 = tail call noundef zeroext i1 %150(ptr noundef nonnull align 8 dereferenceable(8) %1)
  br i1 %151, label %142, label %265, !llvm.loop !69

152:                                              ; preds = %104
  %153 = getelementptr inbounds i8, ptr %0, i64 -24
  %154 = tail call noundef zeroext i1 @_ZN11xercesc_2_715DOMDocumentImpl7isKidOKEPNS_7DOMNodeES2_(ptr noundef nonnull %153, ptr noundef nonnull %1)
  br i1 %154, label %165, label %155, !prof !61

155:                                              ; preds = %152
  %156 = tail call ptr @__cxa_allocate_exception(i64 40) #12
  %157 = load ptr, ptr %0, align 8, !tbaa !40
  %158 = icmp eq ptr %157, null
  %159 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %157, i64 0, i32 25
  %160 = select i1 %158, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, ptr %159
  %161 = load ptr, ptr %160, align 8, !tbaa !56
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %156, i16 noundef signext 3, ptr noundef null, ptr noundef %161)
          to label %162 unwind label %163

162:                                              ; preds = %155
  tail call void @__cxa_throw(ptr nonnull %156, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #13
  unreachable

163:                                              ; preds = %155
  %164 = landingpad { ptr, i32 }
          cleanup
  br label %290

165:                                              ; preds = %152
  %166 = load ptr, ptr %1, align 8, !tbaa !50
  %167 = getelementptr inbounds ptr, ptr %166, i64 5
  %168 = load ptr, ptr %167, align 8
  %169 = tail call noundef ptr %168(ptr noundef nonnull align 8 dereferenceable(8) %1), !prof !70
  %170 = icmp eq ptr %169, null
  br i1 %170, label %176, label %171, !prof !61

171:                                              ; preds = %165
  %172 = load ptr, ptr %169, align 8, !tbaa !50
  %173 = getelementptr inbounds ptr, ptr %172, i64 16
  %174 = load ptr, ptr %173, align 8
  %175 = tail call noundef ptr %174(ptr noundef nonnull align 8 dereferenceable(8) %169, ptr noundef nonnull %1)
  br label %176

176:                                              ; preds = %171, %165
  %177 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %1, i64 0, i32 1
  store ptr %153, ptr %177, align 8, !tbaa !71
  %178 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %1, i64 0, i32 1, i32 1
  %179 = load i16, ptr %178, align 8, !tbaa !57
  %180 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl5OWNEDE, align 2, !tbaa !60
  %181 = or i16 %180, %179
  store i16 %181, ptr %178, align 8, !tbaa !57
  %182 = getelementptr inbounds %"class.xercesc_2_7::DOMParentNode", ptr %0, i64 0, i32 1
  %183 = load ptr, ptr %182, align 8, !tbaa !47
  %184 = icmp eq ptr %183, null
  br i1 %184, label %185, label %194, !prof !72

185:                                              ; preds = %176
  store ptr %1, ptr %182, align 8, !tbaa !47
  %186 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl10FIRSTCHILDE, align 2, !tbaa !60
  %187 = or i16 %186, %181
  store i16 %187, ptr %178, align 8, !tbaa !57
  %188 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl12LEAFNODETYPEE, align 2, !tbaa !60
  %189 = and i16 %188, %187
  %190 = icmp eq i16 %189, 0
  %191 = getelementptr inbounds %"class.xercesc_2_7::DOMTextImpl", ptr %1, i64 0, i32 2
  %192 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %1, i64 0, i32 3
  %193 = select i1 %190, ptr %192, ptr %191, !prof !73
  store ptr %1, ptr %193, align 8, !tbaa !74
  br label %265

194:                                              ; preds = %176
  br i1 %81, label %195, label %218, !prof !76

195:                                              ; preds = %194
  %196 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %183, i64 0, i32 1, i32 1
  %197 = load i16, ptr %196, align 8, !tbaa !57
  %198 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl12LEAFNODETYPEE, align 2, !tbaa !60
  %199 = and i16 %198, %197
  %200 = icmp eq i16 %199, 0
  %201 = getelementptr inbounds %"class.xercesc_2_7::DOMTextImpl", ptr %183, i64 0, i32 2
  %202 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %183, i64 0, i32 3
  %203 = select i1 %200, ptr %202, ptr %201, !prof !76
  %204 = load ptr, ptr %203, align 8, !tbaa !74
  %205 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %204, i64 0, i32 1, i32 1
  %206 = load i16, ptr %205, align 8, !tbaa !57
  %207 = and i16 %206, %198
  %208 = icmp eq i16 %207, 0
  %209 = getelementptr inbounds %"class.xercesc_2_7::DOMTextImpl", ptr %204, i64 0, i32 2
  %210 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %204, i64 0, i32 3
  %211 = select i1 %208, ptr %210, ptr %209, !prof !76
  %212 = getelementptr inbounds %"class.xercesc_2_7::DOMChildNode", ptr %211, i64 0, i32 1
  store ptr %1, ptr %212, align 8, !tbaa !77
  %213 = and i16 %198, %181
  %214 = icmp eq i16 %213, 0
  %215 = getelementptr inbounds %"class.xercesc_2_7::DOMTextImpl", ptr %1, i64 0, i32 2
  %216 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %1, i64 0, i32 3
  %217 = select i1 %214, ptr %216, ptr %215, !prof !76
  store ptr %204, ptr %217, align 8, !tbaa !74
  store ptr %1, ptr %203, align 8, !tbaa !74
  br label %265

218:                                              ; preds = %194
  %219 = icmp eq ptr %183, %2
  br i1 %219, label %220, label %241

220:                                              ; preds = %218
  %221 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %183, i64 0, i32 1, i32 1
  %222 = load i16, ptr %221, align 8, !tbaa !57
  %223 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl10FIRSTCHILDE, align 2, !tbaa !60
  %224 = xor i16 %223, -1
  %225 = and i16 %222, %224
  store i16 %225, ptr %221, align 8, !tbaa !57
  %226 = load i16, ptr %178, align 8, !tbaa !57
  %227 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl12LEAFNODETYPEE, align 2, !tbaa !60
  %228 = and i16 %227, %226
  %229 = icmp eq i16 %228, 0
  %230 = getelementptr inbounds %"class.xercesc_2_7::DOMTextImpl", ptr %1, i64 0, i32 2
  %231 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %1, i64 0, i32 3
  %232 = select i1 %229, ptr %231, ptr %230
  %233 = getelementptr inbounds %"class.xercesc_2_7::DOMChildNode", ptr %232, i64 0, i32 1
  store ptr %183, ptr %233, align 8, !tbaa !77
  %234 = and i16 %227, %225
  %235 = icmp eq i16 %234, 0
  %236 = getelementptr inbounds %"class.xercesc_2_7::DOMTextImpl", ptr %183, i64 0, i32 2
  %237 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %183, i64 0, i32 3
  %238 = select i1 %235, ptr %237, ptr %236
  %239 = load ptr, ptr %238, align 8, !tbaa !74
  store ptr %239, ptr %232, align 8, !tbaa !74
  store ptr %1, ptr %238, align 8, !tbaa !74
  store ptr %1, ptr %182, align 8, !tbaa !47
  %240 = or i16 %226, %223
  store i16 %240, ptr %178, align 8, !tbaa !57
  br label %265

241:                                              ; preds = %218
  %242 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %2, i64 0, i32 1, i32 1
  %243 = load i16, ptr %242, align 8, !tbaa !57
  %244 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl12LEAFNODETYPEE, align 2, !tbaa !60
  %245 = and i16 %244, %243
  %246 = icmp eq i16 %245, 0
  %247 = getelementptr inbounds %"class.xercesc_2_7::DOMTextImpl", ptr %2, i64 0, i32 2
  %248 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %2, i64 0, i32 3
  %249 = select i1 %246, ptr %248, ptr %247
  %250 = load ptr, ptr %249, align 8, !tbaa !74
  %251 = and i16 %244, %181
  %252 = icmp eq i16 %251, 0
  %253 = getelementptr inbounds %"class.xercesc_2_7::DOMTextImpl", ptr %1, i64 0, i32 2
  %254 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %1, i64 0, i32 3
  %255 = select i1 %252, ptr %254, ptr %253
  %256 = getelementptr inbounds %"class.xercesc_2_7::DOMChildNode", ptr %255, i64 0, i32 1
  store ptr %2, ptr %256, align 8, !tbaa !77
  %257 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %250, i64 0, i32 1, i32 1
  %258 = load i16, ptr %257, align 8, !tbaa !57
  %259 = and i16 %258, %244
  %260 = icmp eq i16 %259, 0
  %261 = getelementptr inbounds %"class.xercesc_2_7::DOMTextImpl", ptr %250, i64 0, i32 2
  %262 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %250, i64 0, i32 3
  %263 = select i1 %260, ptr %262, ptr %261
  %264 = getelementptr inbounds %"class.xercesc_2_7::DOMChildNode", ptr %263, i64 0, i32 1
  store ptr %1, ptr %264, align 8, !tbaa !77
  store ptr %1, ptr %249, align 8, !tbaa !74
  store ptr %250, ptr %255, align 8, !tbaa !74
  br label %265

265:                                              ; preds = %142, %118, %185, %220, %241, %195
  %266 = load ptr, ptr %0, align 8, !tbaa !40
  %267 = load ptr, ptr %266, align 8, !tbaa !50
  %268 = getelementptr inbounds ptr, ptr %267, i64 89
  %269 = load ptr, ptr %268, align 8
  tail call void %269(ptr noundef nonnull align 8 dereferenceable(293) %266), !prof !78
  %270 = load ptr, ptr %0, align 8, !tbaa !40
  %271 = icmp eq ptr %270, null
  br i1 %271, label %289, label %272, !prof !55

272:                                              ; preds = %265
  %273 = load ptr, ptr %270, align 8, !tbaa !50
  %274 = getelementptr inbounds ptr, ptr %273, i64 82
  %275 = load ptr, ptr %274, align 8
  %276 = tail call noundef ptr %275(ptr noundef nonnull align 8 dereferenceable(293) %270), !prof !79
  %277 = icmp eq ptr %276, null
  br i1 %277, label %289, label %278, !prof !61

278:                                              ; preds = %272
  %279 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %276, i64 0, i32 2
  %280 = load i32, ptr %279, align 4, !tbaa !80
  %281 = zext i32 %280 to i64
  %282 = icmp eq i32 %280, 0
  br i1 %282, label %289, label %283

283:                                              ; preds = %278, %283
  %284 = phi i64 [ %287, %283 ], [ 0, %278 ]
  %285 = trunc i64 %284 to i32
  %286 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %276, i32 noundef %285)
  tail call void @_ZN11xercesc_2_712DOMRangeImpl26updateRangeForInsertedNodeEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(80) %286, ptr noundef nonnull %1)
  %287 = add nuw nsw i64 %284, 1
  %288 = icmp eq i64 %287, %281
  br i1 %288, label %289, label %283, !llvm.loop !84

289:                                              ; preds = %283, %278, %265, %272, %99
  ret ptr %1

290:                                              ; preds = %29, %46, %78, %97, %134, %163, %13
  %291 = phi ptr [ %22, %29 ], [ %39, %46 ], [ %71, %78 ], [ %90, %97 ], [ %127, %134 ], [ %156, %163 ], [ %6, %13 ]
  %292 = phi { ptr, i32 } [ %30, %29 ], [ %47, %46 ], [ %79, %78 ], [ %98, %97 ], [ %135, %134 ], [ %164, %163 ], [ %14, %13 ]
  tail call void @__cxa_free_exception(ptr %291) #12
  resume { ptr, i32 } %292
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_713DOMParentNode13cloneChildrenEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #2 align 2 !prof !48 {
  %3 = load ptr, ptr %1, align 8, !tbaa !50
  %4 = getelementptr inbounds ptr, ptr %3, i64 7
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %9, %2
  ret void

9:                                                ; preds = %2, %9
  %10 = phi ptr [ %19, %9 ], [ %6, %2 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !50
  %12 = getelementptr inbounds ptr, ptr %11, i64 13
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(8) %10, i1 noundef zeroext true)
  %15 = tail call noundef ptr @_ZN11xercesc_2_713DOMParentNode12insertBeforeEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %14, ptr noundef null)
  %16 = load ptr, ptr %10, align 8, !tbaa !50
  %17 = getelementptr inbounds ptr, ptr %16, i64 10
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %10)
  %20 = icmp eq ptr %19, null
  br i1 %20, label %8, label %9, !llvm.loop !85
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_713DOMParentNode11getDocumentEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0) local_unnamed_addr #3 align 2 !prof !48 {
  %2 = load ptr, ptr %0, align 8, !tbaa !40
  ret ptr %2
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_713DOMParentNode16setOwnerDocumentEPNS_11DOMDocumentE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #4 align 2 !prof !48 {
  store ptr %1, ptr %0, align 8, !tbaa !40
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK11xercesc_2_713DOMParentNode13getChildNodesEv(ptr noundef nonnull readnone align 8 dereferenceable(32) %0) local_unnamed_addr #5 align 2 !prof !48 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMParentNode", ptr %0, i64 0, i32 2
  ret ptr %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_713DOMParentNode13getFirstChildEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0) local_unnamed_addr #6 align 2 !prof !86 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMParentNode", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  ret ptr %3
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_713DOMParentNode12getLastChildEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0) local_unnamed_addr #7 align 2 !prof !48 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMParentNode", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %3, i64 0, i32 1, i32 1
  %7 = load i16, ptr %6, align 8, !tbaa !57
  %8 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl12LEAFNODETYPEE, align 2, !tbaa !60
  %9 = and i16 %8, %7
  %10 = icmp eq i16 %9, 0
  %11 = getelementptr inbounds %"class.xercesc_2_7::DOMTextImpl", ptr %3, i64 0, i32 2
  %12 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %3, i64 0, i32 3
  %13 = select i1 %10, ptr %12, ptr %11
  %14 = load ptr, ptr %13, align 8, !tbaa !74
  br label %15

15:                                               ; preds = %1, %5
  %16 = phi ptr [ %14, %5 ], [ null, %1 ]
  ret ptr %16
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_713DOMParentNode9lastChildEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0) local_unnamed_addr #7 align 2 !prof !48 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMParentNode", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %3, i64 0, i32 1, i32 1
  %7 = load i16, ptr %6, align 8, !tbaa !57
  %8 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl12LEAFNODETYPEE, align 2, !tbaa !60
  %9 = and i16 %8, %7
  %10 = icmp eq i16 %9, 0
  %11 = getelementptr inbounds %"class.xercesc_2_7::DOMTextImpl", ptr %3, i64 0, i32 2
  %12 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %3, i64 0, i32 3
  %13 = select i1 %10, ptr %12, ptr %11
  %14 = load ptr, ptr %13, align 8, !tbaa !74
  br label %15

15:                                               ; preds = %1, %5
  %16 = phi ptr [ %14, %5 ], [ null, %1 ]
  ret ptr %16
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_713DOMParentNode9lastChildEPNS_7DOMNodeE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #8 align 2 !prof !48 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMParentNode", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %4, i64 0, i32 1, i32 1
  %8 = load i16, ptr %7, align 8, !tbaa !57
  %9 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl12LEAFNODETYPEE, align 2, !tbaa !60
  %10 = and i16 %9, %8
  %11 = icmp eq i16 %10, 0
  %12 = getelementptr inbounds %"class.xercesc_2_7::DOMTextImpl", ptr %4, i64 0, i32 2
  %13 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %4, i64 0, i32 3
  %14 = select i1 %11, ptr %13, ptr %12
  store ptr %1, ptr %14, align 8, !tbaa !74
  br label %15

15:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_713DOMParentNode13hasChildNodesEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0) local_unnamed_addr #3 align 2 !prof !87 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMParentNode", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = icmp ne ptr %3, null
  ret i1 %4
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare i32 @__gxx_personality_v0(...)

declare void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33), i16 noundef signext, ptr noundef, ptr noundef) unnamed_addr #1

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712DOMExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(33)) unnamed_addr #9

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

declare noundef zeroext i1 @_ZN11xercesc_2_715DOMDocumentImpl7isKidOKEPNS_7DOMNodeES2_(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !48 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !80
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !88
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
  %15 = load ptr, ptr %14, align 8, !tbaa !89
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !56
  ret ptr %18
}

declare void @_ZN11xercesc_2_712DOMRangeImpl26updateRangeForInsertedNodeEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_713DOMParentNode11removeChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef returned %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !48 {
  %3 = getelementptr inbounds i8, ptr %0, i64 -8
  %4 = load i16, ptr %3, align 8, !tbaa !57
  %5 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl8READONLYE, align 2, !tbaa !60
  %6 = and i16 %5, %4
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %18, label %8

8:                                                ; preds = %2
  %9 = tail call ptr @__cxa_allocate_exception(i64 40) #12
  %10 = load ptr, ptr %0, align 8, !tbaa !40
  %11 = icmp eq ptr %10, null
  %12 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %10, i64 0, i32 25
  %13 = select i1 %11, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, ptr %12
  %14 = load ptr, ptr %13, align 8, !tbaa !56
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %9, i16 noundef signext 7, ptr noundef null, ptr noundef %14)
          to label %15 unwind label %16

15:                                               ; preds = %8
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #13
  unreachable

16:                                               ; preds = %8
  %17 = landingpad { ptr, i32 }
          cleanup
  br label %167

18:                                               ; preds = %2
  %19 = icmp eq ptr %1, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %18
  %21 = load ptr, ptr %1, align 8, !tbaa !50
  %22 = getelementptr inbounds ptr, ptr %21, i64 5
  %23 = load ptr, ptr %22, align 8
  %24 = tail call noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %25 = getelementptr inbounds i8, ptr %0, i64 -24
  %26 = icmp eq ptr %24, %25
  br i1 %26, label %37, label %27

27:                                               ; preds = %20, %18
  %28 = tail call ptr @__cxa_allocate_exception(i64 40) #12
  %29 = load ptr, ptr %0, align 8, !tbaa !40
  %30 = icmp eq ptr %29, null
  %31 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %29, i64 0, i32 25
  %32 = select i1 %30, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, ptr %31
  %33 = load ptr, ptr %32, align 8, !tbaa !56
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %28, i16 noundef signext 8, ptr noundef null, ptr noundef %33)
          to label %34 unwind label %35

34:                                               ; preds = %27
  tail call void @__cxa_throw(ptr nonnull %28, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #13
  unreachable

35:                                               ; preds = %27
  %36 = landingpad { ptr, i32 }
          cleanup
  br label %167

37:                                               ; preds = %20
  %38 = load ptr, ptr %0, align 8, !tbaa !40
  %39 = icmp eq ptr %38, null
  br i1 %39, label %83, label %40

40:                                               ; preds = %37
  %41 = load ptr, ptr %38, align 8, !tbaa !50
  %42 = getelementptr inbounds ptr, ptr %41, i64 83
  %43 = load ptr, ptr %42, align 8
  %44 = tail call noundef ptr %43(ptr noundef nonnull align 8 dereferenceable(293) %38)
  %45 = icmp eq ptr %44, null
  br i1 %45, label %61, label %46

46:                                               ; preds = %40
  %47 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 4, !tbaa !90
  %49 = zext i32 %48 to i64
  %50 = icmp eq i32 %48, 0
  br i1 %50, label %61, label %51

51:                                               ; preds = %46, %58
  %52 = phi i64 [ %59, %58 ], [ 0, %46 ]
  %53 = trunc i64 %52 to i32
  %54 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_19DOMNodeIteratorImplEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %44, i32 noundef %53)
  %55 = icmp eq ptr %54, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %51
  %57 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_19DOMNodeIteratorImplEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %44, i32 noundef %53)
  tail call void @_ZN11xercesc_2_719DOMNodeIteratorImpl10removeNodeEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(57) %57, ptr noundef nonnull %1)
  br label %58

58:                                               ; preds = %51, %56
  %59 = add nuw nsw i64 %52, 1
  %60 = icmp eq i64 %59, %49
  br i1 %60, label %61, label %51, !llvm.loop !92

61:                                               ; preds = %58, %46, %40
  %62 = load ptr, ptr %0, align 8, !tbaa !40
  %63 = load ptr, ptr %62, align 8, !tbaa !50
  %64 = getelementptr inbounds ptr, ptr %63, i64 82
  %65 = load ptr, ptr %64, align 8
  %66 = tail call noundef ptr %65(ptr noundef nonnull align 8 dereferenceable(293) %62)
  %67 = icmp eq ptr %66, null
  br i1 %67, label %83, label %68

68:                                               ; preds = %61
  %69 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %66, i64 0, i32 2
  %70 = load i32, ptr %69, align 4, !tbaa !80
  %71 = zext i32 %70 to i64
  %72 = icmp eq i32 %70, 0
  br i1 %72, label %83, label %73

73:                                               ; preds = %68, %80
  %74 = phi i64 [ %81, %80 ], [ 0, %68 ]
  %75 = trunc i64 %74 to i32
  %76 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %66, i32 noundef %75)
  %77 = icmp eq ptr %76, null
  br i1 %77, label %80, label %78

78:                                               ; preds = %73
  %79 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %66, i32 noundef %75)
  tail call void @_ZN11xercesc_2_712DOMRangeImpl25updateRangeForDeletedNodeEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(80) %79, ptr noundef nonnull %1)
  br label %80

80:                                               ; preds = %73, %78
  %81 = add nuw nsw i64 %74, 1
  %82 = icmp eq i64 %81, %71
  br i1 %82, label %83, label %73, !llvm.loop !93

83:                                               ; preds = %80, %68, %61, %37
  %84 = getelementptr inbounds %"class.xercesc_2_7::DOMParentNode", ptr %0, i64 0, i32 1
  %85 = load ptr, ptr %84, align 8, !tbaa !47
  %86 = icmp eq ptr %85, %1
  %87 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %1, i64 0, i32 1, i32 1
  %88 = load i16, ptr %87, align 8, !tbaa !57
  br i1 %86, label %89, label %112

89:                                               ; preds = %83
  %90 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl10FIRSTCHILDE, align 2, !tbaa !60
  %91 = xor i16 %90, -1
  %92 = and i16 %88, %91
  store i16 %92, ptr %87, align 8, !tbaa !57
  %93 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl12LEAFNODETYPEE, align 2, !tbaa !60
  %94 = and i16 %93, %92
  %95 = icmp eq i16 %94, 0
  %96 = getelementptr inbounds %"class.xercesc_2_7::DOMTextImpl", ptr %1, i64 0, i32 2
  %97 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %1, i64 0, i32 3
  %98 = select i1 %95, ptr %97, ptr %96
  %99 = getelementptr inbounds %"class.xercesc_2_7::DOMChildNode", ptr %98, i64 0, i32 1
  %100 = load ptr, ptr %99, align 8, !tbaa !77
  store ptr %100, ptr %84, align 8, !tbaa !47
  %101 = icmp eq ptr %100, null
  br i1 %101, label %147, label %102

102:                                              ; preds = %89
  %103 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %100, i64 0, i32 1, i32 1
  %104 = load i16, ptr %103, align 8, !tbaa !57
  %105 = or i16 %104, %90
  store i16 %105, ptr %103, align 8, !tbaa !57
  %106 = load i16, ptr %87, align 8, !tbaa !57
  %107 = and i16 %106, %93
  %108 = icmp eq i16 %107, 0
  %109 = select i1 %108, ptr %97, ptr %96
  %110 = load ptr, ptr %109, align 8, !tbaa !74
  %111 = and i16 %105, %93
  br label %139

112:                                              ; preds = %83
  %113 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl12LEAFNODETYPEE, align 2, !tbaa !60
  %114 = and i16 %113, %88
  %115 = icmp eq i16 %114, 0
  %116 = getelementptr inbounds %"class.xercesc_2_7::DOMTextImpl", ptr %1, i64 0, i32 2
  %117 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %1, i64 0, i32 3
  %118 = select i1 %115, ptr %117, ptr %116
  %119 = load ptr, ptr %118, align 8, !tbaa !74
  %120 = getelementptr inbounds %"class.xercesc_2_7::DOMChildNode", ptr %118, i64 0, i32 1
  %121 = load ptr, ptr %120, align 8, !tbaa !77
  %122 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %119, i64 0, i32 1, i32 1
  %123 = load i16, ptr %122, align 8, !tbaa !57
  %124 = and i16 %123, %113
  %125 = icmp eq i16 %124, 0
  %126 = getelementptr inbounds %"class.xercesc_2_7::DOMTextImpl", ptr %119, i64 0, i32 2
  %127 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %119, i64 0, i32 3
  %128 = select i1 %125, ptr %127, ptr %126
  %129 = getelementptr inbounds %"class.xercesc_2_7::DOMChildNode", ptr %128, i64 0, i32 1
  store ptr %121, ptr %129, align 8, !tbaa !77
  %130 = icmp eq ptr %121, null
  br i1 %130, label %131, label %135

131:                                              ; preds = %112
  %132 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %85, i64 0, i32 1, i32 1
  %133 = load i16, ptr %132, align 8, !tbaa !57
  %134 = and i16 %133, %113
  br label %139

135:                                              ; preds = %112
  %136 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %121, i64 0, i32 1, i32 1
  %137 = load i16, ptr %136, align 8, !tbaa !57
  %138 = and i16 %137, %113
  br label %139

139:                                              ; preds = %102, %135, %131
  %140 = phi i16 [ %134, %131 ], [ %138, %135 ], [ %111, %102 ]
  %141 = phi ptr [ %85, %131 ], [ %121, %135 ], [ %100, %102 ]
  %142 = phi ptr [ %119, %131 ], [ %119, %135 ], [ %110, %102 ]
  %143 = icmp eq i16 %140, 0
  %144 = getelementptr inbounds %"class.xercesc_2_7::DOMTextImpl", ptr %141, i64 0, i32 2
  %145 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %141, i64 0, i32 3
  %146 = select i1 %143, ptr %145, ptr %144
  store ptr %142, ptr %146, align 8, !tbaa !74
  br label %147

147:                                              ; preds = %139, %89
  %148 = load ptr, ptr %0, align 8, !tbaa !40
  %149 = icmp eq ptr %148, null
  %150 = getelementptr inbounds i8, ptr %148, i64 24
  %151 = select i1 %149, ptr null, ptr %150
  %152 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %1, i64 0, i32 1
  store ptr %151, ptr %152, align 8, !tbaa !71
  %153 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %1, i64 0, i32 1, i32 1
  %154 = load i16, ptr %153, align 8, !tbaa !57
  %155 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl5OWNEDE, align 2, !tbaa !60
  %156 = xor i16 %155, -1
  %157 = and i16 %154, %156
  store i16 %157, ptr %153, align 8, !tbaa !57
  %158 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl12LEAFNODETYPEE, align 2, !tbaa !60
  %159 = and i16 %158, %157
  %160 = icmp eq i16 %159, 0
  %161 = getelementptr inbounds %"class.xercesc_2_7::DOMTextImpl", ptr %1, i64 0, i32 2
  %162 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %1, i64 0, i32 3
  %163 = select i1 %160, ptr %162, ptr %161
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %163, i8 0, i64 16, i1 false)
  %164 = load ptr, ptr %148, align 8, !tbaa !50
  %165 = getelementptr inbounds ptr, ptr %164, i64 89
  %166 = load ptr, ptr %165, align 8
  tail call void %166(ptr noundef nonnull align 8 dereferenceable(293) %148)
  ret ptr %1

167:                                              ; preds = %35, %16
  %168 = phi ptr [ %28, %35 ], [ %9, %16 ]
  %169 = phi { ptr, i32 } [ %36, %35 ], [ %17, %16 ]
  tail call void @__cxa_free_exception(ptr %168) #12
  resume { ptr, i32 } %169
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_19DOMNodeIteratorImplEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !48 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !90
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !94
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
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !95
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !56
  ret ptr %18
}

declare void @_ZN11xercesc_2_719DOMNodeIteratorImpl10removeNodeEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(57), ptr noundef) local_unnamed_addr #1

declare void @_ZN11xercesc_2_712DOMRangeImpl25updateRangeForDeletedNodeEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_713DOMParentNode12replaceChildEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef returned %2) local_unnamed_addr #2 align 2 !prof !48 {
  %4 = tail call noundef ptr @_ZN11xercesc_2_713DOMParentNode12insertBeforeEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2)
  %5 = tail call noundef ptr @_ZN11xercesc_2_713DOMParentNode11removeChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %2)
  ret ptr %2
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_713DOMParentNode9normalizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 align 2 !prof !48 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMParentNode", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = icmp eq ptr %3, null
  br i1 %4, label %53, label %5

5:                                                ; preds = %1
  %6 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl12LEAFNODETYPEE, align 2, !tbaa !60
  br label %7

7:                                                ; preds = %5, %50
  %8 = phi ptr [ %3, %5 ], [ %51, %50 ]
  %9 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %8, i64 0, i32 1, i32 1
  %10 = load i16, ptr %9, align 8, !tbaa !57
  %11 = and i16 %6, %10
  %12 = icmp eq i16 %11, 0
  %13 = getelementptr inbounds %"class.xercesc_2_7::DOMTextImpl", ptr %8, i64 0, i32 2
  %14 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %8, i64 0, i32 3
  %15 = select i1 %12, ptr %14, ptr %13
  %16 = getelementptr inbounds %"class.xercesc_2_7::DOMChildNode", ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !77
  %18 = icmp eq ptr %17, null
  br i1 %18, label %40, label %19

19:                                               ; preds = %7
  %20 = load ptr, ptr %8, align 8, !tbaa !50
  %21 = getelementptr inbounds ptr, ptr %20, i64 4
  %22 = load ptr, ptr %21, align 8
  %23 = tail call noundef signext i16 %22(ptr noundef nonnull align 8 dereferenceable(8) %8)
  %24 = icmp eq i16 %23, 3
  br i1 %24, label %25, label %40

25:                                               ; preds = %19
  %26 = load ptr, ptr %17, align 8, !tbaa !50
  %27 = getelementptr inbounds ptr, ptr %26, i64 4
  %28 = load ptr, ptr %27, align 8
  %29 = tail call noundef signext i16 %28(ptr noundef nonnull align 8 dereferenceable(8) %17)
  %30 = icmp eq i16 %29, 3
  br i1 %30, label %31, label %40

31:                                               ; preds = %25
  %32 = load ptr, ptr %17, align 8, !tbaa !50
  %33 = getelementptr inbounds ptr, ptr %32, i64 40
  %34 = load ptr, ptr %33, align 8
  %35 = tail call noundef ptr %34(ptr noundef nonnull align 8 dereferenceable(56) %17)
  %36 = load ptr, ptr %8, align 8, !tbaa !50
  %37 = getelementptr inbounds ptr, ptr %36, i64 43
  %38 = load ptr, ptr %37, align 8
  tail call void %38(ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef %35)
  %39 = tail call noundef ptr @_ZN11xercesc_2_713DOMParentNode11removeChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %17)
  br label %50

40:                                               ; preds = %25, %19, %7
  %41 = load ptr, ptr %8, align 8, !tbaa !50
  %42 = getelementptr inbounds ptr, ptr %41, i64 4
  %43 = load ptr, ptr %42, align 8
  %44 = tail call noundef signext i16 %43(ptr noundef nonnull align 8 dereferenceable(8) %8)
  %45 = icmp eq i16 %44, 1
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = load ptr, ptr %8, align 8, !tbaa !50
  %48 = getelementptr inbounds ptr, ptr %47, i64 20
  %49 = load ptr, ptr %48, align 8
  tail call void %49(ptr noundef nonnull align 8 dereferenceable(8) %8)
  br label %50

50:                                               ; preds = %31, %46, %40
  %51 = phi ptr [ %8, %31 ], [ %17, %46 ], [ %17, %40 ]
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %7, !llvm.loop !96

53:                                               ; preds = %50, %1
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_713DOMParentNode11isEqualNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #2 align 2 !prof !48 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %43, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds i8, ptr %0, i64 -16
  %6 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl10isSameNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10) %5, ptr noundef nonnull %1)
  br i1 %6, label %43, label %7

7:                                                ; preds = %4
  %8 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl11isEqualNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10) %5, ptr noundef nonnull %1)
  br i1 %8, label %9, label %43

9:                                                ; preds = %7
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMParentNode", ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !47
  %12 = load ptr, ptr %1, align 8, !tbaa !50
  %13 = getelementptr inbounds ptr, ptr %12, i64 7
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %16 = icmp ne ptr %11, null
  %17 = icmp ne ptr %15, null
  %18 = and i1 %16, %17
  br i1 %18, label %19, label %38

19:                                               ; preds = %9, %26
  %20 = phi ptr [ %34, %26 ], [ %15, %9 ]
  %21 = phi ptr [ %30, %26 ], [ %11, %9 ]
  %22 = load ptr, ptr %21, align 8, !tbaa !50
  %23 = getelementptr inbounds ptr, ptr %22, i64 28
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef zeroext i1 %24(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef nonnull %20)
  br i1 %25, label %26, label %43

26:                                               ; preds = %19
  %27 = load ptr, ptr %21, align 8, !tbaa !50
  %28 = getelementptr inbounds ptr, ptr %27, i64 10
  %29 = load ptr, ptr %28, align 8
  %30 = tail call noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(8) %21)
  %31 = load ptr, ptr %20, align 8, !tbaa !50
  %32 = getelementptr inbounds ptr, ptr %31, i64 10
  %33 = load ptr, ptr %32, align 8
  %34 = tail call noundef ptr %33(ptr noundef nonnull align 8 dereferenceable(8) %20)
  %35 = icmp ne ptr %30, null
  %36 = icmp ne ptr %34, null
  %37 = and i1 %35, %36
  br i1 %37, label %19, label %38, !llvm.loop !97

38:                                               ; preds = %26, %9
  %39 = phi i1 [ %16, %9 ], [ %35, %26 ]
  %40 = phi i1 [ %17, %9 ], [ %36, %26 ]
  %41 = or i1 %39, %40
  %42 = xor i1 %41, true
  br label %43

43:                                               ; preds = %19, %4, %7, %2, %38
  %44 = phi i1 [ %6, %4 ], [ %42, %38 ], [ false, %2 ], [ false, %7 ], [ false, %19 ]
  ret i1 %44
}

declare noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl10isSameNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl11isEqualNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_713DOMParentNode7releaseEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0) local_unnamed_addr #2 align 2 !prof !48 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMParentNode", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = icmp eq ptr %3, null
  br i1 %4, label %24, label %5

5:                                                ; preds = %1
  %6 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl12LEAFNODETYPEE, align 2, !tbaa !60
  %7 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl12TOBERELEASEDE, align 2, !tbaa !60
  br label %8

8:                                                ; preds = %5, %8
  %9 = phi ptr [ %3, %5 ], [ %18, %8 ]
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %9, i64 0, i32 1, i32 1
  %11 = load i16, ptr %10, align 8, !tbaa !57
  %12 = and i16 %6, %11
  %13 = icmp eq i16 %12, 0
  %14 = getelementptr inbounds %"class.xercesc_2_7::DOMTextImpl", ptr %9, i64 0, i32 2
  %15 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %9, i64 0, i32 3
  %16 = select i1 %13, ptr %15, ptr %14
  %17 = getelementptr inbounds %"class.xercesc_2_7::DOMChildNode", ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !77
  %19 = or i16 %7, %11
  store i16 %19, ptr %10, align 8, !tbaa !57
  %20 = load ptr, ptr %9, align 8, !tbaa !50
  %21 = getelementptr inbounds ptr, ptr %20, i64 39
  %22 = load ptr, ptr %21, align 8
  tail call void %22(ptr noundef nonnull align 8 dereferenceable(8) %9)
  %23 = icmp eq ptr %18, null
  br i1 %23, label %24, label %8, !llvm.loop !98

24:                                               ; preds = %8, %1
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !48 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !50
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
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #9

declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #1

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #10 comdat align 2 !prof !48 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #10 comdat align 2 !prof !48 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !48 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !99
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !50
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #12
  resume { ptr, i32 } %7
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #9

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #9

declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!35 = !{ptr @_ZN11xercesc_2_713DOMParentNodeC2EPNS_11DOMDocumentE, ptr @_ZN11xercesc_2_715DOMNodeListImplC1EPNS_7DOMNodeE, i64 1201}
!36 = !{ptr @_ZN11xercesc_2_713DOMParentNode11appendChildEPNS_7DOMNodeE, ptr @_ZN11xercesc_2_713DOMParentNode12insertBeforeEPNS_7DOMNodeES2_, i64 1199}
!37 = !{ptr @_ZN11xercesc_2_713DOMParentNode12insertBeforeEPNS_7DOMNodeES2_, ptr @_ZN11xercesc_2_715DOMDocumentImpl7isKidOKEPNS_7DOMNodeES2_, i64 1200}
!38 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!39 = !{!"function_entry_count", i64 1201}
!40 = !{!41, !42, i64 0}
!41 = !{!"_ZTSN11xercesc_2_713DOMParentNodeE", !42, i64 0, !42, i64 8, !45, i64 16}
!42 = !{!"any pointer", !43, i64 0}
!43 = !{!"omnipotent char", !44, i64 0}
!44 = !{!"Simple C++ TBAA"}
!45 = !{!"_ZTSN11xercesc_2_715DOMNodeListImplE", !46, i64 0, !42, i64 8}
!46 = !{!"_ZTSN11xercesc_2_711DOMNodeListE"}
!47 = !{!41, !42, i64 8}
!48 = !{!"function_entry_count", i64 0}
!49 = !{!"function_entry_count", i64 650}
!50 = !{!51, !51, i64 0}
!51 = !{!"vtable pointer", !44, i64 0}
!52 = !{!"VP", i32 0, i64 650, i64 -2106963383526547395, i64 650}
!53 = !{!"function_entry_count", i64 1199}
!54 = !{!"function_entry_count", i64 1200}
!55 = !{!"branch_weights", i32 0, i32 1200}
!56 = !{!42, !42, i64 0}
!57 = !{!58, !59, i64 8}
!58 = !{!"_ZTSN11xercesc_2_711DOMNodeImplE", !42, i64 0, !59, i64 8}
!59 = !{!"short", !43, i64 0}
!60 = !{!59, !59, i64 0}
!61 = !{!"branch_weights", i32 1200, i32 0}
!62 = !{!"VP", i32 0, i64 1200, i64 5283099149909819220, i64 650, i64 -436814257186127076, i64 550}
!63 = !{!"VP", i32 0, i64 1200, i64 -5457129135492607971, i64 650, i64 5164708457718786146, i64 550}
!64 = distinct !{!64, !65, !66}
!65 = !{!"llvm.loop.mustprogress"}
!66 = !{!"llvm.loop.unroll.disable"}
!67 = !{!"VP", i32 0, i64 1200, i64 -9104222706455325236, i64 650, i64 -3424180285606522166, i64 550}
!68 = distinct !{!68, !65, !66}
!69 = distinct !{!69, !65, !66}
!70 = !{!"VP", i32 0, i64 1200, i64 -7611247820210438680, i64 650, i64 -301570649068278019, i64 550}
!71 = !{!58, !42, i64 0}
!72 = !{!"branch_weights", i32 769, i32 431}
!73 = !{!"branch_weights", i32 119, i32 650}
!74 = !{!75, !42, i64 0}
!75 = !{!"_ZTSN11xercesc_2_712DOMChildNodeE", !42, i64 0, !42, i64 8}
!76 = !{!"branch_weights", i32 431, i32 0}
!77 = !{!75, !42, i64 8}
!78 = !{!"VP", i32 0, i64 1200, i64 -2106963383526547395, i64 1200}
!79 = !{!"VP", i32 0, i64 1200, i64 4195832557579582974, i64 1200}
!80 = !{!81, !83, i64 12}
!81 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEEE", !82, i64 8, !83, i64 12, !83, i64 16, !42, i64 24, !42, i64 32}
!82 = !{!"bool", !43, i64 0}
!83 = !{!"int", !43, i64 0}
!84 = distinct !{!84, !65, !66}
!85 = distinct !{!85, !65, !66}
!86 = !{!"function_entry_count", i64 719}
!87 = !{!"function_entry_count", i64 550}
!88 = !{!81, !42, i64 32}
!89 = !{!81, !42, i64 24}
!90 = !{!91, !83, i64 12}
!91 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_19DOMNodeIteratorImplEEE", !82, i64 8, !83, i64 12, !83, i64 16, !42, i64 24, !42, i64 32}
!92 = distinct !{!92, !65, !66}
!93 = distinct !{!93, !65, !66}
!94 = !{!91, !42, i64 32}
!95 = !{!91, !42, i64 24}
!96 = distinct !{!96, !65, !66}
!97 = distinct !{!97, !65, !66}
!98 = distinct !{!98, !65, !66}
!99 = !{!100, !42, i64 40}
!100 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !101, i64 8, !42, i64 16, !83, i64 24, !42, i64 32, !42, i64 40}
!101 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !43, i64 0}
