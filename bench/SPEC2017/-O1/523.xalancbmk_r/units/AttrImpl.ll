; ModuleID = 'AttrImpl.cpp'
source_filename = "AttrImpl.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::DOMString" = type { ptr }
%"class.xercesc_2_7::AttrImpl" = type { %"class.xercesc_2_7::NodeImpl.base", %"class.xercesc_2_7::DOMString", %union.anon }
%"class.xercesc_2_7::NodeImpl.base" = type <{ %"class.xercesc_2_7::NodeListImpl.base", [4 x i8], ptr, i16 }>
%"class.xercesc_2_7::NodeListImpl.base" = type { %"class.xercesc_2_7::RefCountedImpl.base" }
%"class.xercesc_2_7::RefCountedImpl.base" = type <{ ptr, i32 }>
%union.anon = type { ptr }
%"class.xercesc_2_7::NodeImpl" = type <{ %"class.xercesc_2_7::NodeListImpl.base", [4 x i8], ptr, i16, [6 x i8] }>
%"class.xercesc_2_7::DocumentImpl" = type { %"class.xercesc_2_7::ParentNode.base", ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, ptr }
%"class.xercesc_2_7::ParentNode.base" = type <{ %"class.xercesc_2_7::ChildNode", ptr, ptr, i32, [4 x i8], ptr, i32 }>
%"class.xercesc_2_7::ChildNode" = type { %"class.xercesc_2_7::NodeImpl.base", ptr, ptr }
%"class.xercesc_2_7::RefCountedImpl" = type <{ ptr, i32, [4 x i8] }>
%"class.xercesc_2_7::BaseRefVectorOf" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEE9elementAtEj = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv = comdat any

$_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

@_ZTVN11xercesc_2_78AttrImplE = dso_local unnamed_addr constant { [54 x ptr] } { [54 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_78AttrImplE, ptr @_ZN11xercesc_2_78AttrImplD2Ev, ptr @_ZN11xercesc_2_78AttrImplD0Ev, ptr @_ZN11xercesc_2_78NodeImpl10referencedEv, ptr @_ZN11xercesc_2_78NodeImpl12unreferencedEv, ptr @_ZN11xercesc_2_78AttrImpl4itemEj, ptr @_ZN11xercesc_2_78AttrImpl9getLengthEv, ptr @_ZN11xercesc_2_78AttrImpl10isAttrImplEv, ptr @_ZN11xercesc_2_78NodeImpl18isCDATASectionImplEv, ptr @_ZN11xercesc_2_78NodeImpl22isDocumentFragmentImplEv, ptr @_ZN11xercesc_2_78NodeImpl14isDocumentImplEv, ptr @_ZN11xercesc_2_78NodeImpl18isDocumentTypeImplEv, ptr @_ZN11xercesc_2_78NodeImpl13isElementImplEv, ptr @_ZN11xercesc_2_78NodeImpl17isEntityReferenceEv, ptr @_ZN11xercesc_2_78NodeImpl10isTextImplEv, ptr @_ZN11xercesc_2_78NodeImpl7changedEv, ptr @_ZN11xercesc_2_78NodeImpl7changesEv, ptr @_ZN11xercesc_2_78NodeImpl11appendChildEPS0_, ptr @_ZN11xercesc_2_78AttrImpl9cloneNodeEb, ptr @_ZN11xercesc_2_78NodeImpl13getAttributesEv, ptr @_ZN11xercesc_2_78AttrImpl13getChildNodesEv, ptr @_ZN11xercesc_2_78AttrImpl13getFirstChildEv, ptr @_ZN11xercesc_2_78AttrImpl12getLastChildEv, ptr @_ZN11xercesc_2_78NodeImpl14getNextSiblingEv, ptr @_ZN11xercesc_2_78AttrImpl11getNodeNameEv, ptr @_ZN11xercesc_2_78AttrImpl11getNodeTypeEv, ptr @_ZN11xercesc_2_78AttrImpl12getNodeValueEv, ptr @_ZN11xercesc_2_78NodeImpl16getOwnerDocumentEv, ptr @_ZN11xercesc_2_78NodeImpl13getParentNodeEv, ptr @_ZN11xercesc_2_78NodeImpl18getPreviousSiblingEv, ptr @_ZN11xercesc_2_78NodeImpl11getUserDataEv, ptr @_ZN11xercesc_2_78AttrImpl13hasChildNodesEv, ptr @_ZN11xercesc_2_78AttrImpl12insertBeforeEPNS_8NodeImplES2_, ptr @_ZN11xercesc_2_78AttrImpl11removeChildEPNS_8NodeImplE, ptr @_ZN11xercesc_2_78AttrImpl12replaceChildEPNS_8NodeImplES2_, ptr @_ZN11xercesc_2_78AttrImpl12setNodeValueERKNS_9DOMStringE, ptr @_ZN11xercesc_2_78AttrImpl11setReadOnlyEbb, ptr @_ZN11xercesc_2_78NodeImpl11setUserDataEPv, ptr @_ZN11xercesc_2_78AttrImpl8toStringEv, ptr @_ZN11xercesc_2_78AttrImpl9normalizeEv, ptr @_ZN11xercesc_2_78NodeImpl11isSupportedERKNS_9DOMStringES3_, ptr @_ZN11xercesc_2_78NodeImpl15getNamespaceURIEv, ptr @_ZN11xercesc_2_78NodeImpl9getPrefixEv, ptr @_ZN11xercesc_2_78NodeImpl12getLocalNameEv, ptr @_ZN11xercesc_2_78NodeImpl9setPrefixERKNS_9DOMStringE, ptr @_ZN11xercesc_2_78NodeImpl13hasAttributesEv, ptr @_ZN11xercesc_2_78NodeImpl16setOwnerDocumentEPNS_12DocumentImplE, ptr @_ZN11xercesc_2_78NodeImpl11getDocumentEv, ptr @_ZN11xercesc_2_78AttrImpl7getNameEv, ptr @_ZN11xercesc_2_78AttrImpl12getSpecifiedEv, ptr @_ZN11xercesc_2_78AttrImpl8getValueEv, ptr @_ZN11xercesc_2_78AttrImpl12setSpecifiedEb, ptr @_ZN11xercesc_2_78AttrImpl8setValueERKNS_9DOMStringE] }, align 8
@_ZTIN11xercesc_2_716DOM_DOMExceptionE = external constant ptr
@.str = private unnamed_addr constant [3 x i8] c"=\22\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_78AttrImplE = dso_local constant [25 x i8] c"N11xercesc_2_78AttrImplE\00", align 1
@_ZTIN11xercesc_2_78NodeImplE = external constant ptr
@_ZTIN11xercesc_2_78AttrImplE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_78AttrImplE, ptr @_ZTIN11xercesc_2_78NodeImplE }, align 8
@_ZN11xercesc_2_78NodeImpl9SPECIFIEDE = external local_unnamed_addr constant i16, align 2
@_ZN11xercesc_2_78NodeImpl9HASSTRINGE = external local_unnamed_addr constant i16, align 2
@_ZN11xercesc_2_78NodeImpl7ID_ATTRE = external local_unnamed_addr constant i16, align 2
@_ZN11xercesc_2_78NodeImpl10FIRSTCHILDE = external local_unnamed_addr constant i16, align 2
@_ZN11xercesc_2_78NodeImpl5OWNEDE = external local_unnamed_addr constant i16, align 2
@_ZN11xercesc_2_78NodeImpl8READONLYE = external local_unnamed_addr constant i16, align 2
@.str.2 = private unnamed_addr constant [33 x i8] c"./xercesc/util/BaseRefVectorOf.c\00", align 1
@_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant [48 x i8] c"N11xercesc_2_730ArrayIndexOutOfBoundsExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE = external constant [0 x i16], align 2

