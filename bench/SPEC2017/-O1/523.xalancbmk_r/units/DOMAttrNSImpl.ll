; ModuleID = 'DOMAttrNSImpl.cpp'
source_filename = "DOMAttrNSImpl.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::DOMAttrNSImpl" = type { %"class.xercesc_2_7::DOMAttrImpl", ptr, ptr, ptr }
%"class.xercesc_2_7::DOMAttrImpl" = type { %"class.xercesc_2_7::DOMAttr", %"class.xercesc_2_7::DOMNodeImpl", %"class.xercesc_2_7::DOMParentNode", ptr, ptr }
%"class.xercesc_2_7::DOMAttr" = type { %"class.xercesc_2_7::DOMNode" }
%"class.xercesc_2_7::DOMNode" = type { ptr }
%"class.xercesc_2_7::DOMNodeImpl" = type <{ ptr, i16, [6 x i8] }>
%"class.xercesc_2_7::DOMParentNode" = type { ptr, ptr, %"class.xercesc_2_7::DOMNodeListImpl" }
%"class.xercesc_2_7::DOMNodeListImpl" = type { %"class.xercesc_2_7::DOMNodeList", ptr }
%"class.xercesc_2_7::DOMNodeList" = type { ptr }
%"class.xercesc_2_7::DOMDocumentImpl" = type <{ %"class.xercesc_2_7::DOMDocument", %"class.xercesc_2_7::DOMNodeImpl", %"class.xercesc_2_7::DOMParentNode", ptr, ptr, ptr, i8, [7 x i8], ptr, ptr, ptr, %"class.xercesc_2_7::XMLStringPool", ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, [3 x i8] }>
%"class.xercesc_2_7::DOMDocument" = type { %"class.xercesc_2_7::DOMDocumentRange", %"class.xercesc_2_7::DOMXPathEvaluator", %"class.xercesc_2_7::DOMDocumentTraversal", %"class.xercesc_2_7::DOMNode" }
%"class.xercesc_2_7::DOMDocumentRange" = type { ptr }
%"class.xercesc_2_7::DOMXPathEvaluator" = type { ptr }
%"class.xercesc_2_7::DOMDocumentTraversal" = type { ptr }
%"class.xercesc_2_7::XMLStringPool" = type { %"class.xercesc_2_7::XSerializable", ptr, ptr, ptr, i32, i32 }
%"class.xercesc_2_7::XSerializable" = type { ptr }

$_ZN11xercesc_2_713DOMAttrNSImplD0Ev = comdat any

$_ZN11xercesc_2_711DOMAttrImpl18addAttrToIDNodeMapEv = comdat any

$_ZN11xercesc_2_711DOMAttrImpl23removeAttrFromIDNodeMapEv = comdat any

@_ZTVN11xercesc_2_713DOMAttrNSImplE = dso_local unnamed_addr constant { [54 x ptr] } { [54 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_713DOMAttrNSImplE, ptr @_ZN11xercesc_2_711DOMAttrImplD2Ev, ptr @_ZN11xercesc_2_713DOMAttrNSImplD0Ev, ptr @_ZNK11xercesc_2_711DOMAttrImpl11getNodeNameEv, ptr @_ZNK11xercesc_2_711DOMAttrImpl12getNodeValueEv, ptr @_ZNK11xercesc_2_711DOMAttrImpl11getNodeTypeEv, ptr @_ZNK11xercesc_2_711DOMAttrImpl13getParentNodeEv, ptr @_ZNK11xercesc_2_711DOMAttrImpl13getChildNodesEv, ptr @_ZNK11xercesc_2_711DOMAttrImpl13getFirstChildEv, ptr @_ZNK11xercesc_2_711DOMAttrImpl12getLastChildEv, ptr @_ZNK11xercesc_2_711DOMAttrImpl18getPreviousSiblingEv, ptr @_ZNK11xercesc_2_711DOMAttrImpl14getNextSiblingEv, ptr @_ZNK11xercesc_2_711DOMAttrImpl13getAttributesEv, ptr @_ZNK11xercesc_2_711DOMAttrImpl16getOwnerDocumentEv, ptr @_ZNK11xercesc_2_713DOMAttrNSImpl9cloneNodeEb, ptr @_ZN11xercesc_2_711DOMAttrImpl12insertBeforeEPNS_7DOMNodeES2_, ptr @_ZN11xercesc_2_711DOMAttrImpl12replaceChildEPNS_7DOMNodeES2_, ptr @_ZN11xercesc_2_711DOMAttrImpl11removeChildEPNS_7DOMNodeE, ptr @_ZN11xercesc_2_711DOMAttrImpl11appendChildEPNS_7DOMNodeE, ptr @_ZNK11xercesc_2_711DOMAttrImpl13hasChildNodesEv, ptr @_ZN11xercesc_2_711DOMAttrImpl12setNodeValueEPKt, ptr @_ZN11xercesc_2_711DOMAttrImpl9normalizeEv, ptr @_ZNK11xercesc_2_711DOMAttrImpl11isSupportedEPKtS2_, ptr @_ZNK11xercesc_2_713DOMAttrNSImpl15getNamespaceURIEv, ptr @_ZNK11xercesc_2_713DOMAttrNSImpl9getPrefixEv, ptr @_ZNK11xercesc_2_713DOMAttrNSImpl12getLocalNameEv, ptr @_ZN11xercesc_2_713DOMAttrNSImpl9setPrefixEPKt, ptr @_ZNK11xercesc_2_711DOMAttrImpl13hasAttributesEv, ptr @_ZNK11xercesc_2_711DOMAttrImpl10isSameNodeEPKNS_7DOMNodeE, ptr @_ZNK11xercesc_2_711DOMAttrImpl11isEqualNodeEPKNS_7DOMNodeE, ptr @_ZN11xercesc_2_711DOMAttrImpl11setUserDataEPKtPvPNS_18DOMUserDataHandlerE, ptr @_ZNK11xercesc_2_711DOMAttrImpl11getUserDataEPKt, ptr @_ZNK11xercesc_2_711DOMAttrImpl10getBaseURIEv, ptr @_ZNK11xercesc_2_711DOMAttrImpl19compareTreePositionEPKNS_7DOMNodeE, ptr @_ZNK11xercesc_2_711DOMAttrImpl14getTextContentEv, ptr @_ZN11xercesc_2_711DOMAttrImpl14setTextContentEPKt, ptr @_ZNK11xercesc_2_711DOMAttrImpl21lookupNamespacePrefixEPKtb, ptr @_ZNK11xercesc_2_711DOMAttrImpl18isDefaultNamespaceEPKt, ptr @_ZNK11xercesc_2_711DOMAttrImpl18lookupNamespaceURIEPKt, ptr @_ZN11xercesc_2_711DOMAttrImpl12getInterfaceEPKt, ptr @_ZN11xercesc_2_713DOMAttrNSImpl7releaseEv, ptr @_ZNK11xercesc_2_711DOMAttrImpl7getNameEv, ptr @_ZNK11xercesc_2_711DOMAttrImpl12getSpecifiedEv, ptr @_ZNK11xercesc_2_711DOMAttrImpl8getValueEv, ptr @_ZN11xercesc_2_711DOMAttrImpl8setValueEPKt, ptr @_ZNK11xercesc_2_711DOMAttrImpl15getOwnerElementEv, ptr @_ZNK11xercesc_2_711DOMAttrImpl4isIdEv, ptr @_ZNK11xercesc_2_711DOMAttrImpl11getTypeInfoEv, ptr @_ZN11xercesc_2_711DOMAttrImpl12setSpecifiedEb, ptr @_ZN11xercesc_2_713DOMAttrNSImpl6renameEPKtS2_, ptr @_ZN11xercesc_2_711DOMAttrImpl11setTypeInfoEPKNS_15DOMTypeInfoImplE, ptr @_ZN11xercesc_2_711DOMAttrImpl18addAttrToIDNodeMapEv, ptr @_ZN11xercesc_2_711DOMAttrImpl23removeAttrFromIDNodeMapEv] }, align 8
@_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE = external local_unnamed_addr global ptr, align 8
@_ZTIN11xercesc_2_712DOMExceptionE = external constant ptr
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_713DOMAttrNSImplE = dso_local constant [31 x i8] c"N11xercesc_2_713DOMAttrNSImplE\00", align 1
@_ZTIN11xercesc_2_711DOMAttrImplE = external constant ptr
@_ZTIN11xercesc_2_713DOMAttrNSImplE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_713DOMAttrNSImplE, ptr @_ZTIN11xercesc_2_711DOMAttrImplE }, align 8
@_ZN11xercesc_2_711DOMNodeImpl8READONLYE = external local_unnamed_addr constant i16, align 2
@_ZN11xercesc_2_711DOMNodeImpl5OWNEDE = external local_unnamed_addr constant i16, align 2
@_ZN11xercesc_2_711DOMNodeImpl12TOBERELEASEDE = external local_unnamed_addr constant i16, align 2
@_ZN11xercesc_2_711DOMNodeImpl7ID_ATTRE = external local_unnamed_addr constant i16, align 2

