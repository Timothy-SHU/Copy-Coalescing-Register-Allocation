; ModuleID = 'AttrNSImpl.cpp'
source_filename = "AttrNSImpl.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::AttrNSImpl" = type { %"class.xercesc_2_7::AttrImpl", %"class.xercesc_2_7::DOMString", %"class.xercesc_2_7::DOMString" }
%"class.xercesc_2_7::AttrImpl" = type { %"class.xercesc_2_7::NodeImpl.base", %"class.xercesc_2_7::DOMString", %union.anon }
%"class.xercesc_2_7::NodeImpl.base" = type <{ %"class.xercesc_2_7::NodeListImpl.base", [4 x i8], ptr, i16 }>
%"class.xercesc_2_7::NodeListImpl.base" = type { %"class.xercesc_2_7::RefCountedImpl.base" }
%"class.xercesc_2_7::RefCountedImpl.base" = type <{ ptr, i32 }>
%union.anon = type { ptr }
%"class.xercesc_2_7::DOMString" = type { ptr }
%"class.xercesc_2_7::DocumentImpl" = type { %"class.xercesc_2_7::ParentNode.base", ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, ptr }
%"class.xercesc_2_7::ParentNode.base" = type <{ %"class.xercesc_2_7::ChildNode", ptr, ptr, i32, [4 x i8], ptr, i32 }>
%"class.xercesc_2_7::ChildNode" = type { %"class.xercesc_2_7::NodeImpl.base", ptr, ptr }
%"class.xercesc_2_7::NodeImpl" = type <{ %"class.xercesc_2_7::NodeListImpl.base", [4 x i8], ptr, i16, [6 x i8] }>

$_ZN11xercesc_2_710AttrNSImplD2Ev = comdat any

$_ZN11xercesc_2_710AttrNSImplD0Ev = comdat any

@_ZTVN11xercesc_2_710AttrNSImplE = dso_local unnamed_addr constant { [54 x ptr] } { [54 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_710AttrNSImplE, ptr @_ZN11xercesc_2_710AttrNSImplD2Ev, ptr @_ZN11xercesc_2_710AttrNSImplD0Ev, ptr @_ZN11xercesc_2_78NodeImpl10referencedEv, ptr @_ZN11xercesc_2_78NodeImpl12unreferencedEv, ptr @_ZN11xercesc_2_78AttrImpl4itemEj, ptr @_ZN11xercesc_2_78AttrImpl9getLengthEv, ptr @_ZN11xercesc_2_78AttrImpl10isAttrImplEv, ptr @_ZN11xercesc_2_78NodeImpl18isCDATASectionImplEv, ptr @_ZN11xercesc_2_78NodeImpl22isDocumentFragmentImplEv, ptr @_ZN11xercesc_2_78NodeImpl14isDocumentImplEv, ptr @_ZN11xercesc_2_78NodeImpl18isDocumentTypeImplEv, ptr @_ZN11xercesc_2_78NodeImpl13isElementImplEv, ptr @_ZN11xercesc_2_78NodeImpl17isEntityReferenceEv, ptr @_ZN11xercesc_2_78NodeImpl10isTextImplEv, ptr @_ZN11xercesc_2_78NodeImpl7changedEv, ptr @_ZN11xercesc_2_78NodeImpl7changesEv, ptr @_ZN11xercesc_2_78NodeImpl11appendChildEPS0_, ptr @_ZN11xercesc_2_710AttrNSImpl9cloneNodeEb, ptr @_ZN11xercesc_2_78NodeImpl13getAttributesEv, ptr @_ZN11xercesc_2_78AttrImpl13getChildNodesEv, ptr @_ZN11xercesc_2_78AttrImpl13getFirstChildEv, ptr @_ZN11xercesc_2_78AttrImpl12getLastChildEv, ptr @_ZN11xercesc_2_78NodeImpl14getNextSiblingEv, ptr @_ZN11xercesc_2_78AttrImpl11getNodeNameEv, ptr @_ZN11xercesc_2_78AttrImpl11getNodeTypeEv, ptr @_ZN11xercesc_2_78AttrImpl12getNodeValueEv, ptr @_ZN11xercesc_2_78NodeImpl16getOwnerDocumentEv, ptr @_ZN11xercesc_2_78NodeImpl13getParentNodeEv, ptr @_ZN11xercesc_2_78NodeImpl18getPreviousSiblingEv, ptr @_ZN11xercesc_2_78NodeImpl11getUserDataEv, ptr @_ZN11xercesc_2_78AttrImpl13hasChildNodesEv, ptr @_ZN11xercesc_2_78AttrImpl12insertBeforeEPNS_8NodeImplES2_, ptr @_ZN11xercesc_2_78AttrImpl11removeChildEPNS_8NodeImplE, ptr @_ZN11xercesc_2_78AttrImpl12replaceChildEPNS_8NodeImplES2_, ptr @_ZN11xercesc_2_78AttrImpl12setNodeValueERKNS_9DOMStringE, ptr @_ZN11xercesc_2_78AttrImpl11setReadOnlyEbb, ptr @_ZN11xercesc_2_78NodeImpl11setUserDataEPv, ptr @_ZN11xercesc_2_78AttrImpl8toStringEv, ptr @_ZN11xercesc_2_78AttrImpl9normalizeEv, ptr @_ZN11xercesc_2_78NodeImpl11isSupportedERKNS_9DOMStringES3_, ptr @_ZN11xercesc_2_710AttrNSImpl15getNamespaceURIEv, ptr @_ZN11xercesc_2_710AttrNSImpl9getPrefixEv, ptr @_ZN11xercesc_2_710AttrNSImpl12getLocalNameEv, ptr @_ZN11xercesc_2_710AttrNSImpl9setPrefixERKNS_9DOMStringE, ptr @_ZN11xercesc_2_78NodeImpl13hasAttributesEv, ptr @_ZN11xercesc_2_78NodeImpl16setOwnerDocumentEPNS_12DocumentImplE, ptr @_ZN11xercesc_2_78NodeImpl11getDocumentEv, ptr @_ZN11xercesc_2_78AttrImpl7getNameEv, ptr @_ZN11xercesc_2_78AttrImpl12getSpecifiedEv, ptr @_ZN11xercesc_2_78AttrImpl8getValueEv, ptr @_ZN11xercesc_2_78AttrImpl12setSpecifiedEb, ptr @_ZN11xercesc_2_78AttrImpl8setValueERKNS_9DOMStringE] }, align 8
@_ZTIN11xercesc_2_716DOM_DOMExceptionE = external constant ptr
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_710AttrNSImplE = dso_local constant [28 x i8] c"N11xercesc_2_710AttrNSImplE\00", align 1
@_ZTIN11xercesc_2_78AttrImplE = external constant ptr
@_ZTIN11xercesc_2_710AttrNSImplE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_710AttrNSImplE, ptr @_ZTIN11xercesc_2_78AttrImplE }, align 8
@_ZN11xercesc_2_78NodeImpl8READONLYE = external local_unnamed_addr constant i16, align 2