@_ZN11xercesc_2_78AttrImplC1EPNS_12DocumentImplERKNS_9DOMStringE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xercesc_2_78AttrImplC2EPNS_12DocumentImplERKNS_9DOMStringE
@_ZN11xercesc_2_78AttrImplC1ERKS0_b = dso_local unnamed_addr alias void (ptr, ptr, i1), ptr @_ZN11xercesc_2_78AttrImplC2ERKS0_b
@_ZN11xercesc_2_78AttrImplD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_78AttrImplD2Ev

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_78AttrImplC2EPNS_12DocumentImplERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %4 = alloca %"class.xercesc_2_7::DOMString", align 8
  tail call void @_ZN11xercesc_2_78NodeImplC2EPNS_12DocumentImplE(ptr noundef nonnull align 8 dereferenceable(26) %0, ptr noundef %1)
  store ptr getelementptr inbounds ({ [54 x ptr] }, ptr @_ZTVN11xercesc_2_78AttrImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %5 = getelementptr inbounds %"class.xercesc_2_7::AttrImpl", ptr %0, i64 0, i32 1
  invoke void @_ZN11xercesc_2_79DOMStringC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %6 unwind label %17

6:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  invoke void @_ZNK11xercesc_2_79DOMString5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %7 unwind label %19

7:                                                ; preds = %6
  %8 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %9 unwind label %21

9:                                                ; preds = %7
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  %10 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %0, i64 0, i32 3
  %11 = load i16, ptr %10, align 8, !tbaa !38
  %12 = load i16, ptr @_ZN11xercesc_2_78NodeImpl9SPECIFIEDE, align 2, !tbaa !46
  %13 = or i16 %12, %11
  store i16 %13, ptr %10, align 8, !tbaa !38
  %14 = load i16, ptr @_ZN11xercesc_2_78NodeImpl9HASSTRINGE, align 2, !tbaa !46
  %15 = or i16 %14, %13
  store i16 %15, ptr %10, align 8, !tbaa !38
  %16 = getelementptr inbounds %"class.xercesc_2_7::AttrImpl", ptr %0, i64 0, i32 2
  store ptr null, ptr %16, align 8, !tbaa !47
  ret void

17:                                               ; preds = %3
  %18 = landingpad { ptr, i32 }
          cleanup
  br label %25

19:                                               ; preds = %6
  %20 = landingpad { ptr, i32 }
          cleanup
  br label %23

21:                                               ; preds = %7
  %22 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #12
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi { ptr, i32 } [ %22, %21 ], [ %20, %19 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  br label %25

25:                                               ; preds = %23, %17
  %26 = phi { ptr, i32 } [ %24, %23 ], [ %18, %17 ]
  call void @_ZN11xercesc_2_78NodeImplD2Ev(ptr noundef nonnull align 8 dereferenceable(26) %0) #12
  resume { ptr, i32 } %26
}

declare void @_ZN11xercesc_2_78NodeImplC2EPNS_12DocumentImplE(ptr noundef nonnull align 8 dereferenceable(26), ptr noundef) unnamed_addr #1

declare void @_ZN11xercesc_2_79DOMStringC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare void @_ZNK11xercesc_2_79DOMString5cloneEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_78NodeImplD2Ev(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_78AttrImplC2ERKS0_b(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i1 zeroext %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %4 = alloca %"class.xercesc_2_7::DOMString", align 8
  %5 = alloca %"class.xercesc_2_7::DOMString", align 8
  tail call void @_ZN11xercesc_2_78NodeImplC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(26) %0, ptr noundef nonnull align 8 dereferenceable(26) %1)
  store ptr getelementptr inbounds ({ [54 x ptr] }, ptr @_ZTVN11xercesc_2_78AttrImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %6 = getelementptr inbounds %"class.xercesc_2_7::AttrImpl", ptr %0, i64 0, i32 1
  invoke void @_ZN11xercesc_2_79DOMStringC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %7 unwind label %46

7:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  %8 = getelementptr inbounds %"class.xercesc_2_7::AttrImpl", ptr %1, i64 0, i32 1
  invoke void @_ZNK11xercesc_2_79DOMString5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %9 unwind label %48

9:                                                ; preds = %7
  %10 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %11 unwind label %50

11:                                               ; preds = %9
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  %12 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %1, i64 0, i32 3
  %13 = load i16, ptr %12, align 8, !tbaa !38
  %14 = load i16, ptr @_ZN11xercesc_2_78NodeImpl9SPECIFIEDE, align 2, !tbaa !46
  %15 = and i16 %14, %13
  %16 = icmp eq i16 %15, 0
  %17 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %0, i64 0, i32 3
  %18 = load i16, ptr %17, align 8, !tbaa !38
  %19 = or i16 %18, %14
  %20 = xor i16 %14, -1
  %21 = and i16 %18, %20
  %22 = select i1 %16, i16 %21, i16 %19
  %23 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %0, i64 0, i32 3
  store i16 %22, ptr %23, align 8, !tbaa !38
  %24 = getelementptr inbounds %"class.xercesc_2_7::AttrImpl", ptr %0, i64 0, i32 2
  store ptr null, ptr %24, align 8, !tbaa !47
  %25 = load i16, ptr %12, align 8, !tbaa !38
  %26 = load i16, ptr @_ZN11xercesc_2_78NodeImpl9HASSTRINGE, align 2, !tbaa !46
  %27 = and i16 %26, %25
  %28 = icmp eq i16 %27, 0
  %29 = or i16 %26, %22
  %30 = xor i16 %26, -1
  %31 = and i16 %22, %30
  %32 = select i1 %28, i16 %31, i16 %29
  store i16 %32, ptr %23, align 8, !tbaa !38
  %33 = load i16, ptr %12, align 8, !tbaa !38
  %34 = load i16, ptr @_ZN11xercesc_2_78NodeImpl7ID_ATTRE, align 2, !tbaa !46
  %35 = and i16 %34, %33
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %58, label %37

37:                                               ; preds = %11
  %38 = or i16 %32, %34
  store i16 %38, ptr %23, align 8, !tbaa !38
  %39 = load ptr, ptr %0, align 8, !tbaa !35
  %40 = getelementptr inbounds ptr, ptr %39, i64 26
  %41 = load ptr, ptr %40, align 8
  %42 = invoke noundef ptr %41(ptr noundef nonnull align 8 dereferenceable(26) %0)
          to label %43 unwind label %56

43:                                               ; preds = %37
  %44 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %42, i64 0, i32 4
  %45 = load ptr, ptr %44, align 8, !tbaa !48
  invoke void @_ZN11xercesc_2_79NodeIDMap3addEPNS_8AttrImplE(ptr noundef nonnull align 8 dereferenceable(40) %45, ptr noundef nonnull %0)
          to label %58 unwind label %56

46:                                               ; preds = %3
  %47 = landingpad { ptr, i32 }
          cleanup
  br label %130

48:                                               ; preds = %7
  %49 = landingpad { ptr, i32 }
          cleanup
  br label %52

50:                                               ; preds = %9
  %51 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #12
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi { ptr, i32 } [ %51, %50 ], [ %49, %48 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  br label %128

54:                                               ; preds = %70, %75, %80
  %55 = landingpad { ptr, i32 }
          cleanup
  br label %128

56:                                               ; preds = %37, %43, %92, %62
  %57 = landingpad { ptr, i32 }
          cleanup
  br label %128

58:                                               ; preds = %43, %11
  %59 = load i16, ptr %23, align 8, !tbaa !38
  %60 = and i16 %59, %26
  %61 = icmp eq i16 %60, 0
  br i1 %61, label %62, label %85

62:                                               ; preds = %58
  %63 = load ptr, ptr %1, align 8, !tbaa !35
  %64 = getelementptr inbounds ptr, ptr %63, i64 20
  %65 = load ptr, ptr %64, align 8
  %66 = invoke noundef ptr %65(ptr noundef nonnull align 8 dereferenceable(26) %1)
          to label %67 unwind label %56

67:                                               ; preds = %62, %80
  %68 = phi ptr [ %84, %80 ], [ %66, %62 ]
  %69 = icmp eq ptr %68, null
  br i1 %69, label %127, label %70

70:                                               ; preds = %67
  %71 = load ptr, ptr %68, align 8, !tbaa !35
  %72 = getelementptr inbounds ptr, ptr %71, i64 17
  %73 = load ptr, ptr %72, align 8
  %74 = invoke noundef ptr %73(ptr noundef nonnull align 8 dereferenceable(26) %68, i1 noundef zeroext true)
          to label %75 unwind label %54

75:                                               ; preds = %70
  %76 = load ptr, ptr %0, align 8, !tbaa !35
  %77 = getelementptr inbounds ptr, ptr %76, i64 16
  %78 = load ptr, ptr %77, align 8
  %79 = invoke noundef ptr %78(ptr noundef nonnull align 8 dereferenceable(26) %0, ptr noundef %74)
          to label %80 unwind label %54

80:                                               ; preds = %75
  %81 = load ptr, ptr %68, align 8, !tbaa !35
  %82 = getelementptr inbounds ptr, ptr %81, i64 22
  %83 = load ptr, ptr %82, align 8
  %84 = invoke noundef ptr %83(ptr noundef nonnull align 8 dereferenceable(26) %68)
          to label %67 unwind label %54, !llvm.loop !53

85:                                               ; preds = %58
  %86 = getelementptr inbounds %"class.xercesc_2_7::AttrImpl", ptr %1, i64 0, i32 2
  %87 = load ptr, ptr %86, align 8, !tbaa !47
  %88 = icmp eq ptr %87, null
  %89 = load ptr, ptr %24, align 8, !tbaa !47
  %90 = icmp eq ptr %89, null
  br i1 %88, label %91, label %99

91:                                               ; preds = %85
  br i1 %90, label %127, label %92

92:                                               ; preds = %91
  %93 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSEPNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %89, ptr noundef null)
          to label %94 unwind label %56

94:                                               ; preds = %92
  %95 = load ptr, ptr %24, align 8, !tbaa !47
  %96 = icmp eq ptr %95, null
  br i1 %96, label %98, label %97

97:                                               ; preds = %94
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %95) #12
  call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %95) #12
  br label %98

98:                                               ; preds = %97, %94
  store ptr null, ptr %24, align 8, !tbaa !47
  br label %127

99:                                               ; preds = %85
  br i1 %90, label %100, label %111

100:                                              ; preds = %99
  %101 = load ptr, ptr %0, align 8, !tbaa !35
  %102 = getelementptr inbounds ptr, ptr %101, i64 26
  %103 = load ptr, ptr %102, align 8
  %104 = invoke noundef ptr %103(ptr noundef nonnull align 8 dereferenceable(26) %0)
          to label %105 unwind label %117

105:                                              ; preds = %100
  %106 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %104, i64 0, i32 11
  %107 = load ptr, ptr %106, align 8, !tbaa !56
  %108 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 8, ptr noundef %107)
          to label %109 unwind label %117

109:                                              ; preds = %105
  invoke void @_ZN11xercesc_2_79DOMStringC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %108)
          to label %110 unwind label %119

110:                                              ; preds = %109
  store ptr %108, ptr %24, align 8, !tbaa !47
  br label %111

111:                                              ; preds = %99, %110
  %112 = phi ptr [ %108, %110 ], [ %89, %99 ]
  %113 = load ptr, ptr %86, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #12
  invoke void @_ZNK11xercesc_2_79DOMString5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %113)
          to label %114 unwind label %121

114:                                              ; preds = %111
  %115 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %112, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %116 unwind label %123

116:                                              ; preds = %114
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  br label %127

117:                                              ; preds = %105, %100
  %118 = landingpad { ptr, i32 }
          cleanup
  br label %128

119:                                              ; preds = %109
  %120 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %108, ptr noundef %107) #12
  br label %128

121:                                              ; preds = %111
  %122 = landingpad { ptr, i32 }
          cleanup
  br label %125

123:                                              ; preds = %114
  %124 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  br label %125

125:                                              ; preds = %123, %121
  %126 = phi { ptr, i32 } [ %124, %123 ], [ %122, %121 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  br label %128

127:                                              ; preds = %67, %116, %98, %91
  ret void

128:                                              ; preds = %54, %56, %117, %125, %119, %52
  %129 = phi { ptr, i32 } [ %53, %52 ], [ %126, %125 ], [ %120, %119 ], [ %118, %117 ], [ %55, %54 ], [ %57, %56 ]
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #12
  br label %130

130:                                              ; preds = %128, %46
  %131 = phi { ptr, i32 } [ %129, %128 ], [ %47, %46 ]
  call void @_ZN11xercesc_2_78NodeImplD2Ev(ptr noundef nonnull align 8 dereferenceable(26) %0) #12
  resume { ptr, i32 } %131
}

declare void @_ZN11xercesc_2_78NodeImplC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(26), ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

declare void @_ZN11xercesc_2_79NodeIDMap3addEPNS_8AttrImplE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_78AttrImpl13cloneChildrenERKNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(26) %1) local_unnamed_addr #0 align 2 !prof !34 {
  %3 = load ptr, ptr %1, align 8, !tbaa !35
  %4 = getelementptr inbounds ptr, ptr %3, i64 20
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(26) %1)
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %9, %2
  ret void

9:                                                ; preds = %2, %9
  %10 = phi ptr [ %22, %9 ], [ %6, %2 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !35
  %12 = getelementptr inbounds ptr, ptr %11, i64 17
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(26) %10, i1 noundef zeroext true)
  %15 = load ptr, ptr %0, align 8, !tbaa !35
  %16 = getelementptr inbounds ptr, ptr %15, i64 16
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(26) %0, ptr noundef %14)
  %19 = load ptr, ptr %10, align 8, !tbaa !35
  %20 = getelementptr inbounds ptr, ptr %19, i64 22
  %21 = load ptr, ptr %20, align 8
  %22 = tail call noundef ptr %21(ptr noundef nonnull align 8 dereferenceable(26) %10)
  %23 = icmp eq ptr %22, null
  br i1 %23, label %8, label %9, !llvm.loop !53
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSEPNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #3

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_78AttrImplD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  store ptr getelementptr inbounds ({ [54 x ptr] }, ptr @_ZTVN11xercesc_2_78AttrImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %0, i64 0, i32 3
  %3 = load i16, ptr %2, align 8, !tbaa !38
  %4 = load i16, ptr @_ZN11xercesc_2_78NodeImpl9HASSTRINGE, align 2, !tbaa !46
  %5 = and i16 %4, %3
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %18, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %"class.xercesc_2_7::AttrImpl", ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !47
  %10 = icmp eq ptr %9, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %7
  %12 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSEPNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef null)
          to label %13 unwind label %20

13:                                               ; preds = %11
  %14 = load ptr, ptr %8, align 8, !tbaa !47
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  tail call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %14) #12
  br label %17