@_ZN11xercesc_2_713DOMAttrNSImplC1EPNS_11DOMDocumentEPKt = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xercesc_2_713DOMAttrNSImplC2EPNS_11DOMDocumentEPKt
@_ZN11xercesc_2_713DOMAttrNSImplC1EPNS_11DOMDocumentEPKtS4_ = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN11xercesc_2_713DOMAttrNSImplC2EPNS_11DOMDocumentEPKtS4_
@_ZN11xercesc_2_713DOMAttrNSImplC1ERKS0_b = dso_local unnamed_addr alias void (ptr, ptr, i1), ptr @_ZN11xercesc_2_713DOMAttrNSImplC2ERKS0_b

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_713DOMAttrNSImplC2EPNS_11DOMDocumentEPKt(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 align 2 !prof !46 {
  tail call void @_ZN11xercesc_2_711DOMAttrImplC2EPNS_11DOMDocumentEPKt(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2)
  store ptr getelementptr inbounds ({ [54 x ptr] }, ptr @_ZTVN11xercesc_2_713DOMAttrNSImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !47
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrNSImpl", ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  ret void
}

declare void @_ZN11xercesc_2_711DOMAttrImplC2EPNS_11DOMDocumentEPKt(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xercesc_2_713DOMAttrNSImplC2EPNS_11DOMDocumentEPKtS4_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !50 {
  tail call void @_ZN11xercesc_2_711DOMAttrImplC2EPNS_11DOMDocumentEPKt(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %3)
  store ptr getelementptr inbounds ({ [54 x ptr] }, ptr @_ZTVN11xercesc_2_713DOMAttrNSImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !47
  invoke void @_ZN11xercesc_2_713DOMAttrNSImpl7setNameEPKtS2_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %2, ptr noundef %3)
          to label %5 unwind label %6, !prof !51

5:                                                ; preds = %4
  ret void

6:                                                ; preds = %4
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_711DOMAttrImplD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #11
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xercesc_2_713DOMAttrNSImpl7setNameEPKtS2_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !50 {
  %4 = alloca [4000 x i16], align 16
  %5 = load ptr, ptr %0, align 8, !tbaa !47
  %6 = getelementptr inbounds ptr, ptr %5, i64 12
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(72) %0), !prof !52
  %9 = tail call noundef ptr @_ZN11xercesc_2_711DOMNodeImpl14getXmlnsStringEv()
  %10 = tail call noundef ptr @_ZN11xercesc_2_711DOMNodeImpl17getXmlnsURIStringEv()
  %11 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %8, ptr noundef %2)
  %12 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 3
  store ptr %11, ptr %12, align 8, !tbaa !53
  %13 = tail call noundef i32 @_ZN11xercesc_2_715DOMDocumentImpl20indexofQualifiedNameEPKt(ptr noundef %2)
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %36, !prof !64

15:                                               ; preds = %3
  %16 = tail call ptr @__cxa_allocate_exception(i64 40) #11
  %17 = load ptr, ptr %0, align 8, !tbaa !47
  %18 = getelementptr inbounds ptr, ptr %17, i64 12
  %19 = load ptr, ptr %18, align 8
  %20 = invoke noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(72) %0)
          to label %21 unwind label %34

21:                                               ; preds = %15
  %22 = icmp eq ptr %20, null
  br i1 %22, label %30, label %23

23:                                               ; preds = %21
  %24 = load ptr, ptr %0, align 8, !tbaa !47
  %25 = getelementptr inbounds ptr, ptr %24, i64 12
  %26 = load ptr, ptr %25, align 8
  %27 = invoke noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(72) %0)
          to label %28 unwind label %34

28:                                               ; preds = %23
  %29 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %27, i64 0, i32 25
  br label %30

30:                                               ; preds = %21, %28
  %31 = phi ptr [ %29, %28 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %21 ]
  %32 = load ptr, ptr %31, align 8, !tbaa !65
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %16, i16 noundef signext 14, ptr noundef null, ptr noundef %32)
          to label %33 unwind label %34

33:                                               ; preds = %30
  tail call void @__cxa_throw(ptr nonnull %16, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #12
  unreachable

34:                                               ; preds = %30, %23, %15
  %35 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %16) #11
  br label %231

36:                                               ; preds = %3
  %37 = icmp eq i32 %13, 0
  br i1 %37, label %38, label %120, !prof !66

38:                                               ; preds = %36
  %39 = load ptr, ptr %12, align 8, !tbaa !53
  %40 = icmp eq ptr %39, null
  %41 = icmp eq ptr %9, null
  %42 = or i1 %41, %40
  br i1 %42, label %47, label %43, !prof !67

43:                                               ; preds = %38
  %44 = load i16, ptr %39, align 2, !tbaa !68
  %45 = load i16, ptr %9, align 2, !tbaa !68
  %46 = icmp eq i16 %44, %45
  br i1 %46, label %56, label %67, !prof !69

47:                                               ; preds = %38
  br i1 %40, label %51, label %48

48:                                               ; preds = %47
  %49 = load i16, ptr %39, align 2, !tbaa !68
  %50 = icmp eq i16 %49, 0
  br i1 %50, label %51, label %67

51:                                               ; preds = %48, %47
  br i1 %41, label %55, label %52

52:                                               ; preds = %51
  %53 = load i16, ptr %9, align 2, !tbaa !68
  %54 = icmp eq i16 %53, 0
  br i1 %54, label %55, label %67

55:                                               ; preds = %52, %51
  br label %67

56:                                               ; preds = %43, %61
  %57 = phi i16 [ %64, %61 ], [ %44, %43 ]
  %58 = phi ptr [ %63, %61 ], [ %9, %43 ]
  %59 = phi ptr [ %62, %61 ], [ %39, %43 ]
  %60 = icmp eq i16 %57, 0
  br i1 %60, label %67, label %61, !prof !70

61:                                               ; preds = %56
  %62 = getelementptr inbounds i16, ptr %59, i64 1
  %63 = getelementptr inbounds i16, ptr %58, i64 1
  %64 = load i16, ptr %62, align 2, !tbaa !68
  %65 = load i16, ptr %63, align 2, !tbaa !68
  %66 = icmp eq i16 %64, %65
  br i1 %66, label %56, label %67, !prof !71, !llvm.loop !72

67:                                               ; preds = %56, %61, %43, %48, %52, %55
  %68 = phi i1 [ true, %55 ], [ false, %52 ], [ false, %48 ], [ false, %43 ], [ %60, %61 ], [ %60, %56 ]
  br i1 %68, label %69, label %209, !prof !75

69:                                               ; preds = %67
  %70 = icmp eq ptr %1, null
  %71 = icmp eq ptr %10, null
  %72 = or i1 %70, %71
  br i1 %72, label %77, label %73, !prof !76

73:                                               ; preds = %69
  %74 = load i16, ptr %1, align 2, !tbaa !68
  %75 = load i16, ptr %10, align 2, !tbaa !68
  %76 = icmp eq i16 %74, %75
  br i1 %76, label %85, label %96, !prof !77

77:                                               ; preds = %69
  br i1 %70, label %81, label %78

78:                                               ; preds = %77
  %79 = load i16, ptr %1, align 2, !tbaa !68
  %80 = icmp eq i16 %79, 0
  br i1 %80, label %81, label %96

81:                                               ; preds = %78, %77
  br i1 %71, label %117, label %82

82:                                               ; preds = %81
  %83 = load i16, ptr %10, align 2, !tbaa !68
  %84 = icmp eq i16 %83, 0
  br i1 %84, label %117, label %96

85:                                               ; preds = %73, %90
  %86 = phi i16 [ %93, %90 ], [ %74, %73 ]
  %87 = phi ptr [ %92, %90 ], [ %10, %73 ]
  %88 = phi ptr [ %91, %90 ], [ %1, %73 ]
  %89 = icmp eq i16 %86, 0
  br i1 %89, label %117, label %90, !prof !78

90:                                               ; preds = %85
  %91 = getelementptr inbounds i16, ptr %88, i64 1
  %92 = getelementptr inbounds i16, ptr %87, i64 1
  %93 = load i16, ptr %91, align 2, !tbaa !68
  %94 = load i16, ptr %92, align 2, !tbaa !68
  %95 = icmp eq i16 %93, %94
  br i1 %95, label %85, label %96, !prof !79, !llvm.loop !72

96:                                               ; preds = %90, %73, %82, %78
  %97 = tail call ptr @__cxa_allocate_exception(i64 40) #11
  %98 = load ptr, ptr %0, align 8, !tbaa !47
  %99 = getelementptr inbounds ptr, ptr %98, i64 12
  %100 = load ptr, ptr %99, align 8
  %101 = invoke noundef ptr %100(ptr noundef nonnull align 8 dereferenceable(72) %0)
          to label %102 unwind label %115

102:                                              ; preds = %96
  %103 = icmp eq ptr %101, null
  br i1 %103, label %111, label %104

104:                                              ; preds = %102
  %105 = load ptr, ptr %0, align 8, !tbaa !47
  %106 = getelementptr inbounds ptr, ptr %105, i64 12
  %107 = load ptr, ptr %106, align 8
  %108 = invoke noundef ptr %107(ptr noundef nonnull align 8 dereferenceable(72) %0)
          to label %109 unwind label %115

109:                                              ; preds = %104
  %110 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %108, i64 0, i32 25
  br label %111

111:                                              ; preds = %102, %109
  %112 = phi ptr [ %110, %109 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %102 ]
  %113 = load ptr, ptr %112, align 8, !tbaa !65
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %97, i16 noundef signext 14, ptr noundef null, ptr noundef %113)
          to label %114 unwind label %115

114:                                              ; preds = %111
  tail call void @__cxa_throw(ptr nonnull %97, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #12
  unreachable

115:                                              ; preds = %111, %104, %96
  %116 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %97) #11
  br label %231

117:                                              ; preds = %85, %81, %82
  %118 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrNSImpl", ptr %0, i64 0, i32 3
  store ptr null, ptr %118, align 8, !tbaa !80
  %119 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrNSImpl", ptr %0, i64 0, i32 2
  store ptr %39, ptr %119, align 8, !tbaa !82
  br i1 %68, label %223, label %212, !prof !77

120:                                              ; preds = %36
  call void @llvm.lifetime.start.p0(i64 8000, ptr nonnull %4) #11
  %121 = icmp sgt i32 %13, 3998
  br i1 %121, label %122, label %150, !prof !76