@_ZN11xercesc_2_710AttrNSImplC1EPNS_12DocumentImplERKNS_9DOMStringE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xercesc_2_710AttrNSImplC2EPNS_12DocumentImplERKNS_9DOMStringE
@_ZN11xercesc_2_710AttrNSImplC1EPNS_12DocumentImplERKNS_9DOMStringES5_ = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN11xercesc_2_710AttrNSImplC2EPNS_12DocumentImplERKNS_9DOMStringES5_
@_ZN11xercesc_2_710AttrNSImplC1ERKS0_b = dso_local unnamed_addr alias void (ptr, ptr, i1), ptr @_ZN11xercesc_2_710AttrNSImplC2ERKS0_b

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_710AttrNSImplC2EPNS_12DocumentImplERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  tail call void @_ZN11xercesc_2_78AttrImplC2EPNS_12DocumentImplERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  store ptr getelementptr inbounds ({ [54 x ptr] }, ptr @_ZTVN11xercesc_2_710AttrNSImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %4 = getelementptr inbounds %"class.xercesc_2_7::AttrNSImpl", ptr %0, i64 0, i32 1
  invoke void @_ZN11xercesc_2_79DOMStringC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %5 unwind label %12

5:                                                ; preds = %3
  %6 = getelementptr inbounds %"class.xercesc_2_7::AttrNSImpl", ptr %0, i64 0, i32 2
  invoke void @_ZN11xercesc_2_79DOMStringC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %7 unwind label %14

7:                                                ; preds = %5
  %8 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSEPNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef null)
          to label %9 unwind label %16

9:                                                ; preds = %7
  %10 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSEPNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef null)
          to label %11 unwind label %16

11:                                               ; preds = %9
  ret void

12:                                               ; preds = %3
  %13 = landingpad { ptr, i32 }
          cleanup
  br label %20

14:                                               ; preds = %5
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %18

16:                                               ; preds = %9, %7
  %17 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #5
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi { ptr, i32 } [ %17, %16 ], [ %15, %14 ]
  tail call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #5
  br label %20

20:                                               ; preds = %18, %12
  %21 = phi { ptr, i32 } [ %19, %18 ], [ %13, %12 ]
  tail call void @_ZN11xercesc_2_78AttrImplD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #5
  resume { ptr, i32 } %21
}

declare void @_ZN11xercesc_2_78AttrImplC2EPNS_12DocumentImplERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare void @_ZN11xercesc_2_79DOMStringC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSEPNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_78AttrImplD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_710AttrNSImplC2EPNS_12DocumentImplERKNS_9DOMStringES5_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %5 = alloca %"class.xercesc_2_7::DOMString", align 8
  %6 = alloca %"class.xercesc_2_7::DOMString", align 8
  %7 = alloca %"class.xercesc_2_7::DOMString", align 8
  %8 = alloca %"class.xercesc_2_7::DOMString", align 8
  %9 = alloca %"class.xercesc_2_7::DOMString", align 8
  %10 = alloca %"class.xercesc_2_7::DOMString", align 8
  %11 = alloca %"class.xercesc_2_7::DOMString", align 8
  %12 = alloca %"class.xercesc_2_7::DOMString", align 8
  %13 = alloca %"class.xercesc_2_7::DOMString", align 8
  tail call void @_ZN11xercesc_2_78AttrImplC2EPNS_12DocumentImplERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %3)
  store ptr getelementptr inbounds ({ [54 x ptr] }, ptr @_ZTVN11xercesc_2_710AttrNSImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %14 = getelementptr inbounds %"class.xercesc_2_7::AttrNSImpl", ptr %0, i64 0, i32 1
  invoke void @_ZN11xercesc_2_79DOMStringC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %15 unwind label %33

15:                                               ; preds = %4
  %16 = getelementptr inbounds %"class.xercesc_2_7::AttrNSImpl", ptr %0, i64 0, i32 2
  invoke void @_ZN11xercesc_2_79DOMStringC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %17 unwind label %35

17:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #5
  invoke void @_ZN11xercesc_2_78NodeImpl14getXmlnsStringEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %5)
          to label %18 unwind label %37

18:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #5
  invoke void @_ZN11xercesc_2_78NodeImpl17getXmlnsURIStringEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %6)
          to label %19 unwind label %39

19:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #5
  invoke void @_ZNK11xercesc_2_79DOMString5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %20 unwind label %41

20:                                               ; preds = %19
  %21 = getelementptr inbounds %"class.xercesc_2_7::AttrImpl", ptr %0, i64 0, i32 1
  %22 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %23 unwind label %43

23:                                               ; preds = %20
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #5
  %24 = invoke noundef i32 @_ZN11xercesc_2_712DocumentImpl20indexofQualifiedNameERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %25 unwind label %47

25:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #5
  invoke void @_ZN11xercesc_2_79DOMStringC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %26 unwind label %49

26:                                               ; preds = %25
  %27 = icmp slt i32 %24, 0
  br i1 %27, label %28, label %60

28:                                               ; preds = %26
  %29 = call ptr @__cxa_allocate_exception(i64 24) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #5
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %9, i32 noundef 0)
          to label %30 unwind label %51