17:                                               ; preds = %16, %13
  store ptr null, ptr %8, align 8, !tbaa !47
  br label %18

18:                                               ; preds = %7, %17, %1
  %19 = getelementptr inbounds %"class.xercesc_2_7::AttrImpl", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %19) #12
  tail call void @_ZN11xercesc_2_78NodeImplD2Ev(ptr noundef nonnull align 8 dereferenceable(26) %0) #12
  ret void

20:                                               ; preds = %11
  %21 = landingpad { ptr, i32 }
          catch ptr null
  %22 = extractvalue { ptr, i32 } %21, 0
  tail call void @__clang_call_terminate(ptr %22) #13
  unreachable
}

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat !prof !34 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #12
  tail call void @_ZSt9terminatev() #13
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_78AttrImplD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_78AttrImplD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_78AttrImpl13makeChildNodeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %0, i64 0, i32 3
  %3 = load i16, ptr %2, align 8, !tbaa !38
  %4 = load i16, ptr @_ZN11xercesc_2_78NodeImpl9HASSTRINGE, align 2, !tbaa !46
  %5 = and i16 %4, %3
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %33, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %"class.xercesc_2_7::AttrImpl", ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !47
  %10 = icmp eq ptr %9, null
  br i1 %10, label %29, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr %0, align 8, !tbaa !35
  %13 = getelementptr inbounds ptr, ptr %12, i64 26
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(26) %0)
  %16 = load ptr, ptr %15, align 8, !tbaa !35
  %17 = getelementptr inbounds ptr, ptr %16, i64 59
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(168) %15, ptr noundef nonnull align 8 dereferenceable(8) %9)
  %20 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSEPNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef null)
  tail call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %9) #12
  store ptr %19, ptr %8, align 8, !tbaa !47
  %21 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %19, i64 0, i32 3
  %22 = load i16, ptr %21, align 8, !tbaa !38
  %23 = load i16, ptr @_ZN11xercesc_2_78NodeImpl10FIRSTCHILDE, align 2, !tbaa !46
  %24 = or i16 %23, %22
  store i16 %24, ptr %21, align 8, !tbaa !38
  %25 = getelementptr inbounds %"class.xercesc_2_7::ChildNode", ptr %19, i64 0, i32 1
  store ptr %19, ptr %25, align 8, !tbaa !57
  %26 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %19, i64 0, i32 2
  store ptr %0, ptr %26, align 8, !tbaa !58
  %27 = load i16, ptr @_ZN11xercesc_2_78NodeImpl5OWNEDE, align 2, !tbaa !46
  %28 = or i16 %27, %24
  store i16 %28, ptr %21, align 8, !tbaa !38
  br label %29

29:                                               ; preds = %11, %7
  %30 = load i16, ptr %2, align 8, !tbaa !38
  %31 = xor i16 %4, -1
  %32 = and i16 %30, %31
  store i16 %32, ptr %2, align 8, !tbaa !38
  br label %33

33:                                               ; preds = %29, %1
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_78AttrImpl9cloneNodeEb(ptr noundef nonnull align 8 dereferenceable(48) %0, i1 zeroext %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = getelementptr inbounds ptr, ptr %3, i64 26
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(26) %0)
  %7 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %6, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !56
  %9 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %8)
  invoke void @_ZN11xercesc_2_78AttrImplC2ERKS0_b(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull align 8 dereferenceable(48) %0, i1 zeroext poison)
          to label %10 unwind label %11

10:                                               ; preds = %2
  ret ptr %9

11:                                               ; preds = %2
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %9, ptr noundef %8) #12
  resume { ptr, i32 } %12
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_78AttrImpl11getNodeNameEv(ptr dead_on_unwind noalias nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::AttrImpl", ptr %1, i64 0, i32 1
  tail call void @_ZN11xercesc_2_79DOMStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %3)
  ret void
}

declare void @_ZN11xercesc_2_79DOMStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef signext i16 @_ZN11xercesc_2_78AttrImpl11getNodeTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #6 align 2 !prof !34 {
  ret i16 2
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_78AttrImpl7getNameEv(ptr dead_on_unwind noalias nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::AttrImpl", ptr %1, i64 0, i32 1
  tail call void @_ZN11xercesc_2_79DOMStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %3)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_78AttrImpl12getNodeValueEv(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOMString") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 align 2 !prof !34 {
  %3 = load ptr, ptr %1, align 8, !tbaa !35
  %4 = getelementptr inbounds ptr, ptr %3, i64 49
  %5 = load ptr, ptr %4, align 8
  tail call void %5(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1)
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_78AttrImpl12getSpecifiedEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %0) unnamed_addr #7 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %0, i64 0, i32 3
  %3 = load i16, ptr %2, align 8, !tbaa !38
  %4 = load i16, ptr @_ZN11xercesc_2_78NodeImpl9SPECIFIEDE, align 2, !tbaa !46
  %5 = and i16 %4, %3
  %6 = icmp ne i16 %5, 0
  ret i1 %6
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_78AttrImpl8getValueEv(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOMString") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  %4 = alloca %"class.xercesc_2_7::DOMString", align 8
  %5 = alloca %"class.xercesc_2_7::DOMString", align 8
  %6 = getelementptr inbounds %"class.xercesc_2_7::AttrImpl", ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !47
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  tail call void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 0)
  br label %63

10:                                               ; preds = %2
  %11 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %1, i64 0, i32 3
  %12 = load i16, ptr %11, align 8, !tbaa !38
  %13 = load i16, ptr @_ZN11xercesc_2_78NodeImpl9HASSTRINGE, align 2, !tbaa !46
  %14 = and i16 %13, %12
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %10
  tail call void @_ZN11xercesc_2_79DOMStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %7)
  br label %63

17:                                               ; preds = %10
  %18 = getelementptr inbounds %"class.xercesc_2_7::ChildNode", ptr %7, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !59
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #12
  %22 = load ptr, ptr %7, align 8, !tbaa !35
  %23 = getelementptr inbounds ptr, ptr %22, i64 25
  %24 = load ptr, ptr %23, align 8
  call void %24(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %3, ptr noundef nonnull align 8 dereferenceable(26) %7)
  invoke void @_ZNK11xercesc_2_79DOMString5cloneEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %25 unwind label %26

25:                                               ; preds = %21
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  br label %63

26:                                               ; preds = %21
  %27 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  br label %64

28:                                               ; preds = %17, %35
  %29 = phi i32 [ %36, %35 ], [ 0, %17 ]
  %30 = phi ptr [ %38, %35 ], [ %7, %17 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  %31 = load ptr, ptr %30, align 8, !tbaa !35
  %32 = getelementptr inbounds ptr, ptr %31, i64 25
  %33 = load ptr, ptr %32, align 8
  call void %33(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %4, ptr noundef nonnull align 8 dereferenceable(26) %30)
  %34 = invoke noundef i32 @_ZNK11xercesc_2_79DOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %35 unwind label %40

35:                                               ; preds = %28
  %36 = add i32 %34, %29
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  %37 = getelementptr inbounds %"class.xercesc_2_7::ChildNode", ptr %30, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !59
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %28, !llvm.loop !60

40:                                               ; preds = %28
  %41 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  br label %64

42:                                               ; preds = %35
  call void @_ZN11xercesc_2_79DOMStringC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0)
  invoke void @_ZN11xercesc_2_79DOMString7reserveEj(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %36)
          to label %43 unwind label %53