122:                                              ; preds = %120
  %123 = load ptr, ptr %0, align 8, !tbaa !47
  %124 = getelementptr inbounds ptr, ptr %123, i64 12
  %125 = load ptr, ptr %124, align 8
  %126 = tail call noundef ptr %125(ptr noundef nonnull align 8 dereferenceable(72) %0)
  %127 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %126, i64 0, i32 25
  %128 = load ptr, ptr %127, align 8, !tbaa !83
  %129 = icmp eq ptr %2, null
  br i1 %129, label %144, label %130

130:                                              ; preds = %122
  %131 = load i16, ptr %2, align 2, !tbaa !68
  %132 = icmp eq i16 %131, 0
  br i1 %132, label %144, label %133

133:                                              ; preds = %130, %133
  %134 = phi ptr [ %135, %133 ], [ %2, %130 ]
  %135 = getelementptr inbounds i16, ptr %134, i64 1
  %136 = load i16, ptr %135, align 2, !tbaa !68
  %137 = icmp eq i16 %136, 0
  br i1 %137, label %138, label %133, !llvm.loop !94

138:                                              ; preds = %133
  %139 = ptrtoint ptr %135 to i64
  %140 = ptrtoint ptr %2 to i64
  %141 = sub i64 %139, %140
  %142 = add i64 %141, 2
  %143 = and i64 %142, 8589934590
  br label %144

144:                                              ; preds = %122, %130, %138
  %145 = phi i64 [ %143, %138 ], [ 2, %130 ], [ 2, %122 ]
  %146 = load ptr, ptr %128, align 8, !tbaa !47
  %147 = getelementptr inbounds ptr, ptr %146, i64 2
  %148 = load ptr, ptr %147, align 8
  %149 = tail call noundef ptr %148(ptr noundef nonnull align 8 dereferenceable(8) %128, i64 noundef %145)
  br label %150

150:                                              ; preds = %120, %144
  %151 = phi ptr [ %149, %144 ], [ %4, %120 ]
  %152 = load ptr, ptr %12, align 8, !tbaa !53
  %153 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString11copyNStringEPtPKtj(ptr noundef %151, ptr noundef %152, i32 noundef %13)
  %154 = zext nneg i32 %13 to i64
  %155 = getelementptr inbounds i16, ptr %151, i64 %154
  store i16 0, ptr %155, align 2, !tbaa !68
  %156 = call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %8, ptr noundef %151)
  %157 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrNSImpl", ptr %0, i64 0, i32 3
  store ptr %156, ptr %157, align 8, !tbaa !80
  %158 = load ptr, ptr %12, align 8, !tbaa !53
  %159 = getelementptr inbounds i16, ptr %158, i64 %154
  %160 = getelementptr inbounds i16, ptr %159, i64 1
  %161 = call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %8, ptr noundef nonnull %160)
  %162 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrNSImpl", ptr %0, i64 0, i32 2
  store ptr %161, ptr %162, align 8, !tbaa !82
  br i1 %121, label %163, label %173, !prof !76

163:                                              ; preds = %150
  %164 = load ptr, ptr %0, align 8, !tbaa !47
  %165 = getelementptr inbounds ptr, ptr %164, i64 12
  %166 = load ptr, ptr %165, align 8
  %167 = call noundef ptr %166(ptr noundef nonnull align 8 dereferenceable(72) %0)
  %168 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %167, i64 0, i32 25
  %169 = load ptr, ptr %168, align 8, !tbaa !83
  %170 = load ptr, ptr %169, align 8, !tbaa !47
  %171 = getelementptr inbounds ptr, ptr %170, i64 3
  %172 = load ptr, ptr %171, align 8
  call void %172(ptr noundef nonnull align 8 dereferenceable(8) %169, ptr noundef %151)
  br label %173

173:                                              ; preds = %163, %150
  %174 = load ptr, ptr %0, align 8, !tbaa !47
  %175 = getelementptr inbounds ptr, ptr %174, i64 12
  %176 = load ptr, ptr %175, align 8
  %177 = call noundef ptr %176(ptr noundef nonnull align 8 dereferenceable(72) %0), !prof !95
  %178 = load ptr, ptr %157, align 8, !tbaa !80
  %179 = call noundef zeroext i1 @_ZN11xercesc_2_715DOMDocumentImpl9isXMLNameEPKt(ptr noundef nonnull align 8 dereferenceable(293) %177, ptr noundef %178)
  br i1 %179, label %180, label %187, !prof !77

180:                                              ; preds = %173
  %181 = load ptr, ptr %0, align 8, !tbaa !47
  %182 = getelementptr inbounds ptr, ptr %181, i64 12
  %183 = load ptr, ptr %182, align 8
  %184 = call noundef ptr %183(ptr noundef nonnull align 8 dereferenceable(72) %0), !prof !95
  %185 = load ptr, ptr %162, align 8, !tbaa !82
  %186 = call noundef zeroext i1 @_ZN11xercesc_2_715DOMDocumentImpl9isXMLNameEPKt(ptr noundef nonnull align 8 dereferenceable(293) %184, ptr noundef %185)
  br i1 %186, label %208, label %187, !prof !77

187:                                              ; preds = %180, %173
  %188 = call ptr @__cxa_allocate_exception(i64 40) #11
  %189 = load ptr, ptr %0, align 8, !tbaa !47
  %190 = getelementptr inbounds ptr, ptr %189, i64 12
  %191 = load ptr, ptr %190, align 8
  %192 = invoke noundef ptr %191(ptr noundef nonnull align 8 dereferenceable(72) %0)
          to label %193 unwind label %206

193:                                              ; preds = %187
  %194 = icmp eq ptr %192, null
  br i1 %194, label %202, label %195

195:                                              ; preds = %193
  %196 = load ptr, ptr %0, align 8, !tbaa !47
  %197 = getelementptr inbounds ptr, ptr %196, i64 12
  %198 = load ptr, ptr %197, align 8
  %199 = invoke noundef ptr %198(ptr noundef nonnull align 8 dereferenceable(72) %0)
          to label %200 unwind label %206

200:                                              ; preds = %195
  %201 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %199, i64 0, i32 25
  br label %202

202:                                              ; preds = %193, %200
  %203 = phi ptr [ %201, %200 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %193 ]
  %204 = load ptr, ptr %203, align 8, !tbaa !65
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %188, i16 noundef signext 14, ptr noundef null, ptr noundef %204)
          to label %205 unwind label %206

205:                                              ; preds = %202
  call void @__cxa_throw(ptr nonnull %188, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #12
  unreachable

206:                                              ; preds = %202, %195, %187
  %207 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %188) #11
  call void @llvm.lifetime.end.p0(i64 8000, ptr nonnull %4) #11
  br label %231

208:                                              ; preds = %180
  call void @llvm.lifetime.end.p0(i64 8000, ptr nonnull %4) #11
  br label %212

209:                                              ; preds = %67
  %210 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrNSImpl", ptr %0, i64 0, i32 3
  store ptr null, ptr %210, align 8, !tbaa !80
  %211 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrNSImpl", ptr %0, i64 0, i32 2
  store ptr %39, ptr %211, align 8, !tbaa !82
  br label %212

212:                                              ; preds = %209, %208, %117
  %213 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrNSImpl", ptr %0, i64 0, i32 3
  %214 = load ptr, ptr %213, align 8, !tbaa !80
  %215 = icmp eq ptr %1, null
  br i1 %215, label %220, label %216, !prof !96

216:                                              ; preds = %212
  %217 = load i16, ptr %1, align 2, !tbaa !68
  %218 = icmp eq i16 %217, 0
  %219 = select i1 %218, ptr null, ptr %1, !prof !76
  br label %220

220:                                              ; preds = %216, %212
  %221 = phi ptr [ null, %212 ], [ %219, %216 ]
  %222 = call noundef ptr @_ZN11xercesc_2_711DOMNodeImpl9mapPrefixEPKtS2_s(ptr noundef %214, ptr noundef %221, i16 noundef signext 2)
  br label %223

223:                                              ; preds = %117, %220
  %224 = phi ptr [ %222, %220 ], [ %10, %117 ]
  %225 = icmp eq ptr %224, null
  br i1 %225, label %228, label %226, !prof !97

226:                                              ; preds = %223
  %227 = call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %8, ptr noundef nonnull %224)
  br label %228

228:                                              ; preds = %223, %226
  %229 = phi ptr [ %227, %226 ], [ null, %223 ]
  %230 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrNSImpl", ptr %0, i64 0, i32 1
  store ptr %229, ptr %230, align 8, !tbaa !98
  ret void

231:                                              ; preds = %115, %206, %34
  %232 = phi { ptr, i32 } [ %35, %34 ], [ %116, %115 ], [ %207, %206 ]
  resume { ptr, i32 } %232
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_713DOMAttrNSImplC2ERKS0_b(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, i1 noundef zeroext %2) unnamed_addr #1 align 2 !prof !46 {
  tail call void @_ZN11xercesc_2_711DOMAttrImplC2ERKS0_b(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i1 noundef zeroext %2)
  store ptr getelementptr inbounds ({ [54 x ptr] }, ptr @_ZTVN11xercesc_2_713DOMAttrNSImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !47
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrNSImpl", ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !98
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrNSImpl", ptr %0, i64 0, i32 1
  store ptr %5, ptr %6, align 8, !tbaa !98
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrNSImpl", ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !82
  %9 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrNSImpl", ptr %0, i64 0, i32 2
  store ptr %8, ptr %9, align 8, !tbaa !82
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrNSImpl", ptr %1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !80
  %12 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrNSImpl", ptr %0, i64 0, i32 3
  store ptr %11, ptr %12, align 8, !tbaa !80
  ret void
}