30:                                               ; preds = %28
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %29, i16 noundef signext 14, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %31 unwind label %53

31:                                               ; preds = %30
  invoke void @__cxa_throw(ptr nonnull %29, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #6
          to label %32 unwind label %53

32:                                               ; preds = %31
  unreachable

33:                                               ; preds = %4
  %34 = landingpad { ptr, i32 }
          cleanup
  br label %144

35:                                               ; preds = %15
  %36 = landingpad { ptr, i32 }
          cleanup
  br label %142

37:                                               ; preds = %17
  %38 = landingpad { ptr, i32 }
          cleanup
  br label %140

39:                                               ; preds = %18
  %40 = landingpad { ptr, i32 }
          cleanup
  br label %138

41:                                               ; preds = %19
  %42 = landingpad { ptr, i32 }
          cleanup
  br label %45

43:                                               ; preds = %20
  %44 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #5
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi { ptr, i32 } [ %44, %43 ], [ %42, %41 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #5
  br label %136

47:                                               ; preds = %23
  %48 = landingpad { ptr, i32 }
          cleanup
  br label %136

49:                                               ; preds = %25
  %50 = landingpad { ptr, i32 }
          cleanup
  br label %134

51:                                               ; preds = %28
  %52 = landingpad { ptr, i32 }
          cleanup
  br label %56

53:                                               ; preds = %31, %30
  %54 = phi i1 [ false, %31 ], [ true, %30 ]
  %55 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #5
  br label %56

56:                                               ; preds = %53, %51
  %57 = phi { ptr, i32 } [ %55, %53 ], [ %52, %51 ]
  %58 = phi i1 [ %54, %53 ], [ true, %51 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #5
  br i1 %58, label %59, label %132

59:                                               ; preds = %56
  call void @__cxa_free_exception(ptr %29) #5
  br label %132

60:                                               ; preds = %26
  %61 = icmp eq i32 %24, 0
  br i1 %61, label %62, label %88

62:                                               ; preds = %60
  %63 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79DOMString6equalsERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %64 unwind label %73

64:                                               ; preds = %62
  br i1 %63, label %65, label %84

65:                                               ; preds = %64
  %66 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79DOMString6equalsERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %67 unwind label %73

67:                                               ; preds = %65
  br i1 %66, label %84, label %68

68:                                               ; preds = %67
  %69 = call ptr @__cxa_allocate_exception(i64 24) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #5
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %10, i32 noundef 0)
          to label %70 unwind label %75

70:                                               ; preds = %68
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %69, i16 noundef signext 14, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %71 unwind label %77

71:                                               ; preds = %70
  invoke void @__cxa_throw(ptr nonnull %69, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #6
          to label %72 unwind label %77

72:                                               ; preds = %71
  unreachable

73:                                               ; preds = %86, %84, %65, %62
  %74 = landingpad { ptr, i32 }
          cleanup
  br label %132

75:                                               ; preds = %68
  %76 = landingpad { ptr, i32 }
          cleanup
  br label %80

77:                                               ; preds = %71, %70
  %78 = phi i1 [ false, %71 ], [ true, %70 ]
  %79 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #5
  br label %80

80:                                               ; preds = %77, %75
  %81 = phi { ptr, i32 } [ %79, %77 ], [ %76, %75 ]
  %82 = phi i1 [ %78, %77 ], [ true, %75 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #5
  br i1 %82, label %83, label %132

83:                                               ; preds = %80
  call void @__cxa_free_exception(ptr %69) #5
  br label %132

84:                                               ; preds = %67, %64
  %85 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSEPNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef null)
          to label %86 unwind label %73

86:                                               ; preds = %84
  %87 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(8) %21)
          to label %112 unwind label %73

88:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #5
  invoke void @_ZNK11xercesc_2_79DOMString13substringDataEjj(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %11, ptr noundef nonnull align 8 dereferenceable(8) %21, i32 noundef 0, i32 noundef %24)
          to label %89 unwind label %100

89:                                               ; preds = %88
  %90 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %91 unwind label %102

91:                                               ; preds = %89
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #5
  %92 = invoke noundef i32 @_ZNK11xercesc_2_79DOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(8) %21)
          to label %93 unwind label %106

93:                                               ; preds = %91
  %94 = add nuw nsw i32 %24, 1
  %95 = xor i32 %24, -1
  %96 = add i32 %92, %95
  invoke void @_ZNK11xercesc_2_79DOMString13substringDataEjj(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %12, ptr noundef nonnull align 8 dereferenceable(8) %21, i32 noundef %94, i32 noundef %96)
          to label %97 unwind label %106

97:                                               ; preds = %93
  %98 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %99 unwind label %108

99:                                               ; preds = %97
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #5
  br label %113

100:                                              ; preds = %88
  %101 = landingpad { ptr, i32 }
          cleanup
  br label %104

102:                                              ; preds = %89
  %103 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #5
  br label %104

104:                                              ; preds = %102, %100
  %105 = phi { ptr, i32 } [ %103, %102 ], [ %101, %100 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #5
  br label %132

106:                                              ; preds = %93, %91
  %107 = landingpad { ptr, i32 }
          cleanup
  br label %110

108:                                              ; preds = %97
  %109 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12) #5
  br label %110

110:                                              ; preds = %108, %106
  %111 = phi { ptr, i32 } [ %109, %108 ], [ %107, %106 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #5
  br label %132

112:                                              ; preds = %86
  br i1 %63, label %115, label %113

113:                                              ; preds = %112, %99
  %114 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78NodeImpl9mapPrefixERKNS_9DOMStringES3_s(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %2, i16 noundef signext 2)
          to label %115 unwind label %124

115:                                              ; preds = %113, %112
  %116 = phi ptr [ %6, %112 ], [ %114, %113 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #5
  %117 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79DOMStringeqEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %116, ptr noundef null)
          to label %118 unwind label %126

118:                                              ; preds = %115
  br i1 %117, label %119, label %120

119:                                              ; preds = %118
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %13, i32 noundef 0)
          to label %121 unwind label %126

120:                                              ; preds = %118
  invoke void @_ZNK11xercesc_2_79DOMString5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %13, ptr noundef nonnull align 8 dereferenceable(8) %116)
          to label %121 unwind label %126