43:                                               ; preds = %42, %49
  %44 = phi ptr [ %51, %49 ], [ %7, %42 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #12
  %45 = load ptr, ptr %44, align 8, !tbaa !35
  %46 = getelementptr inbounds ptr, ptr %45, i64 25
  %47 = load ptr, ptr %46, align 8
  invoke void %47(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %5, ptr noundef nonnull align 8 dereferenceable(26) %44)
          to label %48 unwind label %55

48:                                               ; preds = %43
  invoke void @_ZN11xercesc_2_79DOMString10appendDataERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %49 unwind label %57

49:                                               ; preds = %48
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  %50 = getelementptr inbounds %"class.xercesc_2_7::ChildNode", ptr %44, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !59
  %52 = icmp eq ptr %51, null
  br i1 %52, label %63, label %43, !llvm.loop !61

53:                                               ; preds = %42
  %54 = landingpad { ptr, i32 }
          cleanup
  br label %61

55:                                               ; preds = %43
  %56 = landingpad { ptr, i32 }
          cleanup
  br label %59

57:                                               ; preds = %48
  %58 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  br label %59

59:                                               ; preds = %57, %55
  %60 = phi { ptr, i32 } [ %58, %57 ], [ %56, %55 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  br label %61

61:                                               ; preds = %59, %53
  %62 = phi { ptr, i32 } [ %60, %59 ], [ %54, %53 ]
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #12
  br label %64

63:                                               ; preds = %49, %25, %16, %9
  ret void

64:                                               ; preds = %26, %61, %40
  %65 = phi { ptr, i32 } [ %27, %26 ], [ %41, %40 ], [ %62, %61 ]
  resume { ptr, i32 } %65
}

declare void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #1

declare noundef i32 @_ZNK11xercesc_2_79DOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZN11xercesc_2_79DOMString7reserveEj(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #1

declare void @_ZN11xercesc_2_79DOMString10appendDataERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_78AttrImpl10isAttrImplEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #6 align 2 !prof !34 {
  ret i1 true
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_78AttrImpl12setNodeValueERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = getelementptr inbounds ptr, ptr %3, i64 51
  %5 = load ptr, ptr %4, align 8
  tail call void %5(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN11xercesc_2_78AttrImpl12setSpecifiedEb(ptr nocapture noundef nonnull align 8 dereferenceable(48) %0, i1 noundef zeroext %1) unnamed_addr #8 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %0, i64 0, i32 3
  %4 = load i16, ptr %3, align 8, !tbaa !38
  %5 = load i16, ptr @_ZN11xercesc_2_78NodeImpl9SPECIFIEDE, align 2, !tbaa !46
  %6 = or i16 %5, %4
  %7 = xor i16 %5, -1
  %8 = and i16 %4, %7
  %9 = select i1 %1, i16 %6, i16 %8
  %10 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %0, i64 0, i32 3
  store i16 %9, ptr %10, align 8, !tbaa !38
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_78AttrImpl8setValueERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  %4 = alloca %"class.xercesc_2_7::DOMString", align 8
  %5 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %0, i64 0, i32 3
  %6 = load i16, ptr %5, align 8, !tbaa !38
  %7 = load i16, ptr @_ZN11xercesc_2_78NodeImpl8READONLYE, align 2, !tbaa !46
  %8 = and i16 %7, %6
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %23, label %10

10:                                               ; preds = %2
  %11 = tail call ptr @__cxa_allocate_exception(i64 24) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #12
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 0)
          to label %12 unwind label %14

12:                                               ; preds = %10
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %11, i16 noundef signext 7, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %13 unwind label %16

13:                                               ; preds = %12
  invoke void @__cxa_throw(ptr nonnull %11, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #14
          to label %102 unwind label %16

14:                                               ; preds = %10
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %19

16:                                               ; preds = %13, %12
  %17 = phi i1 [ false, %13 ], [ true, %12 ]
  %18 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #12
  br label %19

19:                                               ; preds = %16, %14
  %20 = phi i1 [ %17, %16 ], [ true, %14 ]
  %21 = phi { ptr, i32 } [ %18, %16 ], [ %15, %14 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  br i1 %20, label %22, label %100

22:                                               ; preds = %19
  call void @__cxa_free_exception(ptr %11) #12
  br label %100

23:                                               ; preds = %2
  %24 = load i16, ptr @_ZN11xercesc_2_78NodeImpl7ID_ATTRE, align 2, !tbaa !46
  %25 = and i16 %24, %6
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %23
  %28 = load ptr, ptr %0, align 8, !tbaa !35
  %29 = getelementptr inbounds ptr, ptr %28, i64 26
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef ptr %30(ptr noundef nonnull align 8 dereferenceable(26) %0)
  %32 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %31, i64 0, i32 4
  %33 = load ptr, ptr %32, align 8, !tbaa !48
  tail call void @_ZN11xercesc_2_79NodeIDMap6removeEPNS_8AttrImplE(ptr noundef nonnull align 8 dereferenceable(40) %33, ptr noundef nonnull %0)
  br label %34

34:                                               ; preds = %27, %23
  %35 = load i16, ptr %5, align 8, !tbaa !38
  %36 = load i16, ptr @_ZN11xercesc_2_78NodeImpl9HASSTRINGE, align 2, !tbaa !46
  %37 = and i16 %36, %35
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %39, label %56

39:                                               ; preds = %34
  %40 = getelementptr inbounds %"class.xercesc_2_7::AttrImpl", ptr %0, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8
  %42 = icmp eq ptr %41, null
  br i1 %42, label %56, label %43

43:                                               ; preds = %39, %53
  %44 = phi ptr [ %54, %53 ], [ %41, %39 ]
  %45 = load ptr, ptr %0, align 8, !tbaa !35
  %46 = getelementptr inbounds ptr, ptr %45, i64 32
  %47 = load ptr, ptr %46, align 8
  %48 = tail call noundef ptr %47(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %44)
  %49 = getelementptr inbounds %"class.xercesc_2_7::RefCountedImpl", ptr %44, i64 0, i32 1
  %50 = load i32, ptr %49, align 8, !tbaa !62
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %43
  tail call void @_ZN11xercesc_2_78NodeImpl8deleteIfEPS0_(ptr noundef nonnull %44)
  br label %53

53:                                               ; preds = %52, %43
  %54 = load ptr, ptr %40, align 8, !tbaa !47
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %43, !llvm.loop !63

56:                                               ; preds = %53, %39, %34
  %57 = getelementptr inbounds %"class.xercesc_2_7::AttrImpl", ptr %0, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !47
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %69

60:                                               ; preds = %56
  %61 = load ptr, ptr %0, align 8, !tbaa !35
  %62 = getelementptr inbounds ptr, ptr %61, i64 26
  %63 = load ptr, ptr %62, align 8
  %64 = tail call noundef ptr %63(ptr noundef nonnull align 8 dereferenceable(26) %0)
  %65 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %64, i64 0, i32 11
  %66 = load ptr, ptr %65, align 8, !tbaa !56
  %67 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 8, ptr noundef %66)
  invoke void @_ZN11xercesc_2_79DOMStringC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %67)
          to label %68 unwind label %75

68:                                               ; preds = %60
  store ptr %67, ptr %57, align 8, !tbaa !47
  br label %69

69:                                               ; preds = %56, %68
  %70 = phi ptr [ %67, %68 ], [ %58, %56 ]
  %71 = tail call noundef zeroext i1 @_ZNK11xercesc_2_79DOMStringneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef null)
  br i1 %71, label %72, label %79

72:                                               ; preds = %69
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  call void @_ZNK11xercesc_2_79DOMString5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %73 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %70, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %74 unwind label %77

74:                                               ; preds = %72
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  br label %81

75:                                               ; preds = %60
  %76 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %67, ptr noundef %66) #12
  br label %100

77:                                               ; preds = %72
  %78 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  br label %100

79:                                               ; preds = %69
  %80 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSEPNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %70, ptr noundef null)
  tail call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %70) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %70) #12
  store ptr null, ptr %57, align 8, !tbaa !47
  br label %81

81:                                               ; preds = %79, %74
  %82 = load i16, ptr %5, align 8, !tbaa !38
  %83 = or i16 %82, %36
  store i16 %83, ptr %5, align 8, !tbaa !38
  %84 = load i16, ptr @_ZN11xercesc_2_78NodeImpl9SPECIFIEDE, align 2, !tbaa !46
  %85 = or i16 %84, %83
  store i16 %85, ptr %5, align 8, !tbaa !38
  %86 = load ptr, ptr %0, align 8, !tbaa !35
  %87 = getelementptr inbounds ptr, ptr %86, i64 14
  %88 = load ptr, ptr %87, align 8
  call void %88(ptr noundef nonnull align 8 dereferenceable(26) %0)
  %89 = load i16, ptr %5, align 8, !tbaa !38
  %90 = and i16 %89, %24
  %91 = icmp eq i16 %90, 0
  br i1 %91, label %99, label %92

92:                                               ; preds = %81
  %93 = load ptr, ptr %0, align 8, !tbaa !35
  %94 = getelementptr inbounds ptr, ptr %93, i64 26
  %95 = load ptr, ptr %94, align 8
  %96 = call noundef ptr %95(ptr noundef nonnull align 8 dereferenceable(26) %0)
  %97 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %96, i64 0, i32 4
  %98 = load ptr, ptr %97, align 8, !tbaa !48
  call void @_ZN11xercesc_2_79NodeIDMap3addEPNS_8AttrImplE(ptr noundef nonnull align 8 dereferenceable(40) %98, ptr noundef nonnull %0)
  br label %99

99:                                               ; preds = %92, %81
  ret void

100:                                              ; preds = %77, %75, %19, %22
  %101 = phi { ptr, i32 } [ %21, %22 ], [ %21, %19 ], [ %78, %77 ], [ %76, %75 ]
  resume { ptr, i32 } %101

102:                                              ; preds = %13
  unreachable
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24), i16 noundef signext, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @_ZN11xercesc_2_79NodeIDMap6removeEPNS_8AttrImplE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #1