declare void @_ZN11xercesc_2_711DOMAttrImplC2ERKS0_b(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i1 noundef zeroext) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_713DOMAttrNSImpl9cloneNodeEb(ptr noundef nonnull align 8 dereferenceable(96) %0, i1 noundef zeroext %1) unnamed_addr #1 align 2 !prof !46 {
  %3 = load ptr, ptr %0, align 8, !tbaa !47
  %4 = getelementptr inbounds ptr, ptr %3, i64 12
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(72) %0)
  %7 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEmNS0_14NodeObjectTypeE(ptr noundef nonnull align 8 dereferenceable(293) %6, i64 noundef 96, i32 noundef 1)
  tail call void @_ZN11xercesc_2_711DOMAttrImplC2ERKS0_b(ptr noundef nonnull align 8 dereferenceable(72) %7, ptr noundef nonnull align 8 dereferenceable(72) %0, i1 noundef zeroext %1)
  store ptr getelementptr inbounds ({ [54 x ptr] }, ptr @_ZTVN11xercesc_2_713DOMAttrNSImplE, i64 0, inrange i32 0, i64 2), ptr %7, align 8, !tbaa !47
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrNSImpl", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !98
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrNSImpl", ptr %7, i64 0, i32 1
  store ptr %9, ptr %10, align 8, !tbaa !98
  %11 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrNSImpl", ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !82
  %13 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrNSImpl", ptr %7, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !82
  %14 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrNSImpl", ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !80
  %16 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrNSImpl", ptr %7, i64 0, i32 3
  store ptr %15, ptr %16, align 8, !tbaa !80
  %17 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 1
  tail call void @_ZNK11xercesc_2_711DOMNodeImpl20callUserDataHandlersENS_18DOMUserDataHandler16DOMOperationTypeEPKNS_7DOMNodeES5_(ptr noundef nonnull align 8 dereferenceable(10) %17, i32 noundef 1, ptr noundef nonnull %0, ptr noundef nonnull %7)
  ret ptr %7
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

declare void @_ZNK11xercesc_2_711DOMNodeImpl20callUserDataHandlersENS_18DOMUserDataHandler16DOMOperationTypeEPKNS_7DOMNodeES5_(ptr noundef nonnull align 8 dereferenceable(10), i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_713DOMAttrNSImpl15getNamespaceURIEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(96) %0) unnamed_addr #5 align 2 !prof !99 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrNSImpl", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !98
  ret ptr %3
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_713DOMAttrNSImpl9getPrefixEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(96) %0) unnamed_addr #6 align 2 !prof !46 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrNSImpl", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !80
  ret ptr %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_713DOMAttrNSImpl12getLocalNameEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(96) %0) unnamed_addr #5 align 2 !prof !99 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrNSImpl", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !82
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_713DOMAttrNSImpl9setPrefixEPKt(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !46 {
  %3 = alloca [4000 x i16], align 16
  %4 = tail call noundef ptr @_ZN11xercesc_2_711DOMNodeImpl14getXmlnsStringEv()
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 1, i32 1
  %6 = load i16, ptr %5, align 8, !tbaa !100
  %7 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl8READONLYE, align 2, !tbaa !68
  %8 = and i16 %7, %6
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %31, label %10

10:                                               ; preds = %2
  %11 = tail call ptr @__cxa_allocate_exception(i64 40) #11
  %12 = load ptr, ptr %0, align 8, !tbaa !47
  %13 = getelementptr inbounds ptr, ptr %12, i64 12
  %14 = load ptr, ptr %13, align 8
  %15 = invoke noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(72) %0)
          to label %16 unwind label %29

16:                                               ; preds = %10
  %17 = icmp eq ptr %15, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %16
  %19 = load ptr, ptr %0, align 8, !tbaa !47
  %20 = getelementptr inbounds ptr, ptr %19, i64 12
  %21 = load ptr, ptr %20, align 8
  %22 = invoke noundef ptr %21(ptr noundef nonnull align 8 dereferenceable(72) %0)
          to label %23 unwind label %29

23:                                               ; preds = %18
  %24 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %22, i64 0, i32 25
  br label %25

25:                                               ; preds = %16, %23
  %26 = phi ptr [ %24, %23 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %16 ]
  %27 = load ptr, ptr %26, align 8, !tbaa !65
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %11, i16 noundef signext 7, ptr noundef null, ptr noundef %27)
          to label %28 unwind label %29

28:                                               ; preds = %25
  tail call void @__cxa_throw(ptr nonnull %11, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #12
  unreachable

29:                                               ; preds = %25, %18, %10
  %30 = landingpad { ptr, i32 }
          cleanup
  br label %345

31:                                               ; preds = %2
  %32 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrNSImpl", ptr %0, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !98
  %34 = icmp eq ptr %33, null
  br i1 %34, label %67, label %35

35:                                               ; preds = %31
  %36 = load i16, ptr %33, align 2, !tbaa !68
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %67, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrNSImpl", ptr %0, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !82
  %41 = icmp eq ptr %40, null
  %42 = icmp eq ptr %4, null
  %43 = or i1 %42, %41
  br i1 %43, label %48, label %44

44:                                               ; preds = %38
  %45 = load i16, ptr %40, align 2, !tbaa !68
  %46 = load i16, ptr %4, align 2, !tbaa !68
  %47 = icmp eq i16 %45, %46
  br i1 %47, label %56, label %88

48:                                               ; preds = %38
  br i1 %41, label %52, label %49

49:                                               ; preds = %48
  %50 = load i16, ptr %40, align 2, !tbaa !68
  %51 = icmp eq i16 %50, 0
  br i1 %51, label %52, label %88

52:                                               ; preds = %49, %48
  br i1 %42, label %67, label %53

53:                                               ; preds = %52
  %54 = load i16, ptr %4, align 2, !tbaa !68
  %55 = icmp eq i16 %54, 0
  br i1 %55, label %67, label %88

56:                                               ; preds = %44, %61
  %57 = phi i16 [ %64, %61 ], [ %45, %44 ]
  %58 = phi ptr [ %63, %61 ], [ %4, %44 ]
  %59 = phi ptr [ %62, %61 ], [ %40, %44 ]
  %60 = icmp eq i16 %57, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %56
  %62 = getelementptr inbounds i16, ptr %59, i64 1
  %63 = getelementptr inbounds i16, ptr %58, i64 1
  %64 = load i16, ptr %62, align 2, !tbaa !68
  %65 = load i16, ptr %63, align 2, !tbaa !68
  %66 = icmp eq i16 %64, %65
  br i1 %66, label %56, label %88, !llvm.loop !72

67:                                               ; preds = %56, %53, %52, %35, %31
  %68 = tail call ptr @__cxa_allocate_exception(i64 40) #11
  %69 = load ptr, ptr %0, align 8, !tbaa !47
  %70 = getelementptr inbounds ptr, ptr %69, i64 12
  %71 = load ptr, ptr %70, align 8
  %72 = invoke noundef ptr %71(ptr noundef nonnull align 8 dereferenceable(72) %0)
          to label %73 unwind label %86

73:                                               ; preds = %67
  %74 = icmp eq ptr %72, null
  br i1 %74, label %82, label %75

75:                                               ; preds = %73
  %76 = load ptr, ptr %0, align 8, !tbaa !47
  %77 = getelementptr inbounds ptr, ptr %76, i64 12
  %78 = load ptr, ptr %77, align 8
  %79 = invoke noundef ptr %78(ptr noundef nonnull align 8 dereferenceable(72) %0)
          to label %80 unwind label %86

80:                                               ; preds = %75
  %81 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %79, i64 0, i32 25
  br label %82

82:                                               ; preds = %73, %80
  %83 = phi ptr [ %81, %80 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %73 ]
  %84 = load ptr, ptr %83, align 8, !tbaa !65
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %68, i16 noundef signext 14, ptr noundef null, ptr noundef %84)
          to label %85 unwind label %86

85:                                               ; preds = %82
  tail call void @__cxa_throw(ptr nonnull %68, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #12
  unreachable

86:                                               ; preds = %82, %75, %67
  %87 = landingpad { ptr, i32 }
          cleanup
  br label %345

88:                                               ; preds = %61, %44, %53, %49
  %89 = icmp eq ptr %1, null
  br i1 %89, label %93, label %90

90:                                               ; preds = %88
  %91 = load i16, ptr %1, align 2, !tbaa !68
  %92 = icmp eq i16 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %90, %88
  %94 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 3
  store ptr %40, ptr %94, align 8, !tbaa !53
  %95 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrNSImpl", ptr %0, i64 0, i32 3
  store ptr null, ptr %95, align 8, !tbaa !80
  br label %344

96:                                               ; preds = %90
  %97 = load ptr, ptr %0, align 8, !tbaa !47
  %98 = getelementptr inbounds ptr, ptr %97, i64 12
  %99 = load ptr, ptr %98, align 8
  %100 = tail call noundef ptr %99(ptr noundef nonnull align 8 dereferenceable(72) %0)
  %101 = tail call noundef zeroext i1 @_ZN11xercesc_2_715DOMDocumentImpl9isXMLNameEPKt(ptr noundef nonnull align 8 dereferenceable(293) %100, ptr noundef nonnull %1)
  br i1 %101, label %123, label %102

102:                                              ; preds = %96
  %103 = tail call ptr @__cxa_allocate_exception(i64 40) #11
  %104 = load ptr, ptr %0, align 8, !tbaa !47
  %105 = getelementptr inbounds ptr, ptr %104, i64 12
  %106 = load ptr, ptr %105, align 8
  %107 = invoke noundef ptr %106(ptr noundef nonnull align 8 dereferenceable(72) %0)
          to label %108 unwind label %121

108:                                              ; preds = %102
  %109 = icmp eq ptr %107, null
  br i1 %109, label %117, label %110

110:                                              ; preds = %108
  %111 = load ptr, ptr %0, align 8, !tbaa !47
  %112 = getelementptr inbounds ptr, ptr %111, i64 12
  %113 = load ptr, ptr %112, align 8
  %114 = invoke noundef ptr %113(ptr noundef nonnull align 8 dereferenceable(72) %0)
          to label %115 unwind label %121

115:                                              ; preds = %110
  %116 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %114, i64 0, i32 25
  br label %117

117:                                              ; preds = %108, %115
  %118 = phi ptr [ %116, %115 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %108 ]
  %119 = load ptr, ptr %118, align 8, !tbaa !65
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %103, i16 noundef signext 5, ptr noundef null, ptr noundef %119)
          to label %120 unwind label %121