121:                                              ; preds = %120, %119
  %122 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %123 unwind label %128

123:                                              ; preds = %121
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #5
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #5
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #5
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #5
  ret void

124:                                              ; preds = %113
  %125 = landingpad { ptr, i32 }
          cleanup
  br label %132

126:                                              ; preds = %120, %119, %115
  %127 = landingpad { ptr, i32 }
          cleanup
  br label %130

128:                                              ; preds = %121
  %129 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13) #5
  br label %130

130:                                              ; preds = %128, %126
  %131 = phi { ptr, i32 } [ %129, %128 ], [ %127, %126 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #5
  br label %132

132:                                              ; preds = %73, %104, %110, %83, %80, %130, %124, %56, %59
  %133 = phi { ptr, i32 } [ %57, %59 ], [ %57, %56 ], [ %74, %73 ], [ %81, %83 ], [ %81, %80 ], [ %111, %110 ], [ %105, %104 ], [ %131, %130 ], [ %125, %124 ]
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #5
  br label %134

134:                                              ; preds = %132, %49
  %135 = phi { ptr, i32 } [ %133, %132 ], [ %50, %49 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #5
  br label %136

136:                                              ; preds = %47, %134, %45
  %137 = phi { ptr, i32 } [ %46, %45 ], [ %135, %134 ], [ %48, %47 ]
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #5
  br label %138

138:                                              ; preds = %136, %39
  %139 = phi { ptr, i32 } [ %137, %136 ], [ %40, %39 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #5
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #5
  br label %140

140:                                              ; preds = %138, %37
  %141 = phi { ptr, i32 } [ %139, %138 ], [ %38, %37 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #5
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %16) #5
  br label %142

142:                                              ; preds = %140, %35
  %143 = phi { ptr, i32 } [ %141, %140 ], [ %36, %35 ]
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14) #5
  br label %144

144:                                              ; preds = %142, %33
  %145 = phi { ptr, i32 } [ %143, %142 ], [ %34, %33 ]
  call void @_ZN11xercesc_2_78AttrImplD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #5
  resume { ptr, i32 } %145
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare void @_ZN11xercesc_2_78NodeImpl14getXmlnsStringEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8) local_unnamed_addr #1

declare void @_ZN11xercesc_2_78NodeImpl17getXmlnsURIStringEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8) local_unnamed_addr #1

declare void @_ZNK11xercesc_2_79DOMString5cloneEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

declare noundef i32 @_ZN11xercesc_2_712DocumentImpl20indexofQualifiedNameERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #1

declare void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24), i16 noundef signext, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare noundef zeroext i1 @_ZNK11xercesc_2_79DOMString6equalsERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZNK11xercesc_2_79DOMString13substringDataEjj(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef) local_unnamed_addr #1

declare noundef i32 @_ZNK11xercesc_2_79DOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78NodeImpl9mapPrefixERKNS_9DOMStringES3_s(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), i16 noundef signext) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK11xercesc_2_79DOMStringeqEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_710AttrNSImplC2ERKS0_b(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i1 noundef zeroext %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %4 = alloca %"class.xercesc_2_7::DOMString", align 8
  %5 = alloca %"class.xercesc_2_7::DOMString", align 8
  tail call void @_ZN11xercesc_2_78AttrImplC2ERKS0_b(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i1 noundef zeroext %2)
  store ptr getelementptr inbounds ({ [54 x ptr] }, ptr @_ZTVN11xercesc_2_710AttrNSImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %6 = getelementptr inbounds %"class.xercesc_2_7::AttrNSImpl", ptr %0, i64 0, i32 1
  invoke void @_ZN11xercesc_2_79DOMStringC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %7 unwind label %18

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xercesc_2_7::AttrNSImpl", ptr %0, i64 0, i32 2
  invoke void @_ZN11xercesc_2_79DOMStringC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %9 unwind label %20

9:                                                ; preds = %7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #5
  %10 = getelementptr inbounds %"class.xercesc_2_7::AttrNSImpl", ptr %1, i64 0, i32 1
  invoke void @_ZNK11xercesc_2_79DOMString5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %11 unwind label %22

11:                                               ; preds = %9
  %12 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %13 unwind label %24

13:                                               ; preds = %11
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #5
  %14 = getelementptr inbounds %"class.xercesc_2_7::AttrNSImpl", ptr %1, i64 0, i32 2
  invoke void @_ZNK11xercesc_2_79DOMString5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %15 unwind label %28

15:                                               ; preds = %13
  %16 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %17 unwind label %30

17:                                               ; preds = %15
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #5
  ret void

18:                                               ; preds = %3
  %19 = landingpad { ptr, i32 }
          cleanup
  br label %38

20:                                               ; preds = %7
  %21 = landingpad { ptr, i32 }
          cleanup
  br label %36

22:                                               ; preds = %9
  %23 = landingpad { ptr, i32 }
          cleanup
  br label %26

24:                                               ; preds = %11
  %25 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #5
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi { ptr, i32 } [ %25, %24 ], [ %23, %22 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #5
  br label %34

28:                                               ; preds = %13
  %29 = landingpad { ptr, i32 }
          cleanup
  br label %32

30:                                               ; preds = %15
  %31 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #5
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi { ptr, i32 } [ %31, %30 ], [ %29, %28 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #5
  br label %34

34:                                               ; preds = %32, %26
  %35 = phi { ptr, i32 } [ %33, %32 ], [ %27, %26 ]
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #5
  br label %36

36:                                               ; preds = %34, %20
  %37 = phi { ptr, i32 } [ %35, %34 ], [ %21, %20 ]
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #5
  br label %38

38:                                               ; preds = %36, %18
  %39 = phi { ptr, i32 } [ %37, %36 ], [ %19, %18 ]
  call void @_ZN11xercesc_2_78AttrImplD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #5
  resume { ptr, i32 } %39
}

declare void @_ZN11xercesc_2_78AttrImplC2ERKS0_b(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48), i1 noundef zeroext) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_710AttrNSImpl9cloneNodeEb(ptr noundef nonnull align 8 dereferenceable(64) %0, i1 noundef zeroext %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = getelementptr inbounds ptr, ptr %3, i64 26
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(26) %0)
  %7 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %6, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !38
  %9 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %8)
  invoke void @_ZN11xercesc_2_710AttrNSImplC2ERKS0_b(ptr noundef nonnull align 8 dereferenceable(64) %9, ptr noundef nonnull align 8 dereferenceable(64) %0, i1 noundef zeroext %1)
          to label %10 unwind label %11

10:                                               ; preds = %2
  ret ptr %9

11:                                               ; preds = %2
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %9, ptr noundef %8) #5
  resume { ptr, i32 } %12
}

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_710AttrNSImpl15getNamespaceURIEv(ptr dead_on_unwind noalias nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #0 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::AttrNSImpl", ptr %1, i64 0, i32 1
  tail call void @_ZN11xercesc_2_79DOMStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %3)
  ret void
}