declare void @_ZN11xercesc_2_78NodeImpl8deleteIfEPS0_(ptr noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK11xercesc_2_79DOMStringneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_78AttrImpl8toStringEv(ptr dead_on_unwind noalias nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  %4 = alloca %"class.xercesc_2_7::DOMString", align 8
  %5 = alloca %"class.xercesc_2_7::DOMString", align 8
  tail call void @_ZN11xercesc_2_79DOMStringC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %6 = getelementptr inbounds %"class.xercesc_2_7::AttrImpl", ptr %1, i64 0, i32 1
  invoke void @_ZN11xercesc_2_79DOMString10appendDataERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %7 unwind label %17

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #12
  invoke void @_ZN11xercesc_2_79DOMStringC1EPKc(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str)
          to label %8 unwind label %19

8:                                                ; preds = %7
  invoke void @_ZN11xercesc_2_79DOMString10appendDataERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %9 unwind label %21

9:                                                ; preds = %8
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  %10 = load ptr, ptr %1, align 8, !tbaa !35
  %11 = getelementptr inbounds ptr, ptr %10, i64 49
  %12 = load ptr, ptr %11, align 8
  invoke void %12(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %4, ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %13 unwind label %25

13:                                               ; preds = %9
  invoke void @_ZN11xercesc_2_79DOMString10appendDataERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %14 unwind label %27

14:                                               ; preds = %13
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #12
  invoke void @_ZN11xercesc_2_79DOMStringC1EPKc(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull @.str.1)
          to label %15 unwind label %31

15:                                               ; preds = %14
  invoke void @_ZN11xercesc_2_79DOMString10appendDataERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %16 unwind label %33

16:                                               ; preds = %15
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  ret void

17:                                               ; preds = %2
  %18 = landingpad { ptr, i32 }
          cleanup
  br label %37

19:                                               ; preds = %7
  %20 = landingpad { ptr, i32 }
          cleanup
  br label %23

21:                                               ; preds = %8
  %22 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #12
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi { ptr, i32 } [ %22, %21 ], [ %20, %19 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  br label %37

25:                                               ; preds = %9
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %29

27:                                               ; preds = %13
  %28 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #12
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi { ptr, i32 } [ %28, %27 ], [ %26, %25 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  br label %37

31:                                               ; preds = %14
  %32 = landingpad { ptr, i32 }
          cleanup
  br label %35

33:                                               ; preds = %15
  %34 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi { ptr, i32 } [ %34, %33 ], [ %32, %31 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  br label %37

37:                                               ; preds = %35, %29, %23, %17
  %38 = phi { ptr, i32 } [ %36, %35 ], [ %30, %29 ], [ %24, %23 ], [ %18, %17 ]
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #12
  resume { ptr, i32 } %38
}

declare void @_ZN11xercesc_2_79DOMStringC1EPKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZN11xercesc_2_78AttrImpl15getOwnerElementEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %0) local_unnamed_addr #7 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %0, i64 0, i32 3
  %3 = load i16, ptr %2, align 8, !tbaa !38
  %4 = load i16, ptr @_ZN11xercesc_2_78NodeImpl5OWNEDE, align 2, !tbaa !46
  %5 = and i16 %4, %3
  %6 = icmp eq i16 %5, 0
  %7 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = select i1 %6, ptr null, ptr %8
  ret ptr %9
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN11xercesc_2_78AttrImpl15setOwnerElementEPNS_11ElementImplE(ptr nocapture noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #8 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %0, i64 0, i32 2
  store ptr %1, ptr %3, align 8, !tbaa !58
  %4 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %0, i64 0, i32 3
  %5 = load i16, ptr %4, align 8, !tbaa !38
  %6 = load i16, ptr @_ZN11xercesc_2_78NodeImpl5OWNEDE, align 2, !tbaa !46
  %7 = xor i16 %6, -1
  %8 = and i16 %5, %7
  store i16 %8, ptr %4, align 8, !tbaa !38
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZN11xercesc_2_78AttrImpl13getChildNodesEv(ptr noundef nonnull readnone returned align 8 dereferenceable(48) %0) unnamed_addr #6 align 2 !prof !34 {
  ret ptr %0
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_78AttrImpl13getFirstChildEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_78AttrImpl13makeChildNodeEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  %2 = getelementptr inbounds %"class.xercesc_2_7::AttrImpl", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_78AttrImpl12getLastChildEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_78AttrImpl13makeChildNodeEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  %2 = getelementptr inbounds %"class.xercesc_2_7::AttrImpl", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::ChildNode", ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !57
  br label %8

8:                                                ; preds = %1, %5
  %9 = phi ptr [ %7, %5 ], [ null, %1 ]
  ret ptr %9
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_78AttrImpl9lastChildEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_78AttrImpl13makeChildNodeEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  %2 = getelementptr inbounds %"class.xercesc_2_7::AttrImpl", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::ChildNode", ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !57
  br label %8

8:                                                ; preds = %1, %5
  %9 = phi ptr [ %7, %5 ], [ null, %1 ]
  ret ptr %9
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_78AttrImpl9lastChildEPNS_9ChildNodeE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #9 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::AttrImpl", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::ChildNode", ptr %4, i64 0, i32 1
  store ptr %1, ptr %7, align 8, !tbaa !57
  br label %8

8:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_ZN11xercesc_2_78AttrImpl9getLengthEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %0) unnamed_addr #10 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %0, i64 0, i32 3
  %3 = load i16, ptr %2, align 8, !tbaa !38
  %4 = load i16, ptr @_ZN11xercesc_2_78NodeImpl9HASSTRINGE, align 2, !tbaa !46
  %5 = and i16 %4, %3
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %1
  %8 = getelementptr inbounds %"class.xercesc_2_7::AttrImpl", ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !47
  %10 = icmp eq ptr %9, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %7, %11
  %12 = phi ptr [ %16, %11 ], [ %9, %7 ]
  %13 = phi i32 [ %14, %11 ], [ 0, %7 ]
  %14 = add nuw nsw i32 %13, 1
  %15 = getelementptr inbounds %"class.xercesc_2_7::ChildNode", ptr %12, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !47
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %11, !llvm.loop !64

18:                                               ; preds = %11, %7, %1
  %19 = phi i32 [ 1, %1 ], [ 0, %7 ], [ %14, %11 ]
  ret i32 %19
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_78AttrImpl13hasChildNodesEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %0) unnamed_addr #7 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::AttrImpl", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = icmp ne ptr %3, null
  ret i1 %4
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_78AttrImpl12insertBeforeEPNS_8NodeImplES2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef returned %1, ptr noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %4 = alloca %"class.xercesc_2_7::DOMString", align 8
  %5 = alloca %"class.xercesc_2_7::DOMString", align 8
  %6 = alloca %"class.xercesc_2_7::DOMString", align 8
  %7 = alloca %"class.xercesc_2_7::DOMString", align 8
  %8 = alloca %"class.xercesc_2_7::DOMString", align 8
  %9 = alloca %"class.xercesc_2_7::DOMString", align 8
  %10 = load ptr, ptr %0, align 8, !tbaa !35
  %11 = getelementptr inbounds ptr, ptr %10, i64 26
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(26) %0)
  %14 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %13, i64 0, i32 10
  %15 = load i8, ptr %14, align 4, !tbaa !65, !range !66, !noundef !67
  %16 = icmp eq i8 %15, 0
  %17 = load ptr, ptr %1, align 8, !tbaa !35
  %18 = getelementptr inbounds ptr, ptr %17, i64 8
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef zeroext i1 %19(ptr noundef nonnull align 8 dereferenceable(26) %1)
  br i1 %20, label %21, label %67

21:                                               ; preds = %3
  br i1 %16, label %49, label %22

22:                                               ; preds = %21
  %23 = load ptr, ptr %1, align 8, !tbaa !35
  %24 = getelementptr inbounds ptr, ptr %23, i64 20
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef ptr %25(ptr noundef nonnull align 8 dereferenceable(26) %1)
  %27 = icmp eq ptr %26, null
  br i1 %27, label %49, label %28

28:                                               ; preds = %22, %43
  %29 = phi ptr [ %47, %43 ], [ %26, %22 ]
  %30 = tail call noundef zeroext i1 @_ZN11xercesc_2_712DocumentImpl7isKidOKEPNS_8NodeImplES2_(ptr noundef nonnull %0, ptr noundef nonnull %29)
  br i1 %30, label %43, label %31

31:                                               ; preds = %28
  %32 = tail call ptr @__cxa_allocate_exception(i64 24) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 0)
          to label %33 unwind label %35

33:                                               ; preds = %31
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %32, i16 noundef signext 3, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %34 unwind label %37

34:                                               ; preds = %33
  invoke void @__cxa_throw(ptr nonnull %32, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #14
          to label %254 unwind label %37

35:                                               ; preds = %31
  %36 = landingpad { ptr, i32 }
          cleanup
  br label %40

37:                                               ; preds = %34, %33
  %38 = phi i1 [ false, %34 ], [ true, %33 ]
  %39 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #12
  br label %40

40:                                               ; preds = %37, %35
  %41 = phi i1 [ %38, %37 ], [ true, %35 ]
  %42 = phi { ptr, i32 } [ %39, %37 ], [ %36, %35 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  br i1 %41, label %249, label %252

43:                                               ; preds = %28
  %44 = load ptr, ptr %29, align 8, !tbaa !35
  %45 = getelementptr inbounds ptr, ptr %44, i64 22
  %46 = load ptr, ptr %45, align 8
  %47 = tail call noundef ptr %46(ptr noundef nonnull align 8 dereferenceable(26) %29)
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %28, !llvm.loop !68

49:                                               ; preds = %43, %22, %21
  %50 = load ptr, ptr %1, align 8, !tbaa !35
  %51 = getelementptr inbounds ptr, ptr %50, i64 30
  %52 = load ptr, ptr %51, align 8
  %53 = tail call noundef zeroext i1 %52(ptr noundef nonnull align 8 dereferenceable(26) %1)
  br i1 %53, label %54, label %248

54:                                               ; preds = %49, %54
  %55 = load ptr, ptr %1, align 8, !tbaa !35
  %56 = getelementptr inbounds ptr, ptr %55, i64 20
  %57 = load ptr, ptr %56, align 8
  %58 = tail call noundef ptr %57(ptr noundef nonnull align 8 dereferenceable(26) %1)
  %59 = load ptr, ptr %0, align 8, !tbaa !35
  %60 = getelementptr inbounds ptr, ptr %59, i64 31
  %61 = load ptr, ptr %60, align 8
  %62 = tail call noundef ptr %61(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %58, ptr noundef %2)
  %63 = load ptr, ptr %1, align 8, !tbaa !35
  %64 = getelementptr inbounds ptr, ptr %63, i64 30
  %65 = load ptr, ptr %64, align 8
  %66 = tail call noundef zeroext i1 %65(ptr noundef nonnull align 8 dereferenceable(26) %1)
  br i1 %66, label %54, label %248, !llvm.loop !69

67:                                               ; preds = %3
  %68 = icmp eq ptr %2, %1
  br i1 %68, label %248, label %69

69:                                               ; preds = %67
  br i1 %16, label %168, label %70

70:                                               ; preds = %69
  %71 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %0, i64 0, i32 3
  %72 = load i16, ptr %71, align 8, !tbaa !38
  %73 = load i16, ptr @_ZN11xercesc_2_78NodeImpl8READONLYE, align 2, !tbaa !46
  %74 = and i16 %73, %72
  %75 = icmp eq i16 %74, 0
  br i1 %75, label %89, label %76

76:                                               ; preds = %70
  %77 = tail call ptr @__cxa_allocate_exception(i64 24) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #12
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef 0)
          to label %78 unwind label %81

78:                                               ; preds = %76
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %77, i16 noundef signext 7, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %79 unwind label %83

79:                                               ; preds = %78
  invoke void @__cxa_throw(ptr nonnull %77, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #14
          to label %80 unwind label %83

80:                                               ; preds = %79
  unreachable

81:                                               ; preds = %76
  %82 = landingpad { ptr, i32 }
          cleanup
  br label %86

83:                                               ; preds = %79, %78
  %84 = phi i1 [ false, %79 ], [ true, %78 ]
  %85 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  br label %86

86:                                               ; preds = %83, %81
  %87 = phi i1 [ %84, %83 ], [ true, %81 ]
  %88 = phi { ptr, i32 } [ %85, %83 ], [ %82, %81 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  br i1 %87, label %249, label %252

89:                                               ; preds = %70
  %90 = load ptr, ptr %1, align 8, !tbaa !35
  %91 = getelementptr inbounds ptr, ptr %90, i64 26
  %92 = load ptr, ptr %91, align 8
  %93 = tail call noundef ptr %92(ptr noundef nonnull align 8 dereferenceable(26) %1)
  %94 = icmp eq ptr %93, %13
  br i1 %94, label %108, label %95

95:                                               ; preds = %89
  %96 = tail call ptr @__cxa_allocate_exception(i64 24) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #12
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 0)
          to label %97 unwind label %100

97:                                               ; preds = %95
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %96, i16 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %98 unwind label %102

98:                                               ; preds = %97
  invoke void @__cxa_throw(ptr nonnull %96, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #14
          to label %99 unwind label %102

99:                                               ; preds = %98
  unreachable

100:                                              ; preds = %95
  %101 = landingpad { ptr, i32 }
          cleanup
  br label %105

102:                                              ; preds = %98, %97
  %103 = phi i1 [ false, %98 ], [ true, %97 ]
  %104 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #12
  br label %105

105:                                              ; preds = %102, %100
  %106 = phi i1 [ %103, %102 ], [ true, %100 ]
  %107 = phi { ptr, i32 } [ %104, %102 ], [ %101, %100 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #12
  br i1 %106, label %249, label %252

108:                                              ; preds = %89
  %109 = tail call noundef zeroext i1 @_ZN11xercesc_2_712DocumentImpl7isKidOKEPNS_8NodeImplES2_(ptr noundef nonnull %0, ptr noundef nonnull %1)
  br i1 %109, label %123, label %110

110:                                              ; preds = %108
  %111 = tail call ptr @__cxa_allocate_exception(i64 24) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #12
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef 0)
          to label %112 unwind label %115

112:                                              ; preds = %110
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %111, i16 noundef signext 3, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %113 unwind label %117

113:                                              ; preds = %112
  invoke void @__cxa_throw(ptr nonnull %111, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #14
          to label %114 unwind label %117

114:                                              ; preds = %113
  unreachable

115:                                              ; preds = %110
  %116 = landingpad { ptr, i32 }
          cleanup
  br label %120

117:                                              ; preds = %113, %112
  %118 = phi i1 [ false, %113 ], [ true, %112 ]
  %119 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #12
  br label %120

120:                                              ; preds = %117, %115
  %121 = phi i1 [ %118, %117 ], [ true, %115 ]
  %122 = phi { ptr, i32 } [ %119, %117 ], [ %116, %115 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #12
  br i1 %121, label %249, label %252

123:                                              ; preds = %108
  %124 = icmp eq ptr %2, null
  br i1 %124, label %125, label %126

125:                                              ; preds = %126, %123
  br label %146

126:                                              ; preds = %123
  %127 = load ptr, ptr %2, align 8, !tbaa !35
  %128 = getelementptr inbounds ptr, ptr %127, i64 27
  %129 = load ptr, ptr %128, align 8
  %130 = tail call noundef ptr %129(ptr noundef nonnull align 8 dereferenceable(26) %2)
  %131 = icmp eq ptr %130, %0
  br i1 %131, label %125, label %132

132:                                              ; preds = %126
  %133 = tail call ptr @__cxa_allocate_exception(i64 24) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #12
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef 0)
          to label %134 unwind label %137

134:                                              ; preds = %132
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %133, i16 noundef signext 8, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %135 unwind label %139

135:                                              ; preds = %134
  invoke void @__cxa_throw(ptr nonnull %133, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #14
          to label %136 unwind label %139

136:                                              ; preds = %135
  unreachable

137:                                              ; preds = %132
  %138 = landingpad { ptr, i32 }
          cleanup
  br label %142

139:                                              ; preds = %135, %134
  %140 = phi i1 [ false, %135 ], [ true, %134 ]
  %141 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #12
  br label %142

142:                                              ; preds = %139, %137
  %143 = phi i1 [ %140, %139 ], [ true, %137 ]
  %144 = phi { ptr, i32 } [ %141, %139 ], [ %138, %137 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #12
  br i1 %143, label %249, label %252

145:                                              ; preds = %146
  br i1 %148, label %168, label %155

146:                                              ; preds = %125, %146
  %147 = phi ptr [ %152, %146 ], [ %0, %125 ]
  %148 = icmp ne ptr %147, %1
  %149 = load ptr, ptr %147, align 8, !tbaa !35
  %150 = getelementptr inbounds ptr, ptr %149, i64 27
  %151 = load ptr, ptr %150, align 8
  %152 = tail call noundef ptr %151(ptr noundef nonnull align 8 dereferenceable(26) %147)
  %153 = icmp ne ptr %152, null
  %154 = and i1 %148, %153
  br i1 %154, label %146, label %145, !llvm.loop !70

155:                                              ; preds = %145
  %156 = tail call ptr @__cxa_allocate_exception(i64 24) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #12
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %9, i32 noundef 0)
          to label %157 unwind label %160

157:                                              ; preds = %155
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %156, i16 noundef signext 3, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %158 unwind label %162

158:                                              ; preds = %157
  invoke void @__cxa_throw(ptr nonnull %156, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #14
          to label %159 unwind label %162

159:                                              ; preds = %158
  unreachable

160:                                              ; preds = %155
  %161 = landingpad { ptr, i32 }
          cleanup
  br label %165

162:                                              ; preds = %158, %157
  %163 = phi i1 [ false, %158 ], [ true, %157 ]
  %164 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #12
  br label %165

165:                                              ; preds = %162, %160
  %166 = phi i1 [ %163, %162 ], [ true, %160 ]
  %167 = phi { ptr, i32 } [ %164, %162 ], [ %161, %160 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #12
  br i1 %166, label %249, label %252

168:                                              ; preds = %145, %69
  tail call void @_ZN11xercesc_2_78AttrImpl13makeChildNodeEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  %169 = load ptr, ptr %1, align 8, !tbaa !35
  %170 = getelementptr inbounds ptr, ptr %169, i64 27
  %171 = load ptr, ptr %170, align 8
  %172 = tail call noundef ptr %171(ptr noundef nonnull align 8 dereferenceable(48) %1)
  %173 = icmp eq ptr %172, null
  br i1 %173, label %179, label %174

174:                                              ; preds = %168
  %175 = load ptr, ptr %172, align 8, !tbaa !35
  %176 = getelementptr inbounds ptr, ptr %175, i64 32
  %177 = load ptr, ptr %176, align 8
  %178 = tail call noundef ptr %177(ptr noundef nonnull align 8 dereferenceable(26) %172, ptr noundef nonnull %1)
  br label %179

179:                                              ; preds = %174, %168
  %180 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %1, i64 0, i32 2
  store ptr %0, ptr %180, align 8, !tbaa !58
  %181 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %1, i64 0, i32 3
  %182 = load i16, ptr %181, align 8, !tbaa !38
  %183 = load i16, ptr @_ZN11xercesc_2_78NodeImpl5OWNEDE, align 2, !tbaa !46
  %184 = or i16 %183, %182
  store i16 %184, ptr %181, align 8, !tbaa !38
  %185 = getelementptr inbounds %"class.xercesc_2_7::AttrImpl", ptr %0, i64 0, i32 2
  %186 = load ptr, ptr %185, align 8, !tbaa !47
  %187 = icmp eq ptr %186, null
  br i1 %187, label %188, label %193

188:                                              ; preds = %179
  store ptr %1, ptr %185, align 8, !tbaa !47
  %189 = load i16, ptr %181, align 8, !tbaa !38
  %190 = load i16, ptr @_ZN11xercesc_2_78NodeImpl10FIRSTCHILDE, align 2, !tbaa !46
  %191 = or i16 %190, %189
  store i16 %191, ptr %181, align 8, !tbaa !38
  %192 = getelementptr inbounds %"class.xercesc_2_7::ChildNode", ptr %1, i64 0, i32 1
  store ptr %1, ptr %192, align 8, !tbaa !57
  br label %220

193:                                              ; preds = %179
  %194 = icmp eq ptr %2, null
  br i1 %194, label %195, label %200

195:                                              ; preds = %193
  %196 = getelementptr inbounds %"class.xercesc_2_7::ChildNode", ptr %186, i64 0, i32 1
  %197 = load ptr, ptr %196, align 8, !tbaa !57
  %198 = getelementptr inbounds %"class.xercesc_2_7::ChildNode", ptr %197, i64 0, i32 2
  store ptr %1, ptr %198, align 8, !tbaa !59
  %199 = getelementptr inbounds %"class.xercesc_2_7::ChildNode", ptr %1, i64 0, i32 1
  store ptr %197, ptr %199, align 8, !tbaa !57
  store ptr %1, ptr %196, align 8, !tbaa !57
  br label %220

200:                                              ; preds = %193
  %201 = icmp eq ptr %186, %2
  br i1 %201, label %202, label %214

202:                                              ; preds = %200
  %203 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %186, i64 0, i32 3
  %204 = load i16, ptr %203, align 8, !tbaa !38
  %205 = load i16, ptr @_ZN11xercesc_2_78NodeImpl10FIRSTCHILDE, align 2, !tbaa !46
  %206 = xor i16 %205, -1
  %207 = and i16 %204, %206
  store i16 %207, ptr %203, align 8, !tbaa !38
  %208 = getelementptr inbounds %"class.xercesc_2_7::ChildNode", ptr %1, i64 0, i32 2
  store ptr %186, ptr %208, align 8, !tbaa !59
  %209 = getelementptr inbounds %"class.xercesc_2_7::ChildNode", ptr %186, i64 0, i32 1
  %210 = load ptr, ptr %209, align 8, !tbaa !57
  %211 = getelementptr inbounds %"class.xercesc_2_7::ChildNode", ptr %1, i64 0, i32 1
  store ptr %210, ptr %211, align 8, !tbaa !57
  store ptr %1, ptr %209, align 8, !tbaa !57
  store ptr %1, ptr %185, align 8, !tbaa !47
  %212 = load i16, ptr %181, align 8, !tbaa !38
  %213 = or i16 %212, %205
  store i16 %213, ptr %181, align 8, !tbaa !38
  br label %220

214:                                              ; preds = %200
  %215 = getelementptr inbounds %"class.xercesc_2_7::ChildNode", ptr %2, i64 0, i32 1
  %216 = load ptr, ptr %215, align 8, !tbaa !57
  %217 = getelementptr inbounds %"class.xercesc_2_7::ChildNode", ptr %1, i64 0, i32 2
  store ptr %2, ptr %217, align 8, !tbaa !59
  %218 = getelementptr inbounds %"class.xercesc_2_7::ChildNode", ptr %216, i64 0, i32 2
  store ptr %1, ptr %218, align 8, !tbaa !59
  store ptr %1, ptr %215, align 8, !tbaa !57
  %219 = getelementptr inbounds %"class.xercesc_2_7::ChildNode", ptr %1, i64 0, i32 1
  store ptr %216, ptr %219, align 8, !tbaa !57
  br label %220

220:                                              ; preds = %195, %214, %202, %188
  %221 = load ptr, ptr %0, align 8, !tbaa !35
  %222 = getelementptr inbounds ptr, ptr %221, i64 14
  %223 = load ptr, ptr %222, align 8
  tail call void %223(ptr noundef nonnull align 8 dereferenceable(26) %0)
  %224 = load ptr, ptr %0, align 8, !tbaa !35
  %225 = getelementptr inbounds ptr, ptr %224, i64 26
  %226 = load ptr, ptr %225, align 8
  %227 = tail call noundef ptr %226(ptr noundef nonnull align 8 dereferenceable(26) %0)
  %228 = icmp eq ptr %227, null
  br i1 %228, label %248, label %229

229:                                              ; preds = %220
  %230 = load ptr, ptr %0, align 8, !tbaa !35
  %231 = getelementptr inbounds ptr, ptr %230, i64 26
  %232 = load ptr, ptr %231, align 8
  %233 = tail call noundef ptr %232(ptr noundef nonnull align 8 dereferenceable(26) %0)
  %234 = load ptr, ptr %233, align 8, !tbaa !35
  %235 = getelementptr inbounds ptr, ptr %234, i64 65
  %236 = load ptr, ptr %235, align 8
  %237 = tail call noundef ptr %236(ptr noundef nonnull align 8 dereferenceable(168) %233)
  %238 = icmp eq ptr %237, null
  br i1 %238, label %248, label %239

239:                                              ; preds = %229
  %240 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %237, i64 0, i32 2
  %241 = load i32, ptr %240, align 4, !tbaa !71
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %248, label %243

243:                                              ; preds = %239, %243
  %244 = phi i32 [ %246, %243 ], [ 0, %239 ]
  %245 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %237, i32 noundef %244)
  tail call void @_ZN11xercesc_2_79RangeImpl26updateRangeForInsertedNodeEPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(72) %245, ptr noundef nonnull %1)
  %246 = add nuw i32 %244, 1
  %247 = icmp eq i32 %246, %241
  br i1 %247, label %248, label %243, !llvm.loop !73

248:                                              ; preds = %243, %54, %239, %49, %220, %229, %67
  ret ptr %1

249:                                              ; preds = %165, %142, %120, %105, %86, %40
  %250 = phi ptr [ %32, %40 ], [ %77, %86 ], [ %96, %105 ], [ %111, %120 ], [ %133, %142 ], [ %156, %165 ]
  %251 = phi { ptr, i32 } [ %42, %40 ], [ %88, %86 ], [ %107, %105 ], [ %122, %120 ], [ %144, %142 ], [ %167, %165 ]
  call void @__cxa_free_exception(ptr %250) #12
  br label %252

252:                                              ; preds = %249, %165, %40, %142, %120, %105, %86
  %253 = phi { ptr, i32 } [ %88, %86 ], [ %107, %105 ], [ %144, %142 ], [ %122, %120 ], [ %42, %40 ], [ %167, %165 ], [ %251, %249 ]
  resume { ptr, i32 } %253

254:                                              ; preds = %34
  unreachable
}

declare noundef zeroext i1 @_ZN11xercesc_2_712DocumentImpl7isKidOKEPNS_8NodeImplES2_(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !71
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !74
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.2, i32 noundef 249, i32 noundef 116, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #14
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #12
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !75
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !76
  ret ptr %18
}

declare void @_ZN11xercesc_2_79RangeImpl26updateRangeForInsertedNodeEPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_78AttrImpl4itemEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1) unnamed_addr #0 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %0, i64 0, i32 3
  %4 = load i16, ptr %3, align 8, !tbaa !38
  %5 = load i16, ptr @_ZN11xercesc_2_78NodeImpl9HASSTRINGE, align 2, !tbaa !46
  %6 = and i16 %5, %4
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %2
  %9 = icmp eq i32 %1, 0
  br i1 %9, label %10, label %31

10:                                               ; preds = %8
  %11 = getelementptr inbounds %"class.xercesc_2_7::AttrImpl", ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !47
  %13 = icmp eq ptr %12, null
  br i1 %13, label %31, label %14

14:                                               ; preds = %10
  tail call void @_ZN11xercesc_2_78AttrImpl13makeChildNodeEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  %15 = load ptr, ptr %11, align 8, !tbaa !47
  br label %31

16:                                               ; preds = %2
  %17 = getelementptr inbounds %"class.xercesc_2_7::AttrImpl", ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !47
  %19 = icmp ne i32 %1, 0
  %20 = icmp ne ptr %18, null
  %21 = select i1 %19, i1 %20, i1 false
  br i1 %21, label %22, label %31

22:                                               ; preds = %16, %22
  %23 = phi ptr [ %27, %22 ], [ %18, %16 ]
  %24 = phi i32 [ %26, %22 ], [ 0, %16 ]
  %25 = getelementptr inbounds %"class.xercesc_2_7::ChildNode", ptr %23, i64 0, i32 2
  %26 = add nuw i32 %24, 1
  %27 = load ptr, ptr %25, align 8, !tbaa !47
  %28 = icmp ult i32 %26, %1
  %29 = icmp ne ptr %27, null
  %30 = select i1 %28, i1 %29, i1 false
  br i1 %30, label %22, label %31, !llvm.loop !77

31:                                               ; preds = %22, %16, %8, %10, %14
  %32 = phi ptr [ %15, %14 ], [ null, %10 ], [ null, %8 ], [ %18, %16 ], [ %27, %22 ]
  ret ptr %32
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_78AttrImpl11removeChildEPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef returned %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  %4 = alloca %"class.xercesc_2_7::DOMString", align 8
  %5 = load ptr, ptr %0, align 8, !tbaa !35
  %6 = getelementptr inbounds ptr, ptr %5, i64 26
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(26) %0)
  %9 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %8, i64 0, i32 10
  %10 = load i8, ptr %9, align 4, !tbaa !65, !range !66, !noundef !67
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %51, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %0, i64 0, i32 3
  %14 = load i16, ptr %13, align 8, !tbaa !38
  %15 = load i16, ptr @_ZN11xercesc_2_78NodeImpl8READONLYE, align 2, !tbaa !46
  %16 = and i16 %15, %14
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %30, label %18

18:                                               ; preds = %12
  %19 = tail call ptr @__cxa_allocate_exception(i64 24) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #12
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 0)
          to label %20 unwind label %22

20:                                               ; preds = %18
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %19, i16 noundef signext 7, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %21 unwind label %24

21:                                               ; preds = %20
  invoke void @__cxa_throw(ptr nonnull %19, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #14
          to label %132 unwind label %24

22:                                               ; preds = %18
  %23 = landingpad { ptr, i32 }
          cleanup
  br label %27

24:                                               ; preds = %21, %20
  %25 = phi i1 [ false, %21 ], [ true, %20 ]
  %26 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #12
  br label %27

27:                                               ; preds = %24, %22
  %28 = phi i1 [ %25, %24 ], [ true, %22 ]
  %29 = phi { ptr, i32 } [ %26, %24 ], [ %23, %22 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  br i1 %28, label %127, label %130

30:                                               ; preds = %12
  %31 = icmp eq ptr %1, null
  br i1 %31, label %38, label %32

32:                                               ; preds = %30
  %33 = load ptr, ptr %1, align 8, !tbaa !35
  %34 = getelementptr inbounds ptr, ptr %33, i64 27
  %35 = load ptr, ptr %34, align 8
  %36 = tail call noundef ptr %35(ptr noundef nonnull align 8 dereferenceable(26) %1)
  %37 = icmp eq ptr %36, %0
  br i1 %37, label %51, label %38

38:                                               ; preds = %32, %30
  %39 = tail call ptr @__cxa_allocate_exception(i64 24) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 0)
          to label %40 unwind label %43

40:                                               ; preds = %38
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %39, i16 noundef signext 8, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %41 unwind label %45

41:                                               ; preds = %40
  invoke void @__cxa_throw(ptr nonnull %39, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #14
          to label %42 unwind label %45

42:                                               ; preds = %41
  unreachable

43:                                               ; preds = %38
  %44 = landingpad { ptr, i32 }
          cleanup
  br label %48

45:                                               ; preds = %41, %40
  %46 = phi i1 [ false, %41 ], [ true, %40 ]
  %47 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #12
  br label %48

48:                                               ; preds = %45, %43
  %49 = phi i1 [ %46, %45 ], [ true, %43 ]
  %50 = phi { ptr, i32 } [ %47, %45 ], [ %44, %43 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  br i1 %49, label %127, label %130

51:                                               ; preds = %32, %2
  %52 = load ptr, ptr %0, align 8, !tbaa !35
  %53 = getelementptr inbounds ptr, ptr %52, i64 26
  %54 = load ptr, ptr %53, align 8
  %55 = tail call noundef ptr %54(ptr noundef nonnull align 8 dereferenceable(26) %0)
  %56 = icmp eq ptr %55, null
  br i1 %56, label %80, label %57

57:                                               ; preds = %51
  %58 = load ptr, ptr %0, align 8, !tbaa !35
  %59 = getelementptr inbounds ptr, ptr %58, i64 26
  %60 = load ptr, ptr %59, align 8
  %61 = tail call noundef ptr %60(ptr noundef nonnull align 8 dereferenceable(26) %0)
  %62 = load ptr, ptr %61, align 8, !tbaa !35
  %63 = getelementptr inbounds ptr, ptr %62, i64 65
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(168) %61)
  %66 = icmp eq ptr %65, null
  br i1 %66, label %80, label %67

67:                                               ; preds = %57
  %68 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %65, i64 0, i32 2
  %69 = load i32, ptr %68, align 4, !tbaa !71
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %80, label %71

71:                                               ; preds = %67, %77
  %72 = phi i32 [ %78, %77 ], [ 0, %67 ]
  %73 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %65, i32 noundef %72)
  %74 = icmp eq ptr %73, null
  br i1 %74, label %77, label %75

75:                                               ; preds = %71
  %76 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %65, i32 noundef %72)
  tail call void @_ZN11xercesc_2_79RangeImpl25updateRangeForDeletedNodeEPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(72) %76, ptr noundef %1)
  br label %77

77:                                               ; preds = %71, %75
  %78 = add nuw i32 %72, 1
  %79 = icmp eq i32 %78, %69
  br i1 %79, label %80, label %71, !llvm.loop !78

80:                                               ; preds = %77, %67, %57, %51
  %81 = getelementptr inbounds %"class.xercesc_2_7::AttrImpl", ptr %0, i64 0, i32 2
  %82 = load ptr, ptr %81, align 8, !tbaa !47
  %83 = icmp eq ptr %82, %1
  br i1 %83, label %84, label %99

84:                                               ; preds = %80
  %85 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %1, i64 0, i32 3
  %86 = load i16, ptr %85, align 8, !tbaa !38
  %87 = load i16, ptr @_ZN11xercesc_2_78NodeImpl10FIRSTCHILDE, align 2, !tbaa !46
  %88 = xor i16 %87, -1
  %89 = and i16 %86, %88
  store i16 %89, ptr %85, align 8, !tbaa !38
  %90 = getelementptr inbounds %"class.xercesc_2_7::ChildNode", ptr %1, i64 0, i32 2
  %91 = load ptr, ptr %90, align 8, !tbaa !59
  store ptr %91, ptr %81, align 8, !tbaa !47
  %92 = icmp eq ptr %91, null
  br i1 %92, label %112, label %93

93:                                               ; preds = %84
  %94 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %91, i64 0, i32 3
  %95 = load i16, ptr %94, align 8, !tbaa !38
  %96 = or i16 %95, %87
  store i16 %96, ptr %94, align 8, !tbaa !38
  %97 = getelementptr inbounds %"class.xercesc_2_7::ChildNode", ptr %1, i64 0, i32 1
  %98 = load ptr, ptr %97, align 8, !tbaa !57
  br label %108

99:                                               ; preds = %80
  %100 = getelementptr inbounds %"class.xercesc_2_7::ChildNode", ptr %1, i64 0, i32 1
  %101 = load ptr, ptr %100, align 8, !tbaa !57
  %102 = getelementptr inbounds %"class.xercesc_2_7::ChildNode", ptr %1, i64 0, i32 2
  %103 = load ptr, ptr %102, align 8, !tbaa !59
  %104 = getelementptr inbounds %"class.xercesc_2_7::ChildNode", ptr %101, i64 0, i32 2
  store ptr %103, ptr %104, align 8, !tbaa !59
  %105 = icmp eq ptr %103, null
  %106 = load ptr, ptr %81, align 8
  %107 = select i1 %105, ptr %106, ptr %103
  br label %108

108:                                              ; preds = %99, %93
  %109 = phi ptr [ %91, %93 ], [ %107, %99 ]
  %110 = phi ptr [ %98, %93 ], [ %101, %99 ]
  %111 = getelementptr inbounds %"class.xercesc_2_7::ChildNode", ptr %109, i64 0, i32 1
  store ptr %110, ptr %111, align 8, !tbaa !57
  br label %112

112:                                              ; preds = %108, %84
  %113 = load ptr, ptr %0, align 8, !tbaa !35
  %114 = getelementptr inbounds ptr, ptr %113, i64 26
  %115 = load ptr, ptr %114, align 8
  %116 = tail call noundef ptr %115(ptr noundef nonnull align 8 dereferenceable(26) %0)
  %117 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %1, i64 0, i32 2
  store ptr %116, ptr %117, align 8, !tbaa !58
  %118 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %1, i64 0, i32 3
  %119 = load i16, ptr %118, align 8, !tbaa !38
  %120 = load i16, ptr @_ZN11xercesc_2_78NodeImpl5OWNEDE, align 2, !tbaa !46
  %121 = xor i16 %120, -1
  %122 = and i16 %119, %121
  store i16 %122, ptr %118, align 8, !tbaa !38
  %123 = getelementptr inbounds %"class.xercesc_2_7::ChildNode", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %123, i8 0, i64 16, i1 false)
  %124 = load ptr, ptr %0, align 8, !tbaa !35
  %125 = getelementptr inbounds ptr, ptr %124, i64 14
  %126 = load ptr, ptr %125, align 8
  tail call void %126(ptr noundef nonnull align 8 dereferenceable(26) %0)
  ret ptr %1