120:                                              ; preds = %117
  tail call void @__cxa_throw(ptr nonnull %103, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #12
  unreachable

121:                                              ; preds = %117, %110, %102
  %122 = landingpad { ptr, i32 }
          cleanup
  br label %345

123:                                              ; preds = %96
  %124 = tail call noundef ptr @_ZN11xercesc_2_711DOMNodeImpl12getXmlStringEv()
  %125 = tail call noundef ptr @_ZN11xercesc_2_711DOMNodeImpl15getXmlURIStringEv()
  %126 = tail call noundef ptr @_ZN11xercesc_2_711DOMNodeImpl17getXmlnsURIStringEv()
  %127 = icmp eq ptr %124, null
  %128 = load i16, ptr %1, align 2, !tbaa !68
  br i1 %127, label %132, label %129

129:                                              ; preds = %123
  %130 = load i16, ptr %124, align 2, !tbaa !68
  %131 = icmp eq i16 %128, %130
  br i1 %131, label %134, label %173

132:                                              ; preds = %123
  %133 = icmp eq i16 %128, 0
  br i1 %133, label %145, label %173

134:                                              ; preds = %129, %139
  %135 = phi i16 [ %142, %139 ], [ %128, %129 ]
  %136 = phi ptr [ %141, %139 ], [ %124, %129 ]
  %137 = phi ptr [ %140, %139 ], [ %1, %129 ]
  %138 = icmp eq i16 %135, 0
  br i1 %138, label %145, label %139

139:                                              ; preds = %134
  %140 = getelementptr inbounds i16, ptr %137, i64 1
  %141 = getelementptr inbounds i16, ptr %136, i64 1
  %142 = load i16, ptr %140, align 2, !tbaa !68
  %143 = load i16, ptr %141, align 2, !tbaa !68
  %144 = icmp eq i16 %142, %143
  br i1 %144, label %134, label %173, !llvm.loop !72

145:                                              ; preds = %134, %132
  %146 = load ptr, ptr %32, align 8, !tbaa !98
  %147 = icmp eq ptr %146, null
  %148 = icmp eq ptr %125, null
  %149 = or i1 %148, %147
  br i1 %149, label %154, label %150

150:                                              ; preds = %145
  %151 = load i16, ptr %146, align 2, !tbaa !68
  %152 = load i16, ptr %125, align 2, !tbaa !68
  %153 = icmp eq i16 %151, %152
  br i1 %153, label %162, label %219

154:                                              ; preds = %145
  br i1 %147, label %158, label %155

155:                                              ; preds = %154
  %156 = load i16, ptr %146, align 2, !tbaa !68
  %157 = icmp eq i16 %156, 0
  br i1 %157, label %158, label %219

158:                                              ; preds = %155, %154
  br i1 %148, label %173, label %159

159:                                              ; preds = %158
  %160 = load i16, ptr %125, align 2, !tbaa !68
  %161 = icmp eq i16 %160, 0
  br i1 %161, label %173, label %219

162:                                              ; preds = %150, %167
  %163 = phi i16 [ %170, %167 ], [ %151, %150 ]
  %164 = phi ptr [ %169, %167 ], [ %125, %150 ]
  %165 = phi ptr [ %168, %167 ], [ %146, %150 ]
  %166 = icmp eq i16 %163, 0
  br i1 %166, label %173, label %167

167:                                              ; preds = %162
  %168 = getelementptr inbounds i16, ptr %165, i64 1
  %169 = getelementptr inbounds i16, ptr %164, i64 1
  %170 = load i16, ptr %168, align 2, !tbaa !68
  %171 = load i16, ptr %169, align 2, !tbaa !68
  %172 = icmp eq i16 %170, %171
  br i1 %172, label %162, label %219, !llvm.loop !72

173:                                              ; preds = %139, %162, %129, %159, %158, %132
  %174 = load i16, ptr %1, align 2, !tbaa !68
  br i1 %42, label %178, label %175

175:                                              ; preds = %173
  %176 = load i16, ptr %4, align 2, !tbaa !68
  %177 = icmp eq i16 %174, %176
  br i1 %177, label %180, label %240

178:                                              ; preds = %173
  %179 = icmp eq i16 %174, 0
  br i1 %179, label %191, label %240

180:                                              ; preds = %175, %185
  %181 = phi i16 [ %188, %185 ], [ %174, %175 ]
  %182 = phi ptr [ %187, %185 ], [ %4, %175 ]
  %183 = phi ptr [ %186, %185 ], [ %1, %175 ]
  %184 = icmp eq i16 %181, 0
  br i1 %184, label %191, label %185

185:                                              ; preds = %180
  %186 = getelementptr inbounds i16, ptr %183, i64 1
  %187 = getelementptr inbounds i16, ptr %182, i64 1
  %188 = load i16, ptr %186, align 2, !tbaa !68
  %189 = load i16, ptr %187, align 2, !tbaa !68
  %190 = icmp eq i16 %188, %189
  br i1 %190, label %180, label %240, !llvm.loop !72

191:                                              ; preds = %180, %178
  %192 = load ptr, ptr %32, align 8, !tbaa !98
  %193 = icmp eq ptr %192, null
  %194 = icmp eq ptr %126, null
  %195 = or i1 %194, %193
  br i1 %195, label %200, label %196

196:                                              ; preds = %191
  %197 = load i16, ptr %192, align 2, !tbaa !68
  %198 = load i16, ptr %126, align 2, !tbaa !68
  %199 = icmp eq i16 %197, %198
  br i1 %199, label %208, label %219

200:                                              ; preds = %191
  br i1 %193, label %204, label %201

201:                                              ; preds = %200
  %202 = load i16, ptr %192, align 2, !tbaa !68
  %203 = icmp eq i16 %202, 0
  br i1 %203, label %204, label %219

204:                                              ; preds = %201, %200
  br i1 %194, label %240, label %205

205:                                              ; preds = %204
  %206 = load i16, ptr %126, align 2, !tbaa !68
  %207 = icmp eq i16 %206, 0
  br i1 %207, label %240, label %219

208:                                              ; preds = %196, %213
  %209 = phi i16 [ %216, %213 ], [ %197, %196 ]
  %210 = phi ptr [ %215, %213 ], [ %126, %196 ]
  %211 = phi ptr [ %214, %213 ], [ %192, %196 ]
  %212 = icmp eq i16 %209, 0
  br i1 %212, label %240, label %213

213:                                              ; preds = %208
  %214 = getelementptr inbounds i16, ptr %211, i64 1
  %215 = getelementptr inbounds i16, ptr %210, i64 1
  %216 = load i16, ptr %214, align 2, !tbaa !68
  %217 = load i16, ptr %215, align 2, !tbaa !68
  %218 = icmp eq i16 %216, %217
  br i1 %218, label %208, label %219, !llvm.loop !72

219:                                              ; preds = %167, %213, %150, %196, %205, %201, %159, %155
  %220 = tail call ptr @__cxa_allocate_exception(i64 40) #11
  %221 = load ptr, ptr %0, align 8, !tbaa !47
  %222 = getelementptr inbounds ptr, ptr %221, i64 12
  %223 = load ptr, ptr %222, align 8
  %224 = invoke noundef ptr %223(ptr noundef nonnull align 8 dereferenceable(72) %0)
          to label %225 unwind label %238

225:                                              ; preds = %219
  %226 = icmp eq ptr %224, null
  br i1 %226, label %234, label %227

227:                                              ; preds = %225
  %228 = load ptr, ptr %0, align 8, !tbaa !47
  %229 = getelementptr inbounds ptr, ptr %228, i64 12
  %230 = load ptr, ptr %229, align 8
  %231 = invoke noundef ptr %230(ptr noundef nonnull align 8 dereferenceable(72) %0)
          to label %232 unwind label %238

232:                                              ; preds = %227
  %233 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %231, i64 0, i32 25
  br label %234

234:                                              ; preds = %225, %232
  %235 = phi ptr [ %233, %232 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %225 ]
  %236 = load ptr, ptr %235, align 8, !tbaa !65
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %220, i16 noundef signext 14, ptr noundef null, ptr noundef %236)
          to label %237 unwind label %238

237:                                              ; preds = %234
  tail call void @__cxa_throw(ptr nonnull %220, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #12
  unreachable

238:                                              ; preds = %234, %227, %219
  %239 = landingpad { ptr, i32 }
          cleanup
  br label %345

240:                                              ; preds = %185, %208, %175, %204, %205, %178
  %241 = tail call noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef nonnull %1, i16 noundef zeroext 58)
  %242 = icmp eq i32 %241, -1
  br i1 %242, label %264, label %243

243:                                              ; preds = %240
  %244 = tail call ptr @__cxa_allocate_exception(i64 40) #11
  %245 = load ptr, ptr %0, align 8, !tbaa !47
  %246 = getelementptr inbounds ptr, ptr %245, i64 12
  %247 = load ptr, ptr %246, align 8
  %248 = invoke noundef ptr %247(ptr noundef nonnull align 8 dereferenceable(72) %0)
          to label %249 unwind label %262

249:                                              ; preds = %243
  %250 = icmp eq ptr %248, null
  br i1 %250, label %258, label %251

251:                                              ; preds = %249
  %252 = load ptr, ptr %0, align 8, !tbaa !47
  %253 = getelementptr inbounds ptr, ptr %252, i64 12
  %254 = load ptr, ptr %253, align 8
  %255 = invoke noundef ptr %254(ptr noundef nonnull align 8 dereferenceable(72) %0)
          to label %256 unwind label %262