declare void @_ZN11xercesc_2_79DOMStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_710AttrNSImpl9getPrefixEv(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOMString") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #0 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::AttrImpl", ptr %1, i64 0, i32 1
  %4 = tail call noundef i32 @_ZN11xercesc_2_712DocumentImpl20indexofQualifiedNameERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %3)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 0)
  br label %8

7:                                                ; preds = %2
  tail call void @_ZNK11xercesc_2_79DOMString13substringDataEjj(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 0, i32 noundef %4)
  br label %8

8:                                                ; preds = %7, %6
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_710AttrNSImpl12getLocalNameEv(ptr dead_on_unwind noalias nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #0 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::AttrNSImpl", ptr %1, i64 0, i32 2
  tail call void @_ZN11xercesc_2_79DOMStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %3)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_710AttrNSImpl9setPrefixERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  %4 = alloca %"class.xercesc_2_7::DOMString", align 8
  %5 = alloca %"class.xercesc_2_7::DOMString", align 8
  %6 = alloca %"class.xercesc_2_7::DOMString", align 8
  %7 = alloca %"class.xercesc_2_7::DOMString", align 8
  %8 = alloca %"class.xercesc_2_7::DOMString", align 8
  %9 = alloca %"class.xercesc_2_7::DOMString", align 8
  %10 = alloca %"class.xercesc_2_7::DOMString", align 8
  %11 = alloca %"class.xercesc_2_7::DOMString", align 8
  %12 = alloca %"class.xercesc_2_7::DOMString", align 8
  %13 = alloca %"class.xercesc_2_7::DOMString", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #5
  call void @_ZN11xercesc_2_78NodeImpl12getXmlStringEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %3)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #5
  invoke void @_ZN11xercesc_2_78NodeImpl15getXmlURIStringEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %4)
          to label %14 unwind label %36

14:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #5
  invoke void @_ZN11xercesc_2_78NodeImpl14getXmlnsStringEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %5)
          to label %15 unwind label %38

15:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #5
  invoke void @_ZN11xercesc_2_78NodeImpl17getXmlnsURIStringEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %6)
          to label %16 unwind label %40

16:                                               ; preds = %15
  %17 = load ptr, ptr %0, align 8, !tbaa !35
  %18 = getelementptr inbounds ptr, ptr %17, i64 26
  %19 = load ptr, ptr %18, align 8
  %20 = invoke noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(26) %0)
          to label %21 unwind label %42

21:                                               ; preds = %16
  %22 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %20, i64 0, i32 10
  %23 = load i8, ptr %22, align 4, !tbaa !50, !range !51, !noundef !52
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %100, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %0, i64 0, i32 3
  %27 = load i16, ptr %26, align 8, !tbaa !53
  %28 = load i16, ptr @_ZN11xercesc_2_78NodeImpl8READONLYE, align 2, !tbaa !54
  %29 = and i16 %28, %27
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %53, label %31

31:                                               ; preds = %25
  %32 = call ptr @__cxa_allocate_exception(i64 24) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #5
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef 0)
          to label %33 unwind label %44

33:                                               ; preds = %31
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %32, i16 noundef signext 7, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %34 unwind label %46

34:                                               ; preds = %33
  invoke void @__cxa_throw(ptr nonnull %32, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #6
          to label %35 unwind label %46

35:                                               ; preds = %34
  unreachable

36:                                               ; preds = %2
  %37 = landingpad { ptr, i32 }
          cleanup
  br label %203

38:                                               ; preds = %14
  %39 = landingpad { ptr, i32 }
          cleanup
  br label %201

40:                                               ; preds = %15
  %41 = landingpad { ptr, i32 }
          cleanup
  br label %199

42:                                               ; preds = %130, %127, %123, %120, %111, %107, %103, %100, %83, %78, %75, %57, %53, %16
  %43 = landingpad { ptr, i32 }
          cleanup
  br label %197

44:                                               ; preds = %31
  %45 = landingpad { ptr, i32 }
          cleanup
  br label %49

46:                                               ; preds = %34, %33
  %47 = phi i1 [ false, %34 ], [ true, %33 ]
  %48 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #5
  br label %49

49:                                               ; preds = %46, %44
  %50 = phi { ptr, i32 } [ %48, %46 ], [ %45, %44 ]
  %51 = phi i1 [ %47, %46 ], [ true, %44 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #5
  br i1 %51, label %52, label %197

52:                                               ; preds = %49
  call void @__cxa_free_exception(ptr %32) #5
  br label %197

53:                                               ; preds = %25
  %54 = getelementptr inbounds %"class.xercesc_2_7::AttrNSImpl", ptr %0, i64 0, i32 1
  %55 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79DOMStringeqEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %54, ptr noundef null)
          to label %56 unwind label %42

56:                                               ; preds = %53
  br i1 %55, label %61, label %57

57:                                               ; preds = %56
  %58 = getelementptr inbounds %"class.xercesc_2_7::AttrNSImpl", ptr %0, i64 0, i32 2
  %59 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79DOMString6equalsERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %58, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %60 unwind label %42

60:                                               ; preds = %57
  br i1 %59, label %61, label %75

61:                                               ; preds = %60, %56
  %62 = call ptr @__cxa_allocate_exception(i64 24) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #5
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef 0)
          to label %63 unwind label %66