127:                                              ; preds = %48, %27
  %128 = phi ptr [ %19, %27 ], [ %39, %48 ]
  %129 = phi { ptr, i32 } [ %29, %27 ], [ %50, %48 ]
  call void @__cxa_free_exception(ptr %128) #12
  br label %130

130:                                              ; preds = %127, %48, %27
  %131 = phi { ptr, i32 } [ %29, %27 ], [ %50, %48 ], [ %129, %127 ]
  resume { ptr, i32 } %131

132:                                              ; preds = %21
  unreachable
}

declare void @_ZN11xercesc_2_79RangeImpl25updateRangeForDeletedNodeEPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_78AttrImpl12replaceChildEPNS_8NodeImplES2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef returned %2) unnamed_addr #0 align 2 !prof !34 {
  %4 = load ptr, ptr %0, align 8, !tbaa !35
  %5 = getelementptr inbounds ptr, ptr %4, i64 31
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2)
  %8 = icmp eq ptr %1, %2
  br i1 %8, label %14, label %9

9:                                                ; preds = %3
  %10 = load ptr, ptr %0, align 8, !tbaa !35
  %11 = getelementptr inbounds ptr, ptr %10, i64 32
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %2)
  br label %14

14:                                               ; preds = %9, %3
  ret ptr %2
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_78AttrImpl11setReadOnlyEbb(ptr noundef nonnull align 8 dereferenceable(48) %0, i1 noundef zeroext %1, i1 noundef zeroext %2) unnamed_addr #0 align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_78NodeImpl11setReadOnlyEbb(ptr noundef nonnull align 8 dereferenceable(26) %0, i1 noundef zeroext %1, i1 noundef zeroext %2)
  br i1 %2, label %4, label %28