256:                                              ; preds = %251
  %257 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %255, i64 0, i32 25
  br label %258

258:                                              ; preds = %249, %256
  %259 = phi ptr [ %257, %256 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %249 ]
  %260 = load ptr, ptr %259, align 8, !tbaa !65
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %244, i16 noundef signext 14, ptr noundef null, ptr noundef %260)
          to label %261 unwind label %262

261:                                              ; preds = %258
  tail call void @__cxa_throw(ptr nonnull %244, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #12
  unreachable

262:                                              ; preds = %258, %251, %243
  %263 = landingpad { ptr, i32 }
          cleanup
  br label %345

264:                                              ; preds = %240
  %265 = load ptr, ptr %0, align 8, !tbaa !47
  %266 = getelementptr inbounds ptr, ptr %265, i64 12
  %267 = load ptr, ptr %266, align 8
  %268 = tail call noundef ptr %267(ptr noundef nonnull align 8 dereferenceable(72) %0)
  %269 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %268, ptr noundef nonnull %1)
  %270 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrNSImpl", ptr %0, i64 0, i32 3
  store ptr %269, ptr %270, align 8, !tbaa !80
  %271 = load i16, ptr %1, align 2, !tbaa !68
  %272 = icmp eq i16 %271, 0
  br i1 %272, label %284, label %273

273:                                              ; preds = %264, %273
  %274 = phi ptr [ %275, %273 ], [ %1, %264 ]
  %275 = getelementptr inbounds i16, ptr %274, i64 1
  %276 = load i16, ptr %275, align 2, !tbaa !68
  %277 = icmp eq i16 %276, 0
  br i1 %277, label %278, label %273, !llvm.loop !94

278:                                              ; preds = %273
  %279 = ptrtoint ptr %275 to i64
  %280 = ptrtoint ptr %1 to i64
  %281 = sub i64 %279, %280
  %282 = lshr exact i64 %281, 1
  %283 = trunc i64 %282 to i32
  br label %284

284:                                              ; preds = %264, %278
  %285 = phi i32 [ %283, %278 ], [ 0, %264 ]
  %286 = add nsw i32 %285, 1
  %287 = load ptr, ptr %39, align 8, !tbaa !82
  %288 = icmp eq ptr %287, null
  br i1 %288, label %303, label %289

289:                                              ; preds = %284
  %290 = load i16, ptr %287, align 2, !tbaa !68
  %291 = icmp eq i16 %290, 0
  br i1 %291, label %303, label %292

292:                                              ; preds = %289, %292
  %293 = phi ptr [ %294, %292 ], [ %287, %289 ]
  %294 = getelementptr inbounds i16, ptr %293, i64 1
  %295 = load i16, ptr %294, align 2, !tbaa !68
  %296 = icmp eq i16 %295, 0
  br i1 %296, label %297, label %292, !llvm.loop !94

297:                                              ; preds = %292
  %298 = ptrtoint ptr %294 to i64
  %299 = ptrtoint ptr %287 to i64
  %300 = sub i64 %298, %299
  %301 = lshr exact i64 %300, 1
  %302 = trunc i64 %301 to i32
  br label %303

303:                                              ; preds = %284, %289, %297
  %304 = phi i32 [ %302, %297 ], [ 0, %289 ], [ 0, %284 ]
  %305 = add i32 %304, %286
  call void @llvm.lifetime.start.p0(i64 8000, ptr nonnull %3) #11
  %306 = icmp sgt i32 %305, 3998
  br i1 %306, label %307, label %320

307:                                              ; preds = %303
  %308 = load ptr, ptr %0, align 8, !tbaa !47
  %309 = getelementptr inbounds ptr, ptr %308, i64 12
  %310 = load ptr, ptr %309, align 8
  %311 = tail call noundef ptr %310(ptr noundef nonnull align 8 dereferenceable(72) %0)
  %312 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %311, i64 0, i32 25
  %313 = load ptr, ptr %312, align 8, !tbaa !83
  %314 = shl nuw i32 %305, 1
  %315 = zext i32 %314 to i64
  %316 = load ptr, ptr %313, align 8, !tbaa !47
  %317 = getelementptr inbounds ptr, ptr %316, i64 2
  %318 = load ptr, ptr %317, align 8
  %319 = tail call noundef ptr %318(ptr noundef nonnull align 8 dereferenceable(8) %313, i64 noundef %315)
  br label %320

320:                                              ; preds = %303, %307
  %321 = phi ptr [ %319, %307 ], [ %3, %303 ]
  call void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef %321, ptr noundef nonnull %1)
  %322 = sext i32 %285 to i64
  %323 = getelementptr inbounds i16, ptr %321, i64 %322
  store i16 58, ptr %323, align 2, !tbaa !68
  %324 = sext i32 %286 to i64
  %325 = getelementptr inbounds i16, ptr %321, i64 %324
  %326 = load ptr, ptr %39, align 8, !tbaa !82
  call void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef %325, ptr noundef %326)
  %327 = load ptr, ptr %0, align 8, !tbaa !47
  %328 = getelementptr inbounds ptr, ptr %327, i64 12
  %329 = load ptr, ptr %328, align 8
  %330 = call noundef ptr %329(ptr noundef nonnull align 8 dereferenceable(72) %0)
  %331 = call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %330, ptr noundef %321)
  %332 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 3
  store ptr %331, ptr %332, align 8, !tbaa !53
  br i1 %306, label %333, label %343

333:                                              ; preds = %320
  %334 = load ptr, ptr %0, align 8, !tbaa !47
  %335 = getelementptr inbounds ptr, ptr %334, i64 12
  %336 = load ptr, ptr %335, align 8
  %337 = call noundef ptr %336(ptr noundef nonnull align 8 dereferenceable(72) %0)
  %338 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %337, i64 0, i32 25
  %339 = load ptr, ptr %338, align 8, !tbaa !83
  %340 = load ptr, ptr %339, align 8, !tbaa !47
  %341 = getelementptr inbounds ptr, ptr %340, i64 3
  %342 = load ptr, ptr %341, align 8
  call void %342(ptr noundef nonnull align 8 dereferenceable(8) %339, ptr noundef %321)
  br label %343

343:                                              ; preds = %333, %320
  call void @llvm.lifetime.end.p0(i64 8000, ptr nonnull %3) #11
  br label %344

344:                                              ; preds = %343, %93
  ret void

345:                                              ; preds = %238, %262, %121, %86, %29
  %346 = phi ptr [ %220, %238 ], [ %244, %262 ], [ %103, %121 ], [ %68, %86 ], [ %11, %29 ]
  %347 = phi { ptr, i32 } [ %239, %238 ], [ %263, %262 ], [ %122, %121 ], [ %87, %86 ], [ %30, %29 ]
  tail call void @__cxa_free_exception(ptr %346) #11
  resume { ptr, i32 } %347
}

declare noundef ptr @_ZN11xercesc_2_711DOMNodeImpl14getXmlnsStringEv() local_unnamed_addr #2

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33), i16 noundef signext, ptr noundef, ptr noundef) unnamed_addr #2

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712DOMExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(33)) unnamed_addr #7

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

declare noundef zeroext i1 @_ZN11xercesc_2_715DOMDocumentImpl9isXMLNameEPKt(ptr noundef nonnull align 8 dereferenceable(293), ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN11xercesc_2_711DOMNodeImpl12getXmlStringEv() local_unnamed_addr #2

declare noundef ptr @_ZN11xercesc_2_711DOMNodeImpl15getXmlURIStringEv() local_unnamed_addr #2

declare noundef ptr @_ZN11xercesc_2_711DOMNodeImpl17getXmlnsURIStringEv() local_unnamed_addr #2

declare noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

declare noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293), ptr noundef) local_unnamed_addr #2

declare void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_713DOMAttrNSImpl7releaseEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !46 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 1, i32 1
  %3 = load i16, ptr %2, align 8, !tbaa !100
  %4 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl5OWNEDE, align 2, !tbaa !68
  %5 = and i16 %4, %3
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %32, label %7

7:                                                ; preds = %1
  %8 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl12TOBERELEASEDE, align 2, !tbaa !68
  %9 = and i16 %8, %3
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %32

11:                                               ; preds = %7
  %12 = tail call ptr @__cxa_allocate_exception(i64 40) #11
  %13 = load ptr, ptr %0, align 8, !tbaa !47
  %14 = getelementptr inbounds ptr, ptr %13, i64 12
  %15 = load ptr, ptr %14, align 8
  %16 = invoke noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(72) %0)
          to label %17 unwind label %30

17:                                               ; preds = %11
  %18 = icmp eq ptr %16, null
  br i1 %18, label %26, label %19

19:                                               ; preds = %17
  %20 = load ptr, ptr %0, align 8, !tbaa !47
  %21 = getelementptr inbounds ptr, ptr %20, i64 12
  %22 = load ptr, ptr %21, align 8
  %23 = invoke noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(72) %0)
          to label %24 unwind label %30

24:                                               ; preds = %19
  %25 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %23, i64 0, i32 25
  br label %26

26:                                               ; preds = %17, %24
  %27 = phi ptr [ %25, %24 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %17 ]
  %28 = load ptr, ptr %27, align 8, !tbaa !65
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %12, i16 noundef signext 15, ptr noundef null, ptr noundef %28)
          to label %29 unwind label %30