63:                                               ; preds = %61
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %62, i16 noundef signext 14, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %64 unwind label %68

64:                                               ; preds = %63
  invoke void @__cxa_throw(ptr nonnull %62, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #6
          to label %65 unwind label %68

65:                                               ; preds = %64
  unreachable

66:                                               ; preds = %61
  %67 = landingpad { ptr, i32 }
          cleanup
  br label %71

68:                                               ; preds = %64, %63
  %69 = phi i1 [ false, %64 ], [ true, %63 ]
  %70 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #5
  br label %71

71:                                               ; preds = %68, %66
  %72 = phi { ptr, i32 } [ %70, %68 ], [ %67, %66 ]
  %73 = phi i1 [ %69, %68 ], [ true, %66 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #5
  br i1 %73, label %74, label %197

74:                                               ; preds = %71
  call void @__cxa_free_exception(ptr %62) #5
  br label %197

75:                                               ; preds = %60
  %76 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79DOMStringneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef null)
          to label %77 unwind label %42

77:                                               ; preds = %75
  br i1 %76, label %78, label %100

78:                                               ; preds = %77
  %79 = load ptr, ptr %0, align 8, !tbaa !35
  %80 = getelementptr inbounds ptr, ptr %79, i64 26
  %81 = load ptr, ptr %80, align 8
  %82 = invoke noundef ptr %81(ptr noundef nonnull align 8 dereferenceable(26) %0)
          to label %83 unwind label %42

83:                                               ; preds = %78
  %84 = invoke noundef zeroext i1 @_ZN11xercesc_2_712DocumentImpl9isXMLNameERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(168) %82, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %85 unwind label %42

85:                                               ; preds = %83
  br i1 %84, label %100, label %86

86:                                               ; preds = %85
  %87 = call ptr @__cxa_allocate_exception(i64 24) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #5
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %9, i32 noundef 0)
          to label %88 unwind label %91

88:                                               ; preds = %86
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %87, i16 noundef signext 5, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %89 unwind label %93

89:                                               ; preds = %88
  invoke void @__cxa_throw(ptr nonnull %87, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #6
          to label %90 unwind label %93

90:                                               ; preds = %89
  unreachable

91:                                               ; preds = %86
  %92 = landingpad { ptr, i32 }
          cleanup
  br label %96

93:                                               ; preds = %89, %88
  %94 = phi i1 [ false, %89 ], [ true, %88 ]
  %95 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #5
  br label %96

96:                                               ; preds = %93, %91
  %97 = phi { ptr, i32 } [ %95, %93 ], [ %92, %91 ]
  %98 = phi i1 [ %94, %93 ], [ true, %91 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #5
  br i1 %98, label %99, label %197

99:                                               ; preds = %96
  call void @__cxa_free_exception(ptr %87) #5
  br label %197

100:                                              ; preds = %77, %85, %21
  %101 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79DOMStringeqEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef null)
          to label %102 unwind label %42

102:                                              ; preds = %100
  br i1 %101, label %107, label %103

103:                                              ; preds = %102
  %104 = invoke noundef i32 @_ZNK11xercesc_2_79DOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %105 unwind label %42

105:                                              ; preds = %103
  %106 = icmp eq i32 %104, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %105, %102
  %108 = getelementptr inbounds %"class.xercesc_2_7::AttrNSImpl", ptr %0, i64 0, i32 2
  %109 = getelementptr inbounds %"class.xercesc_2_7::AttrImpl", ptr %0, i64 0, i32 1
  %110 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %109, ptr noundef nonnull align 8 dereferenceable(8) %108)
          to label %186 unwind label %42

111:                                              ; preds = %105
  %112 = load ptr, ptr %0, align 8, !tbaa !35
  %113 = getelementptr inbounds ptr, ptr %112, i64 26
  %114 = load ptr, ptr %113, align 8
  %115 = invoke noundef ptr %114(ptr noundef nonnull align 8 dereferenceable(26) %0)
          to label %116 unwind label %42

116:                                              ; preds = %111
  %117 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %115, i64 0, i32 10
  %118 = load i8, ptr %117, align 4, !tbaa !50, !range !51, !noundef !52
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %127, label %120

120:                                              ; preds = %116
  %121 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79DOMString6equalsERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %122 unwind label %42

122:                                              ; preds = %120
  br i1 %121, label %123, label %127

123:                                              ; preds = %122
  %124 = getelementptr inbounds %"class.xercesc_2_7::AttrNSImpl", ptr %0, i64 0, i32 1
  %125 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79DOMString6equalsERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %124, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %126 unwind label %42

126:                                              ; preds = %123
  br i1 %125, label %127, label %134

127:                                              ; preds = %126, %122, %116
  %128 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79DOMString6equalsERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %129 unwind label %42

129:                                              ; preds = %127
  br i1 %128, label %130, label %148

130:                                              ; preds = %129
  %131 = getelementptr inbounds %"class.xercesc_2_7::AttrNSImpl", ptr %0, i64 0, i32 1
  %132 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79DOMString6equalsERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %131, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %133 unwind label %42

133:                                              ; preds = %130
  br i1 %132, label %148, label %134

134:                                              ; preds = %126, %133
  %135 = call ptr @__cxa_allocate_exception(i64 24) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #5
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %10, i32 noundef 0)
          to label %136 unwind label %139

136:                                              ; preds = %134
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %135, i16 noundef signext 14, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %137 unwind label %141