4:                                                ; preds = %3
  %5 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %0, i64 0, i32 3
  %6 = load i16, ptr %5, align 8, !tbaa !38
  %7 = load i16, ptr @_ZN11xercesc_2_78NodeImpl9HASSTRINGE, align 2, !tbaa !46
  %8 = and i16 %7, %6
  %9 = icmp ne i16 %8, 0
  %10 = getelementptr inbounds %"class.xercesc_2_7::AttrImpl", ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  %13 = select i1 %9, i1 true, i1 %12
  br i1 %13, label %28, label %14

14:                                               ; preds = %4, %24
  %15 = phi ptr [ %26, %24 ], [ %11, %4 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !35
  %17 = getelementptr inbounds ptr, ptr %16, i64 12
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef zeroext i1 %18(ptr noundef nonnull align 8 dereferenceable(26) %15)
  br i1 %19, label %24, label %20

20:                                               ; preds = %14
  %21 = load ptr, ptr %15, align 8, !tbaa !35
  %22 = getelementptr inbounds ptr, ptr %21, i64 35
  %23 = load ptr, ptr %22, align 8
  tail call void %23(ptr noundef nonnull align 8 dereferenceable(26) %15, i1 noundef zeroext %1, i1 noundef zeroext true)
  br label %24

24:                                               ; preds = %14, %20
  %25 = getelementptr inbounds %"class.xercesc_2_7::ChildNode", ptr %15, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !47
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %14, !llvm.loop !79

28:                                               ; preds = %24, %4, %3
  ret void
}