29:                                               ; preds = %26
  tail call void @__cxa_throw(ptr nonnull %12, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #12
  unreachable

30:                                               ; preds = %26, %19, %11
  %31 = landingpad { ptr, i32 }
          cleanup
  br label %62

32:                                               ; preds = %7, %1
  %33 = load ptr, ptr %0, align 8, !tbaa !47
  %34 = getelementptr inbounds ptr, ptr %33, i64 12
  %35 = load ptr, ptr %34, align 8
  %36 = tail call noundef ptr %35(ptr noundef nonnull align 8 dereferenceable(72) %0)
  %37 = icmp eq ptr %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %32
  %39 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 1
  tail call void @_ZNK11xercesc_2_711DOMNodeImpl20callUserDataHandlersENS_18DOMUserDataHandler16DOMOperationTypeEPKNS_7DOMNodeES5_(ptr noundef nonnull align 8 dereferenceable(10) %39, i32 noundef 3, ptr noundef null, ptr noundef null)
  %40 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 2
  tail call void @_ZN11xercesc_2_713DOMParentNode7releaseEv(ptr noundef nonnull align 8 dereferenceable(32) %40)
  tail call void @_ZN11xercesc_2_715DOMDocumentImpl7releaseEPNS_7DOMNodeENS0_14NodeObjectTypeE(ptr noundef nonnull align 8 dereferenceable(293) %36, ptr noundef nonnull %0, i32 noundef 1)
  ret void

41:                                               ; preds = %32
  %42 = tail call ptr @__cxa_allocate_exception(i64 40) #11
  %43 = load ptr, ptr %0, align 8, !tbaa !47
  %44 = getelementptr inbounds ptr, ptr %43, i64 12
  %45 = load ptr, ptr %44, align 8
  %46 = invoke noundef ptr %45(ptr noundef nonnull align 8 dereferenceable(72) %0)
          to label %47 unwind label %60

47:                                               ; preds = %41
  %48 = icmp eq ptr %46, null
  br i1 %48, label %56, label %49

49:                                               ; preds = %47
  %50 = load ptr, ptr %0, align 8, !tbaa !47
  %51 = getelementptr inbounds ptr, ptr %50, i64 12
  %52 = load ptr, ptr %51, align 8
  %53 = invoke noundef ptr %52(ptr noundef nonnull align 8 dereferenceable(72) %0)
          to label %54 unwind label %60

54:                                               ; preds = %49
  %55 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %53, i64 0, i32 25
  br label %56

56:                                               ; preds = %47, %54
  %57 = phi ptr [ %55, %54 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %47 ]
  %58 = load ptr, ptr %57, align 8, !tbaa !65
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %42, i16 noundef signext 15, ptr noundef null, ptr noundef %58)
          to label %59 unwind label %60

59:                                               ; preds = %56
  tail call void @__cxa_throw(ptr nonnull %42, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #12
  unreachable

60:                                               ; preds = %56, %49, %41
  %61 = landingpad { ptr, i32 }
          cleanup
  br label %62

62:                                               ; preds = %60, %30
  %63 = phi ptr [ %42, %60 ], [ %12, %30 ]
  %64 = phi { ptr, i32 } [ %61, %60 ], [ %31, %30 ]
  tail call void @__cxa_free_exception(ptr %63) #11
  resume { ptr, i32 } %64
}

declare void @_ZN11xercesc_2_713DOMParentNode7releaseEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare void @_ZN11xercesc_2_715DOMDocumentImpl7releaseEPNS_7DOMNodeENS0_14NodeObjectTypeE(ptr noundef nonnull align 8 dereferenceable(293), ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_713DOMAttrNSImpl6renameEPKtS2_(ptr noundef nonnull returned align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 align 2 !prof !46 {
  %4 = load ptr, ptr %0, align 8, !tbaa !47
  %5 = getelementptr inbounds ptr, ptr %4, i64 44
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(72) %0)
  %8 = icmp eq ptr %7, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %3
  %10 = load ptr, ptr %7, align 8, !tbaa !47
  %11 = getelementptr inbounds ptr, ptr %10, i64 46
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %0)
  tail call void @_ZN11xercesc_2_713DOMAttrNSImpl7setNameEPKtS2_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2)
  %14 = load ptr, ptr %7, align 8, !tbaa !47
  %15 = getelementptr inbounds ptr, ptr %14, i64 52
  %16 = load ptr, ptr %15, align 8
  %17 = tail call noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %0)
  br label %19

18:                                               ; preds = %3
  tail call void @_ZN11xercesc_2_713DOMAttrNSImpl7setNameEPKtS2_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2)
  br label %19

19:                                               ; preds = %18, %9
  ret ptr %0
}