137:                                              ; preds = %136
  invoke void @__cxa_throw(ptr nonnull %135, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #6
          to label %138 unwind label %141

138:                                              ; preds = %137
  unreachable

139:                                              ; preds = %134
  %140 = landingpad { ptr, i32 }
          cleanup
  br label %144

141:                                              ; preds = %137, %136
  %142 = phi i1 [ false, %137 ], [ true, %136 ]
  %143 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #5
  br label %144

144:                                              ; preds = %141, %139
  %145 = phi { ptr, i32 } [ %143, %141 ], [ %140, %139 ]
  %146 = phi i1 [ %142, %141 ], [ true, %139 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #5
  br i1 %146, label %147, label %197

147:                                              ; preds = %144
  call void @__cxa_free_exception(ptr %135) #5
  br label %197

148:                                              ; preds = %133, %129
  %149 = invoke noundef ptr @_ZNK11xercesc_2_79DOMString9rawBufferEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %150 unwind label %157

150:                                              ; preds = %148
  %151 = invoke noundef i32 @_ZNK11xercesc_2_79DOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %152 unwind label %159

152:                                              ; preds = %150, %161
  %153 = phi ptr [ %163, %161 ], [ %149, %150 ]
  %154 = phi i32 [ %162, %161 ], [ %151, %150 ]
  %155 = icmp sgt i32 %154, 0
  br i1 %155, label %161, label %156

156:                                              ; preds = %152
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #5
  invoke void @_ZN11xercesc_2_7plERKNS_9DOMStringEt(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %13, ptr noundef nonnull align 8 dereferenceable(8) %1, i16 noundef zeroext 58)
          to label %180 unwind label %187

157:                                              ; preds = %148
  %158 = landingpad { ptr, i32 }
          cleanup
  br label %197

159:                                              ; preds = %150
  %160 = landingpad { ptr, i32 }
          cleanup
  br label %197

161:                                              ; preds = %152
  %162 = add nsw i32 %154, -1
  %163 = getelementptr inbounds i16, ptr %153, i64 1
  %164 = load i16, ptr %153, align 2, !tbaa !54
  %165 = icmp eq i16 %164, 58
  br i1 %165, label %166, label %152, !llvm.loop !55

166:                                              ; preds = %161
  %167 = call ptr @__cxa_allocate_exception(i64 24) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #5
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %11, i32 noundef 0)
          to label %168 unwind label %171

168:                                              ; preds = %166
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %167, i16 noundef signext 14, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %169 unwind label %173

169:                                              ; preds = %168
  invoke void @__cxa_throw(ptr nonnull %167, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #6
          to label %170 unwind label %173

170:                                              ; preds = %169
  unreachable

171:                                              ; preds = %166
  %172 = landingpad { ptr, i32 }
          cleanup
  br label %176

173:                                              ; preds = %169, %168
  %174 = phi i1 [ false, %169 ], [ true, %168 ]
  %175 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #5
  br label %176

176:                                              ; preds = %173, %171
  %177 = phi { ptr, i32 } [ %175, %173 ], [ %172, %171 ]
  %178 = phi i1 [ %174, %173 ], [ true, %171 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #5
  br i1 %178, label %179, label %197

179:                                              ; preds = %176
  call void @__cxa_free_exception(ptr %167) #5
  br label %197

180:                                              ; preds = %156
  %181 = getelementptr inbounds %"class.xercesc_2_7::AttrNSImpl", ptr %0, i64 0, i32 2
  invoke void @_ZN11xercesc_2_7plERKNS_9DOMStringES2_(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %12, ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %181)
          to label %182 unwind label %189

182:                                              ; preds = %180
  %183 = getelementptr inbounds %"class.xercesc_2_7::AttrImpl", ptr %0, i64 0, i32 1
  %184 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %183, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %185 unwind label %191

185:                                              ; preds = %182
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12) #5
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #5
  br label %186

186:                                              ; preds = %107, %185
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #5
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #5
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #5
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #5
  ret void

187:                                              ; preds = %156
  %188 = landingpad { ptr, i32 }
          cleanup
  br label %195

189:                                              ; preds = %180
  %190 = landingpad { ptr, i32 }
          cleanup
  br label %193

191:                                              ; preds = %182
  %192 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12) #5
  br label %193

193:                                              ; preds = %191, %189
  %194 = phi { ptr, i32 } [ %192, %191 ], [ %190, %189 ]
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13) #5
  br label %195