declare void @_ZN11xercesc_2_78NodeImpl11setReadOnlyEbb(ptr noundef nonnull align 8 dereferenceable(26), i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_78AttrImpl9normalizeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %0, i64 0, i32 3
  %3 = load i16, ptr %2, align 8, !tbaa !38
  %4 = load i16, ptr @_ZN11xercesc_2_78NodeImpl9HASSTRINGE, align 2, !tbaa !46
  %5 = and i16 %4, %3
  %6 = icmp ne i16 %5, 0
  %7 = getelementptr inbounds %"class.xercesc_2_7::AttrImpl", ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  %10 = select i1 %6, i1 true, i1 %9
  br i1 %10, label %64, label %11

11:                                               ; preds = %1, %61
  %12 = phi ptr [ %62, %61 ], [ %8, %1 ]
  %13 = getelementptr inbounds %"class.xercesc_2_7::ChildNode", ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !59
  %15 = icmp eq ptr %14, null
  br i1 %15, label %52, label %16

16:                                               ; preds = %11
  %17 = load ptr, ptr %12, align 8, !tbaa !35
  %18 = getelementptr inbounds ptr, ptr %17, i64 13
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef zeroext i1 %19(ptr noundef nonnull align 8 dereferenceable(26) %12)
  br i1 %20, label %21, label %52

21:                                               ; preds = %16
  %22 = load ptr, ptr %12, align 8, !tbaa !35
  %23 = getelementptr inbounds ptr, ptr %22, i64 7
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef zeroext i1 %24(ptr noundef nonnull align 8 dereferenceable(26) %12)
  br i1 %25, label %52, label %26

26:                                               ; preds = %21
  %27 = load ptr, ptr %14, align 8, !tbaa !35
  %28 = getelementptr inbounds ptr, ptr %27, i64 13
  %29 = load ptr, ptr %28, align 8
  %30 = tail call noundef zeroext i1 %29(ptr noundef nonnull align 8 dereferenceable(26) %14)
  br i1 %30, label %31, label %52

31:                                               ; preds = %26
  %32 = load ptr, ptr %14, align 8, !tbaa !35
  %33 = getelementptr inbounds ptr, ptr %32, i64 7
  %34 = load ptr, ptr %33, align 8
  %35 = tail call noundef zeroext i1 %34(ptr noundef nonnull align 8 dereferenceable(26) %14)
  br i1 %35, label %52, label %36

36:                                               ; preds = %31
  %37 = load ptr, ptr %14, align 8, !tbaa !35
  %38 = getelementptr inbounds ptr, ptr %37, i64 49
  %39 = load ptr, ptr %38, align 8
  %40 = tail call noundef nonnull align 8 dereferenceable(8) ptr %39(ptr noundef nonnull align 8 dereferenceable(56) %14)
  %41 = load ptr, ptr %12, align 8, !tbaa !35
  %42 = getelementptr inbounds ptr, ptr %41, i64 47
  %43 = load ptr, ptr %42, align 8
  tail call void %43(ptr noundef nonnull align 8 dereferenceable(56) %12, ptr noundef nonnull align 8 dereferenceable(8) %40)
  %44 = load ptr, ptr %0, align 8, !tbaa !35
  %45 = getelementptr inbounds ptr, ptr %44, i64 32
  %46 = load ptr, ptr %45, align 8
  %47 = tail call noundef ptr %46(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %14)
  %48 = getelementptr inbounds %"class.xercesc_2_7::RefCountedImpl", ptr %14, i64 0, i32 1
  %49 = load i32, ptr %48, align 8, !tbaa !62
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %36
  tail call void @_ZN11xercesc_2_78NodeImpl8deleteIfEPS0_(ptr noundef nonnull %14)
  br label %61

52:                                               ; preds = %31, %26, %21, %16, %11
  %53 = load ptr, ptr %12, align 8, !tbaa !35
  %54 = getelementptr inbounds ptr, ptr %53, i64 11
  %55 = load ptr, ptr %54, align 8
  %56 = tail call noundef zeroext i1 %55(ptr noundef nonnull align 8 dereferenceable(26) %12)
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load ptr, ptr %12, align 8, !tbaa !35
  %59 = getelementptr inbounds ptr, ptr %58, i64 38
  %60 = load ptr, ptr %59, align 8
  tail call void %60(ptr noundef nonnull align 8 dereferenceable(26) %12)
  br label %61

61:                                               ; preds = %36, %51, %57, %52
  %62 = phi ptr [ %14, %57 ], [ %14, %52 ], [ %12, %51 ], [ %12, %36 ]
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %11, !llvm.loop !80

64:                                               ; preds = %61, %1
  ret void
}

declare void @_ZN11xercesc_2_78NodeImpl10referencedEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

declare void @_ZN11xercesc_2_78NodeImpl12unreferencedEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

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

declare noundef ptr @_ZN11xercesc_2_78NodeImpl14getNextSiblingEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_78NodeImpl16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_78NodeImpl13getParentNodeEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_78NodeImpl18getPreviousSiblingEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_78NodeImpl11getUserDataEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

declare void @_ZN11xercesc_2_78NodeImpl11setUserDataEPv(ptr noundef nonnull align 8 dereferenceable(26), ptr noundef) unnamed_addr #1

declare noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl11isSupportedERKNS_9DOMStringES3_(ptr noundef nonnull align 8 dereferenceable(26), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare void @_ZN11xercesc_2_78NodeImpl15getNamespaceURIEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8, ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

declare void @_ZN11xercesc_2_78NodeImpl9getPrefixEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8, ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

declare void @_ZN11xercesc_2_78NodeImpl12getLocalNameEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8, ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

declare void @_ZN11xercesc_2_78NodeImpl9setPrefixERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(26), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl13hasAttributesEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

declare void @_ZN11xercesc_2_78NodeImpl16setOwnerDocumentEPNS_12DocumentImplE(ptr noundef nonnull align 8 dereferenceable(26), ptr noundef) unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_78NodeImpl11getDocumentEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
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
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #3

declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #1

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !34 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !81
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !35
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #12
  resume { ptr, i32 } %7
}

declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { nounwind }
attributes #13 = { noreturn nounwind }
attributes #14 = { noreturn }

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
!38 = !{!39, !45, i64 24}
!39 = !{!"_ZTSN11xercesc_2_78NodeImplE", !40, i64 0, !44, i64 16, !45, i64 24}
!40 = !{!"_ZTSN11xercesc_2_712NodeListImplE", !41, i64 0}
!41 = !{!"_ZTSN11xercesc_2_714RefCountedImplE", !42, i64 8}
!42 = !{!"int", !43, i64 0}
!43 = !{!"omnipotent char", !37, i64 0}
!44 = !{!"any pointer", !43, i64 0}
!45 = !{!"short", !43, i64 0}
!46 = !{!45, !45, i64 0}
!47 = !{!43, !43, i64 0}
!48 = !{!49, !44, i64 112}
!49 = !{!"_ZTSN11xercesc_2_712DocumentImplE", !50, i64 0, !44, i64 88, !44, i64 96, !44, i64 104, !44, i64 112, !44, i64 120, !44, i64 128, !44, i64 136, !44, i64 144, !42, i64 152, !52, i64 156, !44, i64 160}
!50 = !{!"_ZTSN11xercesc_2_710ParentNodeE", !51, i64 0, !44, i64 48, !44, i64 56, !42, i64 64, !44, i64 72, !42, i64 80}
!51 = !{!"_ZTSN11xercesc_2_79ChildNodeE", !39, i64 0, !44, i64 32, !44, i64 40}
!52 = !{!"bool", !43, i64 0}
!53 = distinct !{!53, !54, !55}
!54 = !{!"llvm.loop.mustprogress"}
!55 = !{!"llvm.loop.unroll.disable"}
!56 = !{!49, !44, i64 160}
!57 = !{!51, !44, i64 32}
!58 = !{!39, !44, i64 16}
!59 = !{!51, !44, i64 40}
!60 = distinct !{!60, !54, !55}
!61 = distinct !{!61, !54, !55}
!62 = !{!41, !42, i64 8}
!63 = distinct !{!63, !54, !55}
!64 = distinct !{!64, !54, !55}
!65 = !{!49, !52, i64 156}
!66 = !{i8 0, i8 2}
!67 = !{}
!68 = distinct !{!68, !54, !55}
!69 = distinct !{!69, !54, !55}
!70 = distinct !{!70, !54, !55}
!71 = !{!72, !42, i64 12}
!72 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEEE", !52, i64 8, !42, i64 12, !42, i64 16, !44, i64 24, !44, i64 32}
!73 = distinct !{!73, !54, !55}
!74 = !{!72, !44, i64 32}
!75 = !{!72, !44, i64 24}
!76 = !{!44, !44, i64 0}
!77 = distinct !{!77, !54, !55}
!78 = distinct !{!78, !54, !55}
!79 = distinct !{!79, !54, !55}
!80 = distinct !{!80, !54, !55}
!81 = !{!82, !44, i64 40}
!82 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !83, i64 8, !44, i64 16, !42, i64 24, !44, i64 32, !44, i64 40}
!83 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !43, i64 0}