declare noundef i32 @_ZN11xercesc_2_715DOMDocumentImpl20indexofQualifiedNameEPKt(ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN11xercesc_2_79XMLString11copyNStringEPtPKtj(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef ptr @_ZN11xercesc_2_711DOMNodeImpl9mapPrefixEPKtS2_s(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_711DOMAttrImplD2Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713DOMAttrNSImplD0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #8 comdat align 2 !prof !46 {
  tail call void @_ZN11xercesc_2_711DOMAttrImplD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) #11
  tail call void @_ZdlPv(ptr noundef %0) #13
  ret void
}

declare noundef ptr @_ZNK11xercesc_2_711DOMAttrImpl11getNodeNameEv(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #2

declare noundef ptr @_ZNK11xercesc_2_711DOMAttrImpl12getNodeValueEv(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #2

declare noundef signext i16 @_ZNK11xercesc_2_711DOMAttrImpl11getNodeTypeEv(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #2

declare noundef ptr @_ZNK11xercesc_2_711DOMAttrImpl13getParentNodeEv(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #2

declare noundef ptr @_ZNK11xercesc_2_711DOMAttrImpl13getChildNodesEv(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #2

declare noundef ptr @_ZNK11xercesc_2_711DOMAttrImpl13getFirstChildEv(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #2

declare noundef ptr @_ZNK11xercesc_2_711DOMAttrImpl12getLastChildEv(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #2

declare noundef ptr @_ZNK11xercesc_2_711DOMAttrImpl18getPreviousSiblingEv(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #2

declare noundef ptr @_ZNK11xercesc_2_711DOMAttrImpl14getNextSiblingEv(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #2

declare noundef ptr @_ZNK11xercesc_2_711DOMAttrImpl13getAttributesEv(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #2

declare noundef ptr @_ZNK11xercesc_2_711DOMAttrImpl16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #2

declare noundef ptr @_ZN11xercesc_2_711DOMAttrImpl12insertBeforeEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, ptr noundef) unnamed_addr #2

declare noundef ptr @_ZN11xercesc_2_711DOMAttrImpl12replaceChildEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, ptr noundef) unnamed_addr #2

declare noundef ptr @_ZN11xercesc_2_711DOMAttrImpl11removeChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) unnamed_addr #2

declare noundef ptr @_ZN11xercesc_2_711DOMAttrImpl11appendChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) unnamed_addr #2

declare noundef zeroext i1 @_ZNK11xercesc_2_711DOMAttrImpl13hasChildNodesEv(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #2

declare void @_ZN11xercesc_2_711DOMAttrImpl12setNodeValueEPKt(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) unnamed_addr #2

declare void @_ZN11xercesc_2_711DOMAttrImpl9normalizeEv(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #2

declare noundef zeroext i1 @_ZNK11xercesc_2_711DOMAttrImpl11isSupportedEPKtS2_(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, ptr noundef) unnamed_addr #2

declare noundef zeroext i1 @_ZNK11xercesc_2_711DOMAttrImpl13hasAttributesEv(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #2

declare noundef zeroext i1 @_ZNK11xercesc_2_711DOMAttrImpl10isSameNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) unnamed_addr #2

declare noundef zeroext i1 @_ZNK11xercesc_2_711DOMAttrImpl11isEqualNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) unnamed_addr #2

declare noundef ptr @_ZN11xercesc_2_711DOMAttrImpl11setUserDataEPKtPvPNS_18DOMUserDataHandlerE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #2

declare noundef ptr @_ZNK11xercesc_2_711DOMAttrImpl11getUserDataEPKt(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) unnamed_addr #2

declare noundef ptr @_ZNK11xercesc_2_711DOMAttrImpl10getBaseURIEv(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #2

declare noundef signext i16 @_ZNK11xercesc_2_711DOMAttrImpl19compareTreePositionEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) unnamed_addr #2

declare noundef ptr @_ZNK11xercesc_2_711DOMAttrImpl14getTextContentEv(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #2

declare void @_ZN11xercesc_2_711DOMAttrImpl14setTextContentEPKt(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) unnamed_addr #2

declare noundef ptr @_ZNK11xercesc_2_711DOMAttrImpl21lookupNamespacePrefixEPKtb(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, i1 noundef zeroext) unnamed_addr #2

declare noundef zeroext i1 @_ZNK11xercesc_2_711DOMAttrImpl18isDefaultNamespaceEPKt(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) unnamed_addr #2

declare noundef ptr @_ZNK11xercesc_2_711DOMAttrImpl18lookupNamespaceURIEPKt(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) unnamed_addr #2

declare noundef ptr @_ZN11xercesc_2_711DOMAttrImpl12getInterfaceEPKt(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) unnamed_addr #2

declare noundef ptr @_ZNK11xercesc_2_711DOMAttrImpl7getNameEv(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #2

declare noundef zeroext i1 @_ZNK11xercesc_2_711DOMAttrImpl12getSpecifiedEv(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #2

declare noundef ptr @_ZNK11xercesc_2_711DOMAttrImpl8getValueEv(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #2

declare void @_ZN11xercesc_2_711DOMAttrImpl8setValueEPKt(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) unnamed_addr #2

declare noundef ptr @_ZNK11xercesc_2_711DOMAttrImpl15getOwnerElementEv(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #2

declare noundef zeroext i1 @_ZNK11xercesc_2_711DOMAttrImpl4isIdEv(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #2

declare noundef ptr @_ZNK11xercesc_2_711DOMAttrImpl11getTypeInfoEv(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #2

declare void @_ZN11xercesc_2_711DOMAttrImpl12setSpecifiedEb(ptr noundef nonnull align 8 dereferenceable(72), i1 noundef zeroext) unnamed_addr #2

declare void @_ZN11xercesc_2_711DOMAttrImpl11setTypeInfoEPKNS_15DOMTypeInfoImplE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) unnamed_addr #2

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711DOMAttrImpl18addAttrToIDNodeMapEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #9 comdat align 2 !prof !46 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 1, i32 1
  %3 = load i16, ptr %2, align 8, !tbaa !100
  %4 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl7ID_ATTRE, align 2, !tbaa !68
  %5 = and i16 %4, %3
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %1
  %8 = or i16 %4, %3
  store i16 %8, ptr %2, align 8, !tbaa !100
  %9 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !101
  %11 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %10, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !102
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %7
  %15 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr noundef nonnull align 8 dereferenceable(293) %10, i64 noundef 56)
  tail call void @_ZN11xercesc_2_712DOMNodeIDMapC1EiPNS_11DOMDocumentE(ptr noundef nonnull align 8 dereferenceable(56) %15, i32 noundef 500, ptr noundef nonnull %10)
  store ptr %15, ptr %11, align 8, !tbaa !102
  br label %16

16:                                               ; preds = %14, %7
  %17 = load ptr, ptr %11, align 8, !tbaa !102
  tail call void @_ZN11xercesc_2_712DOMNodeIDMap3addEPNS_7DOMAttrE(ptr noundef nonnull align 8 dereferenceable(56) %17, ptr noundef nonnull %0)
  br label %18

18:                                               ; preds = %1, %16
  ret void
}

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711DOMAttrImpl23removeAttrFromIDNodeMapEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #9 comdat align 2 !prof !46 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 1, i32 1
  %3 = load i16, ptr %2, align 8, !tbaa !100
  %4 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl7ID_ATTRE, align 2, !tbaa !68
  %5 = and i16 %4, %3
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %17, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %0, align 8, !tbaa !47
  %9 = getelementptr inbounds ptr, ptr %8, i64 12
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(72) %0)
  %12 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %11, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !102
  tail call void @_ZN11xercesc_2_712DOMNodeIDMap6removeEPNS_7DOMAttrE(ptr noundef nonnull align 8 dereferenceable(56) %13, ptr noundef nonnull %0)
  %14 = load i16, ptr %2, align 8, !tbaa !100
  %15 = xor i16 %4, -1
  %16 = and i16 %14, %15
  store i16 %16, ptr %2, align 8, !tbaa !100
  br label %17

17:                                               ; preds = %7, %1
  ret void
}

declare noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEmNS0_14NodeObjectTypeE(ptr noundef nonnull align 8 dereferenceable(293), i64 noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN11xercesc_2_712DOMNodeIDMapC1EiPNS_11DOMDocumentE(ptr noundef nonnull align 8 dereferenceable(56), i32 noundef, ptr noundef) unnamed_addr #2

declare void @_ZN11xercesc_2_712DOMNodeIDMap3addEPNS_7DOMAttrE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr noundef nonnull align 8 dereferenceable(293), i64 noundef) local_unnamed_addr #2

declare void @_ZN11xercesc_2_712DOMNodeIDMap6removeEPNS_7DOMAttrE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

attributes #0 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind }
attributes #12 = { noreturn }
attributes #13 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!45}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44}
!35 = !{ptr @_ZN11xercesc_2_713DOMAttrNSImplC2EPNS_11DOMDocumentEPKtS4_, ptr @_ZN11xercesc_2_711DOMAttrImplC2EPNS_11DOMDocumentEPKt, i64 650}
!36 = !{ptr @_ZN11xercesc_2_713DOMAttrNSImplC2EPNS_11DOMDocumentEPKtS4_, ptr @_ZN11xercesc_2_713DOMAttrNSImpl7setNameEPKtS2_, i64 650}
!37 = !{ptr @_ZN11xercesc_2_713DOMAttrNSImpl7setNameEPKtS2_, ptr @_ZNK11xercesc_2_711DOMAttrImpl16getOwnerDocumentEv, i64 652}
!38 = !{ptr @_ZN11xercesc_2_713DOMAttrNSImpl7setNameEPKtS2_, ptr @_ZN11xercesc_2_711DOMNodeImpl14getXmlnsStringEv, i64 650}
!39 = !{ptr @_ZN11xercesc_2_713DOMAttrNSImpl7setNameEPKtS2_, ptr @_ZN11xercesc_2_711DOMNodeImpl17getXmlnsURIStringEv, i64 650}
!40 = !{ptr @_ZN11xercesc_2_713DOMAttrNSImpl7setNameEPKtS2_, ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt, i64 654}
!41 = !{ptr @_ZN11xercesc_2_713DOMAttrNSImpl7setNameEPKtS2_, ptr @_ZN11xercesc_2_715DOMDocumentImpl20indexofQualifiedNameEPKt, i64 650}
!42 = !{ptr @_ZN11xercesc_2_713DOMAttrNSImpl7setNameEPKtS2_, ptr @_ZN11xercesc_2_79XMLString11copyNStringEPtPKtj, i64 1}
!43 = !{ptr @_ZN11xercesc_2_713DOMAttrNSImpl7setNameEPKtS2_, ptr @_ZN11xercesc_2_715DOMDocumentImpl9isXMLNameEPKt, i64 2}
!44 = !{ptr @_ZN11xercesc_2_713DOMAttrNSImpl7setNameEPKtS2_, ptr @_ZN11xercesc_2_711DOMNodeImpl9mapPrefixEPKtS2_s, i64 649}
!45 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!46 = !{!"function_entry_count", i64 0}
!47 = !{!48, !48, i64 0}
!48 = !{!"vtable pointer", !49, i64 0}
!49 = !{!"Simple C++ TBAA"}
!50 = !{!"function_entry_count", i64 650}
!51 = !{!"branch_weights", i32 650, i32 0}
!52 = !{!"VP", i32 0, i64 650, i64 -8144646246772247977, i64 650}
!53 = !{!54, !58, i64 56}
!54 = !{!"_ZTSN11xercesc_2_711DOMAttrImplE", !55, i64 0, !57, i64 8, !61, i64 24, !58, i64 56, !58, i64 64}
!55 = !{!"_ZTSN11xercesc_2_77DOMAttrE", !56, i64 0}
!56 = !{!"_ZTSN11xercesc_2_77DOMNodeE"}
!57 = !{!"_ZTSN11xercesc_2_711DOMNodeImplE", !58, i64 0, !60, i64 8}
!58 = !{!"any pointer", !59, i64 0}
!59 = !{!"omnipotent char", !49, i64 0}
!60 = !{!"short", !59, i64 0}
!61 = !{!"_ZTSN11xercesc_2_713DOMParentNodeE", !58, i64 0, !58, i64 8, !62, i64 16}
!62 = !{!"_ZTSN11xercesc_2_715DOMNodeListImplE", !63, i64 0, !58, i64 8}
!63 = !{!"_ZTSN11xercesc_2_711DOMNodeListE"}
!64 = !{!"branch_weights", i32 0, i32 650}
!65 = !{!58, !58, i64 0}
!66 = !{!"branch_weights", i32 649, i32 1}
!67 = !{!"branch_weights", i32 0, i32 649}
!68 = !{!60, !60, i64 0}
!69 = !{!"branch_weights", i32 38, i32 610}
!70 = !{!"branch_weights", i32 1, i32 37}
!71 = !{!"branch_weights", i32 0, i32 38}
!72 = distinct !{!72, !73, !74}
!73 = !{!"llvm.loop.mustprogress"}
!74 = !{!"llvm.loop.unroll.disable"}
!75 = !{!"branch_weights", i32 1, i32 648}
!76 = !{!"branch_weights", i32 0, i32 1}
!77 = !{!"branch_weights", i32 1, i32 0}
!78 = !{!"branch_weights", i32 1, i32 29}
!79 = !{!"branch_weights", i32 30, i32 0}
!80 = !{!81, !58, i64 88}
!81 = !{!"_ZTSN11xercesc_2_713DOMAttrNSImplE", !54, i64 0, !58, i64 72, !58, i64 80, !58, i64 88}
!82 = !{!81, !58, i64 80}
!83 = !{!84, !58, i64 280}
!84 = !{!"_ZTSN11xercesc_2_715DOMDocumentImplE", !85, i64 0, !57, i64 32, !61, i64 48, !58, i64 80, !58, i64 88, !58, i64 96, !89, i64 104, !58, i64 112, !58, i64 120, !58, i64 128, !90, i64 136, !58, i64 176, !58, i64 184, !58, i64 192, !93, i64 200, !58, i64 208, !58, i64 216, !58, i64 224, !58, i64 232, !58, i64 240, !58, i64 248, !58, i64 256, !58, i64 264, !58, i64 272, !58, i64 280, !92, i64 288, !89, i64 292}
!85 = !{!"_ZTSN11xercesc_2_711DOMDocumentE", !86, i64 0, !87, i64 8, !88, i64 16, !56, i64 24}
!86 = !{!"_ZTSN11xercesc_2_716DOMDocumentRangeE"}
!87 = !{!"_ZTSN11xercesc_2_717DOMXPathEvaluatorE"}
!88 = !{!"_ZTSN11xercesc_2_720DOMDocumentTraversalE"}
!89 = !{!"bool", !59, i64 0}
!90 = !{!"_ZTSN11xercesc_2_713XMLStringPoolE", !91, i64 0, !58, i64 8, !58, i64 16, !58, i64 24, !92, i64 32, !92, i64 36}
!91 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!92 = !{!"int", !59, i64 0}
!93 = !{!"long", !59, i64 0}
!94 = distinct !{!94, !73, !74}
!95 = !{!"VP", i32 0, i64 1, i64 -8144646246772247977, i64 1}
!96 = !{!"branch_weights", i32 648, i32 1}
!97 = !{!"branch_weights", i32 648, i32 2}
!98 = !{!81, !58, i64 72}
!99 = !{!"function_entry_count", i64 1458}
!100 = !{!57, !60, i64 8}
!101 = !{!54, !58, i64 24}
!102 = !{!84, !58, i64 80}