195:                                              ; preds = %193, %187
  %196 = phi { ptr, i32 } [ %194, %193 ], [ %188, %187 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #5
  br label %197

197:                                              ; preds = %157, %195, %176, %179, %159, %144, %147, %96, %99, %71, %74, %49, %52, %42
  %198 = phi { ptr, i32 } [ %50, %52 ], [ %50, %49 ], [ %72, %74 ], [ %72, %71 ], [ %43, %42 ], [ %145, %147 ], [ %145, %144 ], [ %97, %99 ], [ %97, %96 ], [ %196, %195 ], [ %158, %157 ], [ %177, %179 ], [ %177, %176 ], [ %160, %159 ]
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #5
  br label %199

199:                                              ; preds = %197, %40
  %200 = phi { ptr, i32 } [ %198, %197 ], [ %41, %40 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #5
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #5
  br label %201

201:                                              ; preds = %199, %38
  %202 = phi { ptr, i32 } [ %200, %199 ], [ %39, %38 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #5
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #5
  br label %203

203:                                              ; preds = %201, %36
  %204 = phi { ptr, i32 } [ %202, %201 ], [ %37, %36 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #5
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #5
  resume { ptr, i32 } %204
}

declare void @_ZN11xercesc_2_78NodeImpl12getXmlStringEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8) local_unnamed_addr #1

declare void @_ZN11xercesc_2_78NodeImpl15getXmlURIStringEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK11xercesc_2_79DOMStringneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN11xercesc_2_712DocumentImpl9isXMLNameERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(168), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare noundef ptr @_ZNK11xercesc_2_79DOMString9rawBufferEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZN11xercesc_2_7plERKNS_9DOMStringES2_(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZN11xercesc_2_7plERKNS_9DOMStringEt(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8, ptr noundef nonnull align 8 dereferenceable(8), i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710AttrNSImplD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #4 comdat align 2 !prof !34 {
  store ptr getelementptr inbounds ({ [54 x ptr] }, ptr @_ZTVN11xercesc_2_710AttrNSImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds %"class.xercesc_2_7::AttrNSImpl", ptr %0, i64 0, i32 2
  tail call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #5
  %3 = getelementptr inbounds %"class.xercesc_2_7::AttrNSImpl", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #5
  tail call void @_ZN11xercesc_2_78AttrImplD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #5
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710AttrNSImplD0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #4 comdat align 2 !prof !34 {
  store ptr getelementptr inbounds ({ [54 x ptr] }, ptr @_ZTVN11xercesc_2_710AttrNSImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds %"class.xercesc_2_7::AttrNSImpl", ptr %0, i64 0, i32 2
  tail call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #5
  %3 = getelementptr inbounds %"class.xercesc_2_7::AttrNSImpl", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #5
  tail call void @_ZN11xercesc_2_78AttrImplD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #5
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #5
  ret void
}

declare void @_ZN11xercesc_2_78NodeImpl10referencedEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

declare void @_ZN11xercesc_2_78NodeImpl12unreferencedEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_78AttrImpl4itemEj(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) unnamed_addr #1

declare noundef i32 @_ZN11xercesc_2_78AttrImpl9getLengthEv(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

declare noundef zeroext i1 @_ZN11xercesc_2_78AttrImpl10isAttrImplEv(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

declare noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl18isCDATASectionImplEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

declare noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl22isDocumentFragmentImplEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

declare noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl14isDocumentImplEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

declare noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl18isDocumentTypeImplEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

declare noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl13isElementImplEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

declare noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl17isEntityReferenceEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

declare noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl10isTextImplEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

declare void @_ZN11xercesc_2_78NodeImpl7changedEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

declare noundef i32 @_ZN11xercesc_2_78NodeImpl7changesEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_78NodeImpl11appendChildEPS0_(ptr noundef nonnull align 8 dereferenceable(26), ptr noundef) unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_78NodeImpl13getAttributesEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_78AttrImpl13getChildNodesEv(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_78AttrImpl13getFirstChildEv(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_78AttrImpl12getLastChildEv(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_78NodeImpl14getNextSiblingEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

declare void @_ZN11xercesc_2_78AttrImpl11getNodeNameEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8, ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

declare noundef signext i16 @_ZN11xercesc_2_78AttrImpl11getNodeTypeEv(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

declare void @_ZN11xercesc_2_78AttrImpl12getNodeValueEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8, ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_78NodeImpl16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_78NodeImpl13getParentNodeEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_78NodeImpl18getPreviousSiblingEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_78NodeImpl11getUserDataEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

declare noundef zeroext i1 @_ZN11xercesc_2_78AttrImpl13hasChildNodesEv(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_78AttrImpl12insertBeforeEPNS_8NodeImplES2_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, ptr noundef) unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_78AttrImpl11removeChildEPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_78AttrImpl12replaceChildEPNS_8NodeImplES2_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, ptr noundef) unnamed_addr #1

declare void @_ZN11xercesc_2_78AttrImpl12setNodeValueERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare void @_ZN11xercesc_2_78AttrImpl11setReadOnlyEbb(ptr noundef nonnull align 8 dereferenceable(48), i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #1

declare void @_ZN11xercesc_2_78NodeImpl11setUserDataEPv(ptr noundef nonnull align 8 dereferenceable(26), ptr noundef) unnamed_addr #1

declare void @_ZN11xercesc_2_78AttrImpl8toStringEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8, ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

declare void @_ZN11xercesc_2_78AttrImpl9normalizeEv(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

declare noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl11isSupportedERKNS_9DOMStringES3_(ptr noundef nonnull align 8 dereferenceable(26), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl13hasAttributesEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

declare void @_ZN11xercesc_2_78NodeImpl16setOwnerDocumentEPNS_12DocumentImplE(ptr noundef nonnull align 8 dereferenceable(26), ptr noundef) unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_78NodeImpl11getDocumentEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

declare void @_ZN11xercesc_2_78AttrImpl7getNameEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8, ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

declare noundef zeroext i1 @_ZN11xercesc_2_78AttrImpl12getSpecifiedEv(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

declare void @_ZN11xercesc_2_78AttrImpl8getValueEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8, ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

declare void @_ZN11xercesc_2_78AttrImpl12setSpecifiedEb(ptr noundef nonnull align 8 dereferenceable(48), i1 noundef zeroext) unnamed_addr #1

declare void @_ZN11xercesc_2_78AttrImpl8setValueERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #2

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { cold inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

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
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"vtable pointer", !37, i64 0}
!37 = !{!"Simple C++ TBAA"}
!38 = !{!39, !47, i64 160}
!39 = !{!"_ZTSN11xercesc_2_712DocumentImplE", !40, i64 0, !47, i64 88, !47, i64 96, !47, i64 104, !47, i64 112, !47, i64 120, !47, i64 128, !47, i64 136, !47, i64 144, !45, i64 152, !49, i64 156, !47, i64 160}
!40 = !{!"_ZTSN11xercesc_2_710ParentNodeE", !41, i64 0, !47, i64 48, !47, i64 56, !45, i64 64, !47, i64 72, !45, i64 80}
!41 = !{!"_ZTSN11xercesc_2_79ChildNodeE", !42, i64 0, !47, i64 32, !47, i64 40}
!42 = !{!"_ZTSN11xercesc_2_78NodeImplE", !43, i64 0, !47, i64 16, !48, i64 24}
!43 = !{!"_ZTSN11xercesc_2_712NodeListImplE", !44, i64 0}
!44 = !{!"_ZTSN11xercesc_2_714RefCountedImplE", !45, i64 8}
!45 = !{!"int", !46, i64 0}
!46 = !{!"omnipotent char", !37, i64 0}
!47 = !{!"any pointer", !46, i64 0}
!48 = !{!"short", !46, i64 0}
!49 = !{!"bool", !46, i64 0}
!50 = !{!39, !49, i64 156}
!51 = !{i8 0, i8 2}
!52 = !{}
!53 = !{!42, !48, i64 24}
!54 = !{!48, !48, i64 0}
!55 = distinct !{!55, !56, !57}
!56 = !{!"llvm.loop.mustprogress"}
!57 = !{!"llvm.loop.unroll.disable"}
