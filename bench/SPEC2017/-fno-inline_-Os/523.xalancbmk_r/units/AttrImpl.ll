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

$_ZN11xercesc_2_78NodeImpl11isSpecifiedEb = comdat any

$_ZN11xercesc_2_78NodeImpl14hasStringValueEb = comdat any

$_ZNK11xercesc_2_78NodeImpl11isSpecifiedEv = comdat any

$_ZNK11xercesc_2_78NodeImpl14hasStringValueEv = comdat any

$_ZNK11xercesc_2_78NodeImpl8isIdAttrEv = comdat any

$_ZN11xercesc_2_78NodeImpl8isIdAttrEb = comdat any

$_ZN11xercesc_2_712DocumentImpl12getNodeIDMapEv = comdat any

$_ZNK11xercesc_2_712DocumentImpl16getMemoryManagerEv = comdat any

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_78NodeImpl12isFirstChildEb = comdat any

$_ZN11xercesc_2_78NodeImpl7isOwnedEb = comdat any

$_ZNK11xercesc_2_78NodeImpl10isReadOnlyEv = comdat any

$_ZNK11xercesc_2_78NodeImpl7isOwnedEv = comdat any

$_ZN11xercesc_2_712DocumentImpl16getErrorCheckingEv = comdat any

$_ZNK11xercesc_2_715BaseRefVectorOfINS_9RangeImplEE4sizeEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEE9elementAtEj = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_ = comdat any

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

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_78AttrImplC2EPNS_12DocumentImplERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %4 = alloca %"class.xercesc_2_7::DOMString", align 8
  tail call void @_ZN11xercesc_2_78NodeImplC2EPNS_12DocumentImplE(ptr noundef nonnull align 8 dereferenceable(26) %0, ptr noundef %1) #10
  store ptr getelementptr inbounds ({ [54 x ptr] }, ptr @_ZTVN11xercesc_2_78AttrImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %5 = getelementptr inbounds %"class.xercesc_2_7::AttrImpl", ptr %0, i64 0, i32 1
  invoke void @_ZN11xercesc_2_79DOMStringC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #10
          to label %6 unwind label %11

6:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  invoke void @_ZNK11xercesc_2_79DOMString5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %2) #10
          to label %7 unwind label %13

7:                                                ; preds = %6
  %8 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4) #10
          to label %9 unwind label %15

9:                                                ; preds = %7
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  call void @_ZN11xercesc_2_78NodeImpl11isSpecifiedEb(ptr noundef nonnull align 8 dereferenceable(26) %0, i1 noundef zeroext true) #10
  call void @_ZN11xercesc_2_78NodeImpl14hasStringValueEb(ptr noundef nonnull align 8 dereferenceable(26) %0, i1 noundef zeroext true) #10
  %10 = getelementptr inbounds %"class.xercesc_2_7::AttrImpl", ptr %0, i64 0, i32 2
  store ptr null, ptr %10, align 8, !tbaa !38
  ret void

11:                                               ; preds = %3
  %12 = landingpad { ptr, i32 }
          cleanup
  br label %19

13:                                               ; preds = %6
  %14 = landingpad { ptr, i32 }
          cleanup
  br label %17

15:                                               ; preds = %7
  %16 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #12
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi { ptr, i32 } [ %16, %15 ], [ %14, %13 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  br label %19

19:                                               ; preds = %17, %11
  %20 = phi { ptr, i32 } [ %18, %17 ], [ %12, %11 ]
  call void @_ZN11xercesc_2_78NodeImplD2Ev(ptr noundef nonnull align 8 dereferenceable(26) %0) #12
  resume { ptr, i32 } %20
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78NodeImplC2EPNS_12DocumentImplE(ptr noundef nonnull align 8 dereferenceable(26), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79DOMStringC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare void @_ZNK11xercesc_2_79DOMString5cloneEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_78NodeImpl11isSpecifiedEb(ptr noundef nonnull align 8 dereferenceable(26) %0, i1 noundef zeroext %1) local_unnamed_addr #4 comdat align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %0, i64 0, i32 3
  %4 = load i16, ptr %3, align 8, !tbaa !40
  %5 = load i16, ptr @_ZN11xercesc_2_78NodeImpl9SPECIFIEDE, align 2, !tbaa !47
  %6 = or i16 %5, %4
  %7 = xor i16 %5, -1
  %8 = and i16 %4, %7
  %9 = select i1 %1, i16 %6, i16 %8
  %10 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %0, i64 0, i32 3
  store i16 %9, ptr %10, align 8, !tbaa !40
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_78NodeImpl14hasStringValueEb(ptr noundef nonnull align 8 dereferenceable(26) %0, i1 noundef zeroext %1) local_unnamed_addr #4 comdat align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %0, i64 0, i32 3
  %4 = load i16, ptr %3, align 8, !tbaa !40
  %5 = load i16, ptr @_ZN11xercesc_2_78NodeImpl9HASSTRINGE, align 2, !tbaa !47
  %6 = or i16 %5, %4
  %7 = xor i16 %5, -1
  %8 = and i16 %4, %7
  %9 = select i1 %1, i16 %6, i16 %8
  %10 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %0, i64 0, i32 3
  store i16 %9, ptr %10, align 8, !tbaa !40
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_78NodeImplD2Ev(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_78AttrImplC2ERKS0_b(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i1 zeroext %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %4 = alloca %"class.xercesc_2_7::DOMString", align 8
  %5 = alloca %"class.xercesc_2_7::DOMString", align 8
  tail call void @_ZN11xercesc_2_78NodeImplC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(26) %0, ptr noundef nonnull align 8 dereferenceable(26) %1) #10
  store ptr getelementptr inbounds ({ [54 x ptr] }, ptr @_ZTVN11xercesc_2_78AttrImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %6 = getelementptr inbounds %"class.xercesc_2_7::AttrImpl", ptr %0, i64 0, i32 1
  invoke void @_ZN11xercesc_2_79DOMStringC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #10
          to label %7 unwind label %23

7:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %8 = getelementptr inbounds %"class.xercesc_2_7::AttrImpl", ptr %1, i64 0, i32 1
  invoke void @_ZNK11xercesc_2_79DOMString5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %8) #10
          to label %9 unwind label %25

9:                                                ; preds = %7
  %10 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %4) #10
          to label %11 unwind label %27

11:                                               ; preds = %9
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  %12 = call noundef zeroext i1 @_ZNK11xercesc_2_78NodeImpl11isSpecifiedEv(ptr noundef nonnull align 8 dereferenceable(26) %1) #10
  call void @_ZN11xercesc_2_78NodeImpl11isSpecifiedEb(ptr noundef nonnull align 8 dereferenceable(26) %0, i1 noundef zeroext %12) #10
  %13 = getelementptr inbounds %"class.xercesc_2_7::AttrImpl", ptr %0, i64 0, i32 2
  store ptr null, ptr %13, align 8, !tbaa !38
  %14 = call noundef zeroext i1 @_ZNK11xercesc_2_78NodeImpl14hasStringValueEv(ptr noundef nonnull align 8 dereferenceable(26) %1) #10
  call void @_ZN11xercesc_2_78NodeImpl14hasStringValueEb(ptr noundef nonnull align 8 dereferenceable(26) %0, i1 noundef zeroext %14) #10
  %15 = call noundef zeroext i1 @_ZNK11xercesc_2_78NodeImpl8isIdAttrEv(ptr noundef nonnull align 8 dereferenceable(26) %1) #10
  br i1 %15, label %16, label %33

16:                                               ; preds = %11
  call void @_ZN11xercesc_2_78NodeImpl8isIdAttrEb(ptr noundef nonnull align 8 dereferenceable(26) %0, i1 noundef zeroext true) #10
  %17 = load ptr, ptr %0, align 8, !tbaa !35
  %18 = getelementptr inbounds ptr, ptr %17, i64 26
  %19 = load ptr, ptr %18, align 8
  %20 = invoke noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(26) %0) #10
          to label %21 unwind label %31

21:                                               ; preds = %16
  %22 = call noundef ptr @_ZN11xercesc_2_712DocumentImpl12getNodeIDMapEv(ptr noundef nonnull align 8 dereferenceable(168) %20) #10
  invoke void @_ZN11xercesc_2_79NodeIDMap3addEPNS_8AttrImplE(ptr noundef nonnull align 8 dereferenceable(40) %22, ptr noundef nonnull %0) #10
          to label %33 unwind label %31

23:                                               ; preds = %3
  %24 = landingpad { ptr, i32 }
          cleanup
  br label %81

25:                                               ; preds = %7
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %29

27:                                               ; preds = %9
  %28 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #12
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi { ptr, i32 } [ %28, %27 ], [ %26, %25 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  br label %79

31:                                               ; preds = %43, %35, %21, %16
  %32 = landingpad { ptr, i32 }
          cleanup
  br label %79

33:                                               ; preds = %21, %11
  %34 = call noundef zeroext i1 @_ZNK11xercesc_2_78NodeImpl14hasStringValueEv(ptr noundef nonnull align 8 dereferenceable(26) %0) #10
  br i1 %34, label %36, label %35

35:                                               ; preds = %33
  invoke void @_ZN11xercesc_2_78AttrImpl13cloneChildrenERKNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(26) %1) #10
          to label %78 unwind label %31

36:                                               ; preds = %33
  %37 = getelementptr inbounds %"class.xercesc_2_7::AttrImpl", ptr %1, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !38
  %39 = icmp eq ptr %38, null
  %40 = load ptr, ptr %13, align 8, !tbaa !38
  %41 = icmp eq ptr %40, null
  br i1 %39, label %42, label %50

42:                                               ; preds = %36
  br i1 %41, label %78, label %43

43:                                               ; preds = %42
  %44 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSEPNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %40, ptr noundef null) #10
          to label %45 unwind label %31

45:                                               ; preds = %43
  %46 = load ptr, ptr %13, align 8, !tbaa !38
  %47 = icmp eq ptr %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %46) #12
  call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %46) #12
  br label %49

49:                                               ; preds = %48, %45
  store ptr null, ptr %13, align 8, !tbaa !38
  br label %78

50:                                               ; preds = %36
  br i1 %41, label %51, label %62

51:                                               ; preds = %50
  %52 = load ptr, ptr %0, align 8, !tbaa !35
  %53 = getelementptr inbounds ptr, ptr %52, i64 26
  %54 = load ptr, ptr %53, align 8
  %55 = invoke noundef ptr %54(ptr noundef nonnull align 8 dereferenceable(26) %0) #10
          to label %56 unwind label %68

56:                                               ; preds = %51
  %57 = call noundef ptr @_ZNK11xercesc_2_712DocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(168) %55) #10
  %58 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 8, ptr noundef %57) #10
          to label %59 unwind label %68

59:                                               ; preds = %56
  invoke void @_ZN11xercesc_2_79DOMStringC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %58) #10
          to label %60 unwind label %70

60:                                               ; preds = %59
  store ptr %58, ptr %13, align 8, !tbaa !38
  %61 = load ptr, ptr %37, align 8, !tbaa !38
  br label %62

62:                                               ; preds = %50, %60
  %63 = phi ptr [ %61, %60 ], [ %38, %50 ]
  %64 = phi ptr [ %58, %60 ], [ %40, %50 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  invoke void @_ZNK11xercesc_2_79DOMString5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %63) #10
          to label %65 unwind label %72

65:                                               ; preds = %62
  %66 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %64, ptr noundef nonnull align 8 dereferenceable(8) %5) #10
          to label %67 unwind label %74

67:                                               ; preds = %65
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  br label %78

68:                                               ; preds = %56, %51
  %69 = landingpad { ptr, i32 }
          cleanup
  br label %79

70:                                               ; preds = %59
  %71 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %58, ptr noundef %57) #12
  br label %79

72:                                               ; preds = %62
  %73 = landingpad { ptr, i32 }
          cleanup
  br label %76

74:                                               ; preds = %65
  %75 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  br label %76

76:                                               ; preds = %74, %72
  %77 = phi { ptr, i32 } [ %75, %74 ], [ %73, %72 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  br label %79

78:                                               ; preds = %67, %49, %42, %35
  ret void

79:                                               ; preds = %68, %76, %70, %31, %29
  %80 = phi { ptr, i32 } [ %32, %31 ], [ %30, %29 ], [ %77, %76 ], [ %71, %70 ], [ %69, %68 ]
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #12
  br label %81

81:                                               ; preds = %79, %23
  %82 = phi { ptr, i32 } [ %80, %79 ], [ %24, %23 ]
  call void @_ZN11xercesc_2_78NodeImplD2Ev(ptr noundef nonnull align 8 dereferenceable(26) %0) #12
  resume { ptr, i32 } %82
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78NodeImplC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(26), ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_78NodeImpl11isSpecifiedEv(ptr noundef nonnull align 8 dereferenceable(26) %0) local_unnamed_addr #4 comdat align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %0, i64 0, i32 3
  %3 = load i16, ptr %2, align 8, !tbaa !40
  %4 = load i16, ptr @_ZN11xercesc_2_78NodeImpl9SPECIFIEDE, align 2, !tbaa !47
  %5 = and i16 %4, %3
  %6 = icmp ne i16 %5, 0
  ret i1 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_78NodeImpl14hasStringValueEv(ptr noundef nonnull align 8 dereferenceable(26) %0) local_unnamed_addr #4 comdat align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %0, i64 0, i32 3
  %3 = load i16, ptr %2, align 8, !tbaa !40
  %4 = load i16, ptr @_ZN11xercesc_2_78NodeImpl9HASSTRINGE, align 2, !tbaa !47
  %5 = and i16 %4, %3
  %6 = icmp ne i16 %5, 0
  ret i1 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_78NodeImpl8isIdAttrEv(ptr noundef nonnull align 8 dereferenceable(26) %0) local_unnamed_addr #4 comdat align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %0, i64 0, i32 3
  %3 = load i16, ptr %2, align 8, !tbaa !40
  %4 = load i16, ptr @_ZN11xercesc_2_78NodeImpl7ID_ATTRE, align 2, !tbaa !47
  %5 = and i16 %4, %3
  %6 = icmp ne i16 %5, 0
  ret i1 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_78NodeImpl8isIdAttrEb(ptr noundef nonnull align 8 dereferenceable(26) %0, i1 noundef zeroext %1) local_unnamed_addr #4 comdat align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %0, i64 0, i32 3
  %4 = load i16, ptr %3, align 8, !tbaa !40
  %5 = load i16, ptr @_ZN11xercesc_2_78NodeImpl7ID_ATTRE, align 2, !tbaa !47
  %6 = or i16 %5, %4
  %7 = xor i16 %5, -1
  %8 = and i16 %4, %7
  %9 = select i1 %1, i16 %6, i16 %8
  %10 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %0, i64 0, i32 3
  store i16 %9, ptr %10, align 8, !tbaa !40
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_712DocumentImpl12getNodeIDMapEv(ptr noundef nonnull align 8 dereferenceable(168) %0) local_unnamed_addr #4 comdat align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79NodeIDMap3addEPNS_8AttrImplE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_78AttrImpl13cloneChildrenERKNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(26) %1) local_unnamed_addr #0 align 2 !prof !34 {
  %3 = load ptr, ptr %1, align 8, !tbaa !35
  %4 = getelementptr inbounds ptr, ptr %3, i64 20
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(26) %1) #10
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %9, %2
  ret void

9:                                                ; preds = %2, %9
  %10 = phi ptr [ %22, %9 ], [ %6, %2 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !35
  %12 = getelementptr inbounds ptr, ptr %11, i64 17
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(26) %10, i1 noundef zeroext true) #10
  %15 = load ptr, ptr %0, align 8, !tbaa !35
  %16 = getelementptr inbounds ptr, ptr %15, i64 16
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(26) %0, ptr noundef %14) #10
  %19 = load ptr, ptr %10, align 8, !tbaa !35
  %20 = getelementptr inbounds ptr, ptr %19, i64 22
  %21 = load ptr, ptr %20, align 8
  %22 = tail call noundef ptr %21(ptr noundef nonnull align 8 dereferenceable(26) %10) #10
  %23 = icmp eq ptr %22, null
  br i1 %23, label %8, label %9, !llvm.loop !53
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSEPNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_712DocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(168) %0) local_unnamed_addr #4 comdat align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_78AttrImplD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  store ptr getelementptr inbounds ({ [54 x ptr] }, ptr @_ZTVN11xercesc_2_78AttrImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %2 = tail call noundef zeroext i1 @_ZNK11xercesc_2_78NodeImpl14hasStringValueEv(ptr noundef nonnull align 8 dereferenceable(26) %0) #10
  br i1 %2, label %3, label %14

3:                                                ; preds = %1
  %4 = getelementptr inbounds %"class.xercesc_2_7::AttrImpl", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSEPNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef null) #10
          to label %9 unwind label %16

9:                                                ; preds = %7
  %10 = load ptr, ptr %4, align 8, !tbaa !38
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  tail call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %10) #12
  br label %13

13:                                               ; preds = %12, %9
  store ptr null, ptr %4, align 8, !tbaa !38
  br label %14

14:                                               ; preds = %3, %13, %1
  %15 = getelementptr inbounds %"class.xercesc_2_7::AttrImpl", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %15) #12
  tail call void @_ZN11xercesc_2_78NodeImplD2Ev(ptr noundef nonnull align 8 dereferenceable(26) %0) #12
  ret void

16:                                               ; preds = %7
  %17 = landingpad { ptr, i32 }
          catch ptr null
  %18 = extractvalue { ptr, i32 } %17, 0
  tail call void @__clang_call_terminate(ptr %18) #13
  unreachable
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #11
  tail call void @_ZSt9terminatev() #13
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_78AttrImplD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 align 2 {
  tail call void @_ZN11xercesc_2_78AttrImplD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_78AttrImpl13makeChildNodeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %2 = tail call noundef zeroext i1 @_ZNK11xercesc_2_78NodeImpl14hasStringValueEv(ptr noundef nonnull align 8 dereferenceable(26) %0) #10
  br i1 %2, label %3, label %20

3:                                                ; preds = %1
  %4 = getelementptr inbounds %"class.xercesc_2_7::AttrImpl", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  %6 = icmp eq ptr %5, null
  br i1 %6, label %19, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 8, !tbaa !35
  %9 = getelementptr inbounds ptr, ptr %8, i64 26
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(26) %0) #10
  %12 = load ptr, ptr %11, align 8, !tbaa !35
  %13 = getelementptr inbounds ptr, ptr %12, i64 59
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(168) %11, ptr noundef nonnull align 8 dereferenceable(8) %5) #10
  %16 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSEPNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef null) #10
  tail call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %5) #12
  store ptr %15, ptr %4, align 8, !tbaa !38
  tail call void @_ZN11xercesc_2_78NodeImpl12isFirstChildEb(ptr noundef nonnull align 8 dereferenceable(26) %15, i1 noundef zeroext true) #10
  %17 = getelementptr inbounds %"class.xercesc_2_7::ChildNode", ptr %15, i64 0, i32 1
  store ptr %15, ptr %17, align 8, !tbaa !56
  %18 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %15, i64 0, i32 2
  store ptr %0, ptr %18, align 8, !tbaa !57
  tail call void @_ZN11xercesc_2_78NodeImpl7isOwnedEb(ptr noundef nonnull align 8 dereferenceable(26) %15, i1 noundef zeroext true) #10
  br label %19

19:                                               ; preds = %7, %3
  tail call void @_ZN11xercesc_2_78NodeImpl14hasStringValueEb(ptr noundef nonnull align 8 dereferenceable(26) %0, i1 noundef zeroext false) #10
  br label %20

20:                                               ; preds = %19, %1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_78NodeImpl12isFirstChildEb(ptr noundef nonnull align 8 dereferenceable(26) %0, i1 noundef zeroext %1) local_unnamed_addr #4 comdat align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %0, i64 0, i32 3
  %4 = load i16, ptr %3, align 8, !tbaa !40
  %5 = load i16, ptr @_ZN11xercesc_2_78NodeImpl10FIRSTCHILDE, align 2, !tbaa !47
  %6 = or i16 %5, %4
  %7 = xor i16 %5, -1
  %8 = and i16 %4, %7
  %9 = select i1 %1, i16 %6, i16 %8
  %10 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %0, i64 0, i32 3
  store i16 %9, ptr %10, align 8, !tbaa !40
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_78NodeImpl7isOwnedEb(ptr noundef nonnull align 8 dereferenceable(26) %0, i1 noundef zeroext %1) local_unnamed_addr #4 comdat align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %0, i64 0, i32 3
  %4 = load i16, ptr %3, align 8, !tbaa !40
  %5 = load i16, ptr @_ZN11xercesc_2_78NodeImpl5OWNEDE, align 2, !tbaa !47
  %6 = or i16 %5, %4
  %7 = xor i16 %5, -1
  %8 = and i16 %4, %7
  %9 = select i1 %1, i16 %6, i16 %8
  %10 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %0, i64 0, i32 3
  store i16 %9, ptr %10, align 8, !tbaa !40
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_78AttrImpl9cloneNodeEb(ptr noundef nonnull align 8 dereferenceable(48) %0, i1 zeroext %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = getelementptr inbounds ptr, ptr %3, i64 26
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(26) %0) #10
  %7 = tail call noundef ptr @_ZNK11xercesc_2_712DocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(168) %6) #10
  %8 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %7) #10
  invoke void @_ZN11xercesc_2_78AttrImplC2ERKS0_b(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(48) %0, i1 zeroext poison) #10
          to label %9 unwind label %10

9:                                                ; preds = %2
  ret ptr %8

10:                                               ; preds = %2
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %8, ptr noundef %7) #12
  resume { ptr, i32 } %11
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_78AttrImpl11getNodeNameEv(ptr dead_on_unwind noalias nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::AttrImpl", ptr %1, i64 0, i32 1
  tail call void @_ZN11xercesc_2_79DOMStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #10
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79DOMStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef signext i16 @_ZN11xercesc_2_78AttrImpl11getNodeTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #6 align 2 !prof !34 {
  ret i16 2
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_78AttrImpl7getNameEv(ptr dead_on_unwind noalias nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::AttrImpl", ptr %1, i64 0, i32 1
  tail call void @_ZN11xercesc_2_79DOMStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_78AttrImpl12getNodeValueEv(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOMString") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 align 2 !prof !34 {
  %3 = load ptr, ptr %1, align 8, !tbaa !35
  %4 = getelementptr inbounds ptr, ptr %3, i64 49
  %5 = load ptr, ptr %4, align 8
  tail call void %5(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_78AttrImpl12getSpecifiedEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 align 2 !prof !34 {
  %2 = tail call noundef zeroext i1 @_ZNK11xercesc_2_78NodeImpl11isSpecifiedEv(ptr noundef nonnull align 8 dereferenceable(26) %0) #10
  ret i1 %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_78AttrImpl8getValueEv(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOMString") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  %4 = alloca %"class.xercesc_2_7::DOMString", align 8
  %5 = alloca %"class.xercesc_2_7::DOMString", align 8
  %6 = getelementptr inbounds %"class.xercesc_2_7::AttrImpl", ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !38
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  tail call void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 0) #10
  br label %73

10:                                               ; preds = %2
  %11 = tail call noundef zeroext i1 @_ZNK11xercesc_2_78NodeImpl14hasStringValueEv(ptr noundef nonnull align 8 dereferenceable(26) %1) #10
  %12 = load ptr, ptr %6, align 8, !tbaa !38
  br i1 %11, label %13, label %27

13:                                               ; preds = %10
  %14 = icmp eq ptr %12, null
  br i1 %14, label %15, label %23

15:                                               ; preds = %13
  %16 = load ptr, ptr %1, align 8, !tbaa !35
  %17 = getelementptr inbounds ptr, ptr %16, i64 26
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(26) %1) #10
  %20 = tail call noundef ptr @_ZNK11xercesc_2_712DocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(168) %19) #10
  %21 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 8, ptr noundef %20) #10
  invoke void @_ZN11xercesc_2_79DOMStringC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %21) #10
          to label %22 unwind label %25

22:                                               ; preds = %15
  store ptr %21, ptr %6, align 8, !tbaa !38
  br label %23

23:                                               ; preds = %13, %22
  %24 = phi ptr [ %21, %22 ], [ %12, %13 ]
  tail call void @_ZN11xercesc_2_79DOMStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %24) #10
  br label %73

25:                                               ; preds = %15
  %26 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %21, ptr noundef %20) #12
  br label %74

27:                                               ; preds = %10
  %28 = getelementptr inbounds %"class.xercesc_2_7::ChildNode", ptr %12, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !58
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %38

31:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  %32 = load ptr, ptr %12, align 8, !tbaa !35
  %33 = getelementptr inbounds ptr, ptr %32, i64 25
  %34 = load ptr, ptr %33, align 8
  call void %34(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %3, ptr noundef nonnull align 8 dereferenceable(26) %12) #10
  invoke void @_ZNK11xercesc_2_79DOMString5cloneEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #10
          to label %35 unwind label %36

35:                                               ; preds = %31
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  br label %73

36:                                               ; preds = %31
  %37 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  br label %74

38:                                               ; preds = %27, %45
  %39 = phi i32 [ %46, %45 ], [ 0, %27 ]
  %40 = phi ptr [ %48, %45 ], [ %12, %27 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %41 = load ptr, ptr %40, align 8, !tbaa !35
  %42 = getelementptr inbounds ptr, ptr %41, i64 25
  %43 = load ptr, ptr %42, align 8
  call void %43(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %4, ptr noundef nonnull align 8 dereferenceable(26) %40) #10
  %44 = invoke noundef i32 @_ZNK11xercesc_2_79DOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #10
          to label %45 unwind label %50

45:                                               ; preds = %38
  %46 = add i32 %44, %39
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  %47 = getelementptr inbounds %"class.xercesc_2_7::ChildNode", ptr %40, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !58
  %49 = icmp eq ptr %48, null
  br i1 %49, label %52, label %38, !llvm.loop !59

50:                                               ; preds = %38
  %51 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  br label %74

52:                                               ; preds = %45
  call void @_ZN11xercesc_2_79DOMStringC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #10
  invoke void @_ZN11xercesc_2_79DOMString7reserveEj(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %46) #10
          to label %53 unwind label %63

53:                                               ; preds = %52, %59
  %54 = phi ptr [ %61, %59 ], [ %12, %52 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  %55 = load ptr, ptr %54, align 8, !tbaa !35
  %56 = getelementptr inbounds ptr, ptr %55, i64 25
  %57 = load ptr, ptr %56, align 8
  invoke void %57(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %5, ptr noundef nonnull align 8 dereferenceable(26) %54) #10
          to label %58 unwind label %65

58:                                               ; preds = %53
  invoke void @_ZN11xercesc_2_79DOMString10appendDataERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %5) #10
          to label %59 unwind label %67

59:                                               ; preds = %58
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  %60 = getelementptr inbounds %"class.xercesc_2_7::ChildNode", ptr %54, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !58
  %62 = icmp eq ptr %61, null
  br i1 %62, label %73, label %53, !llvm.loop !60

63:                                               ; preds = %52
  %64 = landingpad { ptr, i32 }
          cleanup
  br label %71

65:                                               ; preds = %53
  %66 = landingpad { ptr, i32 }
          cleanup
  br label %69

67:                                               ; preds = %58
  %68 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi { ptr, i32 } [ %68, %67 ], [ %66, %65 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  br label %71

71:                                               ; preds = %69, %63
  %72 = phi { ptr, i32 } [ %70, %69 ], [ %64, %63 ]
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #12
  br label %74

73:                                               ; preds = %59, %35, %23, %9
  ret void

74:                                               ; preds = %36, %71, %50, %25
  %75 = phi { ptr, i32 } [ %26, %25 ], [ %37, %36 ], [ %51, %50 ], [ %72, %71 ]
  resume { ptr, i32 } %75
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #1

; Function Attrs: optsize
declare noundef i32 @_ZNK11xercesc_2_79DOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79DOMString7reserveEj(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79DOMString10appendDataERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_78AttrImpl10isAttrImplEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #6 align 2 !prof !34 {
  ret i1 true
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_78AttrImpl12setNodeValueERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = getelementptr inbounds ptr, ptr %3, i64 51
  %5 = load ptr, ptr %4, align 8
  tail call void %5(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_78AttrImpl12setSpecifiedEb(ptr noundef nonnull align 8 dereferenceable(48) %0, i1 noundef zeroext %1) unnamed_addr #4 align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_78NodeImpl11isSpecifiedEb(ptr noundef nonnull align 8 dereferenceable(26) %0, i1 noundef zeroext %1) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_78AttrImpl8setValueERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  %4 = alloca %"class.xercesc_2_7::DOMString", align 8
  %5 = tail call noundef zeroext i1 @_ZNK11xercesc_2_78NodeImpl10isReadOnlyEv(ptr noundef nonnull align 8 dereferenceable(26) %0) #10
  br i1 %5, label %6, label %18

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 24) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 0) #10
          to label %8 unwind label %12

8:                                                ; preds = %6
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %7, i16 noundef signext 7, ptr noundef nonnull align 8 dereferenceable(8) %3) #10
          to label %11 unwind label %9

9:                                                ; preds = %8
  %10 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  br label %16

11:                                               ; preds = %8
  invoke void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #14
          to label %86 unwind label %14

12:                                               ; preds = %6
  %13 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  br label %16

14:                                               ; preds = %11
  %15 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  br label %84

16:                                               ; preds = %9, %12
  %17 = phi { ptr, i32 } [ %13, %12 ], [ %10, %9 ]
  call void @__cxa_free_exception(ptr %7) #11
  br label %84

18:                                               ; preds = %2
  %19 = tail call noundef zeroext i1 @_ZNK11xercesc_2_78NodeImpl8isIdAttrEv(ptr noundef nonnull align 8 dereferenceable(26) %0) #10
  br i1 %19, label %20, label %26

20:                                               ; preds = %18
  %21 = load ptr, ptr %0, align 8, !tbaa !35
  %22 = getelementptr inbounds ptr, ptr %21, i64 26
  %23 = load ptr, ptr %22, align 8
  %24 = tail call noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(26) %0) #10
  %25 = tail call noundef ptr @_ZN11xercesc_2_712DocumentImpl12getNodeIDMapEv(ptr noundef nonnull align 8 dereferenceable(168) %24) #10
  tail call void @_ZN11xercesc_2_79NodeIDMap6removeEPNS_8AttrImplE(ptr noundef nonnull align 8 dereferenceable(40) %25, ptr noundef nonnull %0) #10
  br label %26

26:                                               ; preds = %20, %18
  %27 = tail call noundef zeroext i1 @_ZNK11xercesc_2_78NodeImpl14hasStringValueEv(ptr noundef nonnull align 8 dereferenceable(26) %0) #10
  %28 = getelementptr inbounds %"class.xercesc_2_7::AttrImpl", ptr %0, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !38
  br i1 %27, label %47, label %30

30:                                               ; preds = %26
  %31 = icmp eq ptr %29, null
  br i1 %31, label %45, label %32

32:                                               ; preds = %30, %42
  %33 = phi ptr [ %43, %42 ], [ %29, %30 ]
  %34 = load ptr, ptr %0, align 8, !tbaa !35
  %35 = getelementptr inbounds ptr, ptr %34, i64 32
  %36 = load ptr, ptr %35, align 8
  %37 = tail call noundef ptr %36(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %33) #10
  %38 = getelementptr inbounds %"class.xercesc_2_7::RefCountedImpl", ptr %33, i64 0, i32 1
  %39 = load i32, ptr %38, align 8, !tbaa !61
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  tail call void @_ZN11xercesc_2_78NodeImpl8deleteIfEPS0_(ptr noundef nonnull %33) #10
  br label %42

42:                                               ; preds = %41, %32
  %43 = load ptr, ptr %28, align 8, !tbaa !38
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %32, !llvm.loop !62

45:                                               ; preds = %42, %30
  %46 = getelementptr inbounds %"class.xercesc_2_7::AttrImpl", ptr %0, i64 0, i32 2
  br label %50

47:                                               ; preds = %26
  %48 = getelementptr inbounds %"class.xercesc_2_7::AttrImpl", ptr %0, i64 0, i32 2
  %49 = icmp eq ptr %29, null
  br i1 %49, label %50, label %59

50:                                               ; preds = %45, %47
  %51 = phi ptr [ %46, %45 ], [ %48, %47 ]
  %52 = load ptr, ptr %0, align 8, !tbaa !35
  %53 = getelementptr inbounds ptr, ptr %52, i64 26
  %54 = load ptr, ptr %53, align 8
  %55 = tail call noundef ptr %54(ptr noundef nonnull align 8 dereferenceable(26) %0) #10
  %56 = tail call noundef ptr @_ZNK11xercesc_2_712DocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(168) %55) #10
  %57 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 8, ptr noundef %56) #10
  invoke void @_ZN11xercesc_2_79DOMStringC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %57) #10
          to label %58 unwind label %66

58:                                               ; preds = %50
  store ptr %57, ptr %51, align 8, !tbaa !38
  br label %59

59:                                               ; preds = %47, %58
  %60 = phi ptr [ %51, %58 ], [ %48, %47 ]
  %61 = phi ptr [ %57, %58 ], [ %29, %47 ]
  %62 = tail call noundef zeroext i1 @_ZNK11xercesc_2_79DOMStringneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef null) #10
  br i1 %62, label %63, label %70

63:                                               ; preds = %59
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  call void @_ZNK11xercesc_2_79DOMString5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %1) #10
  %64 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %61, ptr noundef nonnull align 8 dereferenceable(8) %4) #10
          to label %65 unwind label %68

65:                                               ; preds = %63
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  br label %72

66:                                               ; preds = %50
  %67 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %57, ptr noundef %56) #12
  br label %84

68:                                               ; preds = %63
  %69 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  br label %84

70:                                               ; preds = %59
  %71 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSEPNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %61, ptr noundef null) #10
  tail call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %61) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %61) #12
  store ptr null, ptr %60, align 8, !tbaa !38
  br label %72

72:                                               ; preds = %70, %65
  call void @_ZN11xercesc_2_78NodeImpl14hasStringValueEb(ptr noundef nonnull align 8 dereferenceable(26) %0, i1 noundef zeroext true) #10
  call void @_ZN11xercesc_2_78NodeImpl11isSpecifiedEb(ptr noundef nonnull align 8 dereferenceable(26) %0, i1 noundef zeroext true) #10
  %73 = load ptr, ptr %0, align 8, !tbaa !35
  %74 = getelementptr inbounds ptr, ptr %73, i64 14
  %75 = load ptr, ptr %74, align 8
  call void %75(ptr noundef nonnull align 8 dereferenceable(26) %0) #10
  %76 = call noundef zeroext i1 @_ZNK11xercesc_2_78NodeImpl8isIdAttrEv(ptr noundef nonnull align 8 dereferenceable(26) %0) #10
  br i1 %76, label %77, label %83

77:                                               ; preds = %72
  %78 = load ptr, ptr %0, align 8, !tbaa !35
  %79 = getelementptr inbounds ptr, ptr %78, i64 26
  %80 = load ptr, ptr %79, align 8
  %81 = call noundef ptr %80(ptr noundef nonnull align 8 dereferenceable(26) %0) #10
  %82 = call noundef ptr @_ZN11xercesc_2_712DocumentImpl12getNodeIDMapEv(ptr noundef nonnull align 8 dereferenceable(168) %81) #10
  call void @_ZN11xercesc_2_79NodeIDMap3addEPNS_8AttrImplE(ptr noundef nonnull align 8 dereferenceable(40) %82, ptr noundef nonnull %0) #10
  br label %83

83:                                               ; preds = %77, %72
  ret void

84:                                               ; preds = %14, %68, %66, %16
  %85 = phi { ptr, i32 } [ %17, %16 ], [ %15, %14 ], [ %69, %68 ], [ %67, %66 ]
  resume { ptr, i32 } %85

86:                                               ; preds = %11
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_78NodeImpl10isReadOnlyEv(ptr noundef nonnull align 8 dereferenceable(26) %0) local_unnamed_addr #4 comdat align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %0, i64 0, i32 3
  %3 = load i16, ptr %2, align 8, !tbaa !40
  %4 = load i16, ptr @_ZN11xercesc_2_78NodeImpl8READONLYE, align 2, !tbaa !47
  %5 = and i16 %4, %3
  %6 = icmp ne i16 %5, 0
  ret i1 %6
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24), i16 noundef signext, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79NodeIDMap6removeEPNS_8AttrImplE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78NodeImpl8deleteIfEPS0_(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_79DOMStringneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_78AttrImpl8toStringEv(ptr dead_on_unwind noalias nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  %4 = alloca %"class.xercesc_2_7::DOMString", align 8
  %5 = alloca %"class.xercesc_2_7::DOMString", align 8
  tail call void @_ZN11xercesc_2_79DOMStringC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #10
  %6 = getelementptr inbounds %"class.xercesc_2_7::AttrImpl", ptr %1, i64 0, i32 1
  invoke void @_ZN11xercesc_2_79DOMString10appendDataERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %6) #10
          to label %7 unwind label %17

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  invoke void @_ZN11xercesc_2_79DOMStringC1EPKc(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str) #10
          to label %8 unwind label %19

8:                                                ; preds = %7
  invoke void @_ZN11xercesc_2_79DOMString10appendDataERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #10
          to label %9 unwind label %21

9:                                                ; preds = %8
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %10 = load ptr, ptr %1, align 8, !tbaa !35
  %11 = getelementptr inbounds ptr, ptr %10, i64 49
  %12 = load ptr, ptr %11, align 8
  invoke void %12(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %4, ptr noundef nonnull align 8 dereferenceable(48) %1) #10
          to label %13 unwind label %25

13:                                               ; preds = %9
  invoke void @_ZN11xercesc_2_79DOMString10appendDataERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %4) #10
          to label %14 unwind label %27

14:                                               ; preds = %13
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  invoke void @_ZN11xercesc_2_79DOMStringC1EPKc(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull @.str.1) #10
          to label %15 unwind label %31

15:                                               ; preds = %14
  invoke void @_ZN11xercesc_2_79DOMString10appendDataERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %5) #10
          to label %16 unwind label %33

16:                                               ; preds = %15
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
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
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
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
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
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
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  br label %37

37:                                               ; preds = %35, %29, %23, %17
  %38 = phi { ptr, i32 } [ %36, %35 ], [ %30, %29 ], [ %24, %23 ], [ %18, %17 ]
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #12
  resume { ptr, i32 } %38
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79DOMStringC1EPKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_78AttrImpl15getOwnerElementEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #4 align 2 !prof !34 {
  %2 = tail call noundef zeroext i1 @_ZNK11xercesc_2_78NodeImpl7isOwnedEv(ptr noundef nonnull align 8 dereferenceable(26) %0) #10
  %3 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = select i1 %2, ptr %4, ptr null
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_78NodeImpl7isOwnedEv(ptr noundef nonnull align 8 dereferenceable(26) %0) local_unnamed_addr #4 comdat align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %0, i64 0, i32 3
  %3 = load i16, ptr %2, align 8, !tbaa !40
  %4 = load i16, ptr @_ZN11xercesc_2_78NodeImpl5OWNEDE, align 2, !tbaa !47
  %5 = and i16 %4, %3
  %6 = icmp ne i16 %5, 0
  ret i1 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_78AttrImpl15setOwnerElementEPNS_11ElementImplE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #4 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %0, i64 0, i32 2
  store ptr %1, ptr %3, align 8, !tbaa !57
  tail call void @_ZN11xercesc_2_78NodeImpl7isOwnedEb(ptr noundef nonnull align 8 dereferenceable(26) %0, i1 noundef zeroext false) #10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZN11xercesc_2_78AttrImpl13getChildNodesEv(ptr noundef nonnull readnone returned align 8 dereferenceable(48) %0) unnamed_addr #6 align 2 !prof !34 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_78AttrImpl13getFirstChildEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_78AttrImpl13makeChildNodeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #10
  %2 = getelementptr inbounds %"class.xercesc_2_7::AttrImpl", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !38
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_78AttrImpl12getLastChildEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 align 2 !prof !34 {
  %2 = tail call noundef ptr @_ZN11xercesc_2_78AttrImpl9lastChildEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #10
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_78AttrImpl9lastChildEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_78AttrImpl13makeChildNodeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #10
  %2 = getelementptr inbounds %"class.xercesc_2_7::AttrImpl", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !38
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::ChildNode", ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !56
  br label %8

8:                                                ; preds = %1, %5
  %9 = phi ptr [ %7, %5 ], [ null, %1 ]
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_78AttrImpl9lastChildEPNS_9ChildNodeE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #7 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::AttrImpl", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !38
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::ChildNode", ptr %4, i64 0, i32 1
  store ptr %1, ptr %7, align 8, !tbaa !56
  br label %8

8:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef i32 @_ZN11xercesc_2_78AttrImpl9getLengthEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 align 2 !prof !34 {
  %2 = tail call noundef zeroext i1 @_ZNK11xercesc_2_78NodeImpl14hasStringValueEv(ptr noundef nonnull align 8 dereferenceable(26) %0) #10
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %"class.xercesc_2_7::AttrImpl", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %3, %7
  %8 = phi ptr [ %12, %7 ], [ %5, %3 ]
  %9 = phi i32 [ %10, %7 ], [ 0, %3 ]
  %10 = add nuw nsw i32 %9, 1
  %11 = getelementptr inbounds %"class.xercesc_2_7::ChildNode", ptr %8, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !38
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %7, !llvm.loop !63

14:                                               ; preds = %7, %3, %1
  %15 = phi i32 [ 1, %1 ], [ 0, %3 ], [ %10, %7 ]
  ret i32 %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_78AttrImpl13hasChildNodesEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %0) unnamed_addr #8 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::AttrImpl", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !38
  %4 = icmp ne ptr %3, null
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
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
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(26) %0) #10
  %14 = tail call noundef zeroext i1 @_ZN11xercesc_2_712DocumentImpl16getErrorCheckingEv(ptr noundef nonnull align 8 dereferenceable(168) %13) #10
  %15 = load ptr, ptr %1, align 8, !tbaa !35
  %16 = getelementptr inbounds ptr, ptr %15, i64 8
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef zeroext i1 %17(ptr noundef nonnull align 8 dereferenceable(26) %1) #10
  br i1 %18, label %19, label %65

19:                                               ; preds = %3
  br i1 %14, label %20, label %47

20:                                               ; preds = %19
  %21 = load ptr, ptr %1, align 8, !tbaa !35
  %22 = getelementptr inbounds ptr, ptr %21, i64 20
  %23 = load ptr, ptr %22, align 8
  %24 = tail call noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(26) %1) #10
  %25 = icmp eq ptr %24, null
  br i1 %25, label %47, label %26

26:                                               ; preds = %20, %41
  %27 = phi ptr [ %45, %41 ], [ %24, %20 ]
  %28 = tail call noundef zeroext i1 @_ZN11xercesc_2_712DocumentImpl7isKidOKEPNS_8NodeImplES2_(ptr noundef nonnull %0, ptr noundef nonnull %27) #10
  br i1 %28, label %41, label %29

29:                                               ; preds = %26
  %30 = tail call ptr @__cxa_allocate_exception(i64 24) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 0) #10
          to label %31 unwind label %35

31:                                               ; preds = %29
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %30, i16 noundef signext 3, ptr noundef nonnull align 8 dereferenceable(8) %4) #10
          to label %34 unwind label %32

32:                                               ; preds = %31
  %33 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  br label %39

34:                                               ; preds = %31
  invoke void @__cxa_throw(ptr nonnull %30, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #14
          to label %225 unwind label %37

35:                                               ; preds = %29
  %36 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  br label %39

37:                                               ; preds = %34
  %38 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  br label %223

39:                                               ; preds = %32, %35
  %40 = phi { ptr, i32 } [ %36, %35 ], [ %33, %32 ]
  call void @__cxa_free_exception(ptr %30) #11
  br label %223

41:                                               ; preds = %26
  %42 = load ptr, ptr %27, align 8, !tbaa !35
  %43 = getelementptr inbounds ptr, ptr %42, i64 22
  %44 = load ptr, ptr %43, align 8
  %45 = tail call noundef ptr %44(ptr noundef nonnull align 8 dereferenceable(26) %27) #10
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %26, !llvm.loop !64

47:                                               ; preds = %41, %20, %19
  %48 = load ptr, ptr %1, align 8, !tbaa !35
  %49 = getelementptr inbounds ptr, ptr %48, i64 30
  %50 = load ptr, ptr %49, align 8
  %51 = tail call noundef zeroext i1 %50(ptr noundef nonnull align 8 dereferenceable(26) %1) #10
  br i1 %51, label %52, label %222

52:                                               ; preds = %47, %52
  %53 = load ptr, ptr %1, align 8, !tbaa !35
  %54 = getelementptr inbounds ptr, ptr %53, i64 20
  %55 = load ptr, ptr %54, align 8
  %56 = tail call noundef ptr %55(ptr noundef nonnull align 8 dereferenceable(26) %1) #10
  %57 = load ptr, ptr %0, align 8, !tbaa !35
  %58 = getelementptr inbounds ptr, ptr %57, i64 31
  %59 = load ptr, ptr %58, align 8
  %60 = tail call noundef ptr %59(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %56, ptr noundef %2) #10
  %61 = load ptr, ptr %1, align 8, !tbaa !35
  %62 = getelementptr inbounds ptr, ptr %61, i64 30
  %63 = load ptr, ptr %62, align 8
  %64 = tail call noundef zeroext i1 %63(ptr noundef nonnull align 8 dereferenceable(26) %1) #10
  br i1 %64, label %52, label %222, !llvm.loop !65

65:                                               ; preds = %3
  %66 = icmp eq ptr %2, %1
  br i1 %66, label %222, label %67

67:                                               ; preds = %65
  br i1 %14, label %68, label %157

68:                                               ; preds = %67
  %69 = tail call noundef zeroext i1 @_ZNK11xercesc_2_78NodeImpl10isReadOnlyEv(ptr noundef nonnull align 8 dereferenceable(26) %0) #10
  br i1 %69, label %70, label %82

70:                                               ; preds = %68
  %71 = tail call ptr @__cxa_allocate_exception(i64 24) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef 0) #10
          to label %72 unwind label %76

72:                                               ; preds = %70
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %71, i16 noundef signext 7, ptr noundef nonnull align 8 dereferenceable(8) %5) #10
          to label %75 unwind label %73

73:                                               ; preds = %72
  %74 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  br label %80

75:                                               ; preds = %72
  invoke void @__cxa_throw(ptr nonnull %71, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #14
          to label %225 unwind label %78

76:                                               ; preds = %70
  %77 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  br label %80

78:                                               ; preds = %75
  %79 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  br label %223

80:                                               ; preds = %73, %76
  %81 = phi { ptr, i32 } [ %77, %76 ], [ %74, %73 ]
  call void @__cxa_free_exception(ptr %71) #11
  br label %223

82:                                               ; preds = %68
  %83 = load ptr, ptr %1, align 8, !tbaa !35
  %84 = getelementptr inbounds ptr, ptr %83, i64 26
  %85 = load ptr, ptr %84, align 8
  %86 = tail call noundef ptr %85(ptr noundef nonnull align 8 dereferenceable(26) %1) #10
  %87 = icmp eq ptr %86, %13
  br i1 %87, label %100, label %88

88:                                               ; preds = %82
  %89 = tail call ptr @__cxa_allocate_exception(i64 24) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 0) #10
          to label %90 unwind label %94

90:                                               ; preds = %88
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %89, i16 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(8) %6) #10
          to label %93 unwind label %91

91:                                               ; preds = %90
  %92 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  br label %98

93:                                               ; preds = %90
  invoke void @__cxa_throw(ptr nonnull %89, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #14
          to label %225 unwind label %96

94:                                               ; preds = %88
  %95 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  br label %98

96:                                               ; preds = %93
  %97 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  br label %223

98:                                               ; preds = %91, %94
  %99 = phi { ptr, i32 } [ %95, %94 ], [ %92, %91 ]
  call void @__cxa_free_exception(ptr %89) #11
  br label %223

100:                                              ; preds = %82
  %101 = tail call noundef zeroext i1 @_ZN11xercesc_2_712DocumentImpl7isKidOKEPNS_8NodeImplES2_(ptr noundef nonnull %0, ptr noundef nonnull %1) #10
  br i1 %101, label %114, label %102

102:                                              ; preds = %100
  %103 = tail call ptr @__cxa_allocate_exception(i64 24) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #11
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef 0) #10
          to label %104 unwind label %108

104:                                              ; preds = %102
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %103, i16 noundef signext 3, ptr noundef nonnull align 8 dereferenceable(8) %7) #10
          to label %107 unwind label %105

105:                                              ; preds = %104
  %106 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  br label %112

107:                                              ; preds = %104
  invoke void @__cxa_throw(ptr nonnull %103, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #14
          to label %225 unwind label %110

108:                                              ; preds = %102
  %109 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  br label %112

110:                                              ; preds = %107
  %111 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  br label %223

112:                                              ; preds = %105, %108
  %113 = phi { ptr, i32 } [ %109, %108 ], [ %106, %105 ]
  call void @__cxa_free_exception(ptr %103) #11
  br label %223

114:                                              ; preds = %100
  %115 = icmp eq ptr %2, null
  br i1 %115, label %116, label %117

116:                                              ; preds = %117, %114
  br label %136

117:                                              ; preds = %114
  %118 = load ptr, ptr %2, align 8, !tbaa !35
  %119 = getelementptr inbounds ptr, ptr %118, i64 27
  %120 = load ptr, ptr %119, align 8
  %121 = tail call noundef ptr %120(ptr noundef nonnull align 8 dereferenceable(26) %2) #10
  %122 = icmp eq ptr %121, %0
  br i1 %122, label %116, label %123

123:                                              ; preds = %117
  %124 = tail call ptr @__cxa_allocate_exception(i64 24) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #11
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef 0) #10
          to label %125 unwind label %129

125:                                              ; preds = %123
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %124, i16 noundef signext 8, ptr noundef nonnull align 8 dereferenceable(8) %8) #10
          to label %128 unwind label %126

126:                                              ; preds = %125
  %127 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  br label %133

128:                                              ; preds = %125
  invoke void @__cxa_throw(ptr nonnull %124, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #14
          to label %225 unwind label %131

129:                                              ; preds = %123
  %130 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  br label %133

131:                                              ; preds = %128
  %132 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  br label %223

133:                                              ; preds = %126, %129
  %134 = phi { ptr, i32 } [ %130, %129 ], [ %127, %126 ]
  call void @__cxa_free_exception(ptr %124) #11
  br label %223

135:                                              ; preds = %136
  br i1 %138, label %157, label %145

136:                                              ; preds = %116, %136
  %137 = phi ptr [ %142, %136 ], [ %0, %116 ]
  %138 = icmp ne ptr %137, %1
  %139 = load ptr, ptr %137, align 8, !tbaa !35
  %140 = getelementptr inbounds ptr, ptr %139, i64 27
  %141 = load ptr, ptr %140, align 8
  %142 = tail call noundef ptr %141(ptr noundef nonnull align 8 dereferenceable(26) %137) #10
  %143 = icmp ne ptr %142, null
  %144 = and i1 %138, %143
  br i1 %144, label %136, label %135, !llvm.loop !66

145:                                              ; preds = %135
  %146 = tail call ptr @__cxa_allocate_exception(i64 24) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #11
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %9, i32 noundef 0) #10
          to label %147 unwind label %151

147:                                              ; preds = %145
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %146, i16 noundef signext 3, ptr noundef nonnull align 8 dereferenceable(8) %9) #10
          to label %150 unwind label %148

148:                                              ; preds = %147
  %149 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #11
  br label %155

150:                                              ; preds = %147
  invoke void @__cxa_throw(ptr nonnull %146, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #14
          to label %225 unwind label %153

151:                                              ; preds = %145
  %152 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #11
  br label %155

153:                                              ; preds = %150
  %154 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #11
  br label %223

155:                                              ; preds = %148, %151
  %156 = phi { ptr, i32 } [ %152, %151 ], [ %149, %148 ]
  call void @__cxa_free_exception(ptr %146) #11
  br label %223

157:                                              ; preds = %135, %67
  tail call void @_ZN11xercesc_2_78AttrImpl13makeChildNodeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #10
  %158 = load ptr, ptr %1, align 8, !tbaa !35
  %159 = getelementptr inbounds ptr, ptr %158, i64 27
  %160 = load ptr, ptr %159, align 8
  %161 = tail call noundef ptr %160(ptr noundef nonnull align 8 dereferenceable(48) %1) #10
  %162 = icmp eq ptr %161, null
  br i1 %162, label %168, label %163

163:                                              ; preds = %157
  %164 = load ptr, ptr %161, align 8, !tbaa !35
  %165 = getelementptr inbounds ptr, ptr %164, i64 32
  %166 = load ptr, ptr %165, align 8
  %167 = tail call noundef ptr %166(ptr noundef nonnull align 8 dereferenceable(26) %161, ptr noundef nonnull %1) #10
  br label %168

168:                                              ; preds = %163, %157
  %169 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %1, i64 0, i32 2
  store ptr %0, ptr %169, align 8, !tbaa !57
  tail call void @_ZN11xercesc_2_78NodeImpl7isOwnedEb(ptr noundef nonnull align 8 dereferenceable(26) %1, i1 noundef zeroext true) #10
  %170 = getelementptr inbounds %"class.xercesc_2_7::AttrImpl", ptr %0, i64 0, i32 2
  %171 = load ptr, ptr %170, align 8, !tbaa !38
  %172 = icmp eq ptr %171, null
  br i1 %172, label %173, label %175

173:                                              ; preds = %168
  store ptr %1, ptr %170, align 8, !tbaa !38
  tail call void @_ZN11xercesc_2_78NodeImpl12isFirstChildEb(ptr noundef nonnull align 8 dereferenceable(26) %1, i1 noundef zeroext true) #10
  %174 = getelementptr inbounds %"class.xercesc_2_7::ChildNode", ptr %1, i64 0, i32 1
  store ptr %1, ptr %174, align 8, !tbaa !56
  br label %195

175:                                              ; preds = %168
  %176 = icmp eq ptr %2, null
  br i1 %176, label %177, label %182

177:                                              ; preds = %175
  %178 = getelementptr inbounds %"class.xercesc_2_7::ChildNode", ptr %171, i64 0, i32 1
  %179 = load ptr, ptr %178, align 8, !tbaa !56
  %180 = getelementptr inbounds %"class.xercesc_2_7::ChildNode", ptr %179, i64 0, i32 2
  store ptr %1, ptr %180, align 8, !tbaa !58
  %181 = getelementptr inbounds %"class.xercesc_2_7::ChildNode", ptr %1, i64 0, i32 1
  store ptr %179, ptr %181, align 8, !tbaa !56
  store ptr %1, ptr %178, align 8, !tbaa !56
  br label %195

182:                                              ; preds = %175
  %183 = icmp eq ptr %171, %2
  br i1 %183, label %184, label %189

184:                                              ; preds = %182
  tail call void @_ZN11xercesc_2_78NodeImpl12isFirstChildEb(ptr noundef nonnull align 8 dereferenceable(26) %2, i1 noundef zeroext false) #10
  %185 = getelementptr inbounds %"class.xercesc_2_7::ChildNode", ptr %1, i64 0, i32 2
  store ptr %2, ptr %185, align 8, !tbaa !58
  %186 = getelementptr inbounds %"class.xercesc_2_7::ChildNode", ptr %2, i64 0, i32 1
  %187 = load ptr, ptr %186, align 8, !tbaa !56
  %188 = getelementptr inbounds %"class.xercesc_2_7::ChildNode", ptr %1, i64 0, i32 1
  store ptr %187, ptr %188, align 8, !tbaa !56
  store ptr %1, ptr %186, align 8, !tbaa !56
  store ptr %1, ptr %170, align 8, !tbaa !38
  tail call void @_ZN11xercesc_2_78NodeImpl12isFirstChildEb(ptr noundef nonnull align 8 dereferenceable(26) %1, i1 noundef zeroext true) #10
  br label %195

189:                                              ; preds = %182
  %190 = getelementptr inbounds %"class.xercesc_2_7::ChildNode", ptr %2, i64 0, i32 1
  %191 = load ptr, ptr %190, align 8, !tbaa !56
  %192 = getelementptr inbounds %"class.xercesc_2_7::ChildNode", ptr %1, i64 0, i32 2
  store ptr %2, ptr %192, align 8, !tbaa !58
  %193 = getelementptr inbounds %"class.xercesc_2_7::ChildNode", ptr %191, i64 0, i32 2
  store ptr %1, ptr %193, align 8, !tbaa !58
  store ptr %1, ptr %190, align 8, !tbaa !56
  %194 = getelementptr inbounds %"class.xercesc_2_7::ChildNode", ptr %1, i64 0, i32 1
  store ptr %191, ptr %194, align 8, !tbaa !56
  br label %195

195:                                              ; preds = %177, %189, %184, %173
  %196 = load ptr, ptr %0, align 8, !tbaa !35
  %197 = getelementptr inbounds ptr, ptr %196, i64 14
  %198 = load ptr, ptr %197, align 8
  tail call void %198(ptr noundef nonnull align 8 dereferenceable(26) %0) #10
  %199 = load ptr, ptr %0, align 8, !tbaa !35
  %200 = getelementptr inbounds ptr, ptr %199, i64 26
  %201 = load ptr, ptr %200, align 8
  %202 = tail call noundef ptr %201(ptr noundef nonnull align 8 dereferenceable(26) %0) #10
  %203 = icmp eq ptr %202, null
  br i1 %203, label %222, label %204

204:                                              ; preds = %195
  %205 = load ptr, ptr %0, align 8, !tbaa !35
  %206 = getelementptr inbounds ptr, ptr %205, i64 26
  %207 = load ptr, ptr %206, align 8
  %208 = tail call noundef ptr %207(ptr noundef nonnull align 8 dereferenceable(26) %0) #10
  %209 = load ptr, ptr %208, align 8, !tbaa !35
  %210 = getelementptr inbounds ptr, ptr %209, i64 65
  %211 = load ptr, ptr %210, align 8
  %212 = tail call noundef ptr %211(ptr noundef nonnull align 8 dereferenceable(168) %208) #10
  %213 = icmp eq ptr %212, null
  br i1 %213, label %222, label %214

214:                                              ; preds = %204
  %215 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_9RangeImplEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %212) #10
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %222, label %217

217:                                              ; preds = %214, %217
  %218 = phi i32 [ %220, %217 ], [ 0, %214 ]
  %219 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %212, i32 noundef %218) #10
  tail call void @_ZN11xercesc_2_79RangeImpl26updateRangeForInsertedNodeEPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(72) %219, ptr noundef nonnull %1) #10
  %220 = add nuw i32 %218, 1
  %221 = icmp eq i32 %220, %215
  br i1 %221, label %222, label %217, !llvm.loop !67

222:                                              ; preds = %217, %52, %214, %47, %195, %204, %65
  ret ptr %1

223:                                              ; preds = %153, %131, %110, %96, %78, %37, %155, %39, %133, %112, %98, %80
  %224 = phi { ptr, i32 } [ %81, %80 ], [ %79, %78 ], [ %99, %98 ], [ %97, %96 ], [ %134, %133 ], [ %132, %131 ], [ %113, %112 ], [ %111, %110 ], [ %40, %39 ], [ %38, %37 ], [ %156, %155 ], [ %154, %153 ]
  resume { ptr, i32 } %224

225:                                              ; preds = %150, %128, %107, %93, %75, %34
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_712DocumentImpl16getErrorCheckingEv(ptr noundef nonnull align 8 dereferenceable(168) %0) local_unnamed_addr #4 comdat align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 10
  %3 = load i8, ptr %2, align 4, !tbaa !68, !range !69, !noundef !70
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_712DocumentImpl7isKidOKEPNS_8NodeImplES2_(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_9RangeImplEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #4 comdat align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !71
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !71
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !73
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.2, i32 noundef 249, i32 noundef 116, ptr noundef %9) #10
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #14
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #11
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !74
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !75
  ret ptr %18
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79RangeImpl26updateRangeForInsertedNodeEPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_78AttrImpl4itemEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1) unnamed_addr #0 align 2 !prof !34 {
  %3 = tail call noundef zeroext i1 @_ZNK11xercesc_2_78NodeImpl14hasStringValueEv(ptr noundef nonnull align 8 dereferenceable(26) %0) #10
  br i1 %3, label %4, label %12

4:                                                ; preds = %2
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %6, label %27

6:                                                ; preds = %4
  %7 = getelementptr inbounds %"class.xercesc_2_7::AttrImpl", ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !38
  %9 = icmp eq ptr %8, null
  br i1 %9, label %27, label %10

10:                                               ; preds = %6
  tail call void @_ZN11xercesc_2_78AttrImpl13makeChildNodeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #10
  %11 = load ptr, ptr %7, align 8, !tbaa !38
  br label %27

12:                                               ; preds = %2
  %13 = getelementptr inbounds %"class.xercesc_2_7::AttrImpl", ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !38
  %15 = icmp ne i32 %1, 0
  %16 = icmp ne ptr %14, null
  %17 = select i1 %15, i1 %16, i1 false
  br i1 %17, label %18, label %27

18:                                               ; preds = %12, %18
  %19 = phi ptr [ %23, %18 ], [ %14, %12 ]
  %20 = phi i32 [ %22, %18 ], [ 0, %12 ]
  %21 = getelementptr inbounds %"class.xercesc_2_7::ChildNode", ptr %19, i64 0, i32 2
  %22 = add nuw i32 %20, 1
  %23 = load ptr, ptr %21, align 8, !tbaa !38
  %24 = icmp ult i32 %22, %1
  %25 = icmp ne ptr %23, null
  %26 = select i1 %24, i1 %25, i1 false
  br i1 %26, label %18, label %27, !llvm.loop !76

27:                                               ; preds = %18, %12, %4, %6, %10
  %28 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %4 ], [ %14, %12 ], [ %23, %18 ]
  ret ptr %28
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_78AttrImpl11removeChildEPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef returned %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  %4 = alloca %"class.xercesc_2_7::DOMString", align 8
  %5 = load ptr, ptr %0, align 8, !tbaa !35
  %6 = getelementptr inbounds ptr, ptr %5, i64 26
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(26) %0) #10
  %9 = tail call noundef zeroext i1 @_ZN11xercesc_2_712DocumentImpl16getErrorCheckingEv(ptr noundef nonnull align 8 dereferenceable(168) %8) #10
  br i1 %9, label %10, label %44

10:                                               ; preds = %2
  %11 = tail call noundef zeroext i1 @_ZNK11xercesc_2_78NodeImpl10isReadOnlyEv(ptr noundef nonnull align 8 dereferenceable(26) %0) #10
  br i1 %11, label %12, label %24

12:                                               ; preds = %10
  %13 = tail call ptr @__cxa_allocate_exception(i64 24) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 0) #10
          to label %14 unwind label %18

14:                                               ; preds = %12
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %13, i16 noundef signext 7, ptr noundef nonnull align 8 dereferenceable(8) %3) #10
          to label %17 unwind label %15

15:                                               ; preds = %14
  %16 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  br label %22

17:                                               ; preds = %14
  invoke void @__cxa_throw(ptr nonnull %13, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #14
          to label %108 unwind label %20

18:                                               ; preds = %12
  %19 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  br label %22

20:                                               ; preds = %17
  %21 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  br label %106

22:                                               ; preds = %15, %18
  %23 = phi { ptr, i32 } [ %19, %18 ], [ %16, %15 ]
  call void @__cxa_free_exception(ptr %13) #11
  br label %106

24:                                               ; preds = %10
  %25 = icmp eq ptr %1, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %24
  %27 = load ptr, ptr %1, align 8, !tbaa !35
  %28 = getelementptr inbounds ptr, ptr %27, i64 27
  %29 = load ptr, ptr %28, align 8
  %30 = tail call noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(26) %1) #10
  %31 = icmp eq ptr %30, %0
  br i1 %31, label %44, label %32

32:                                               ; preds = %26, %24
  %33 = tail call ptr @__cxa_allocate_exception(i64 24) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 0) #10
          to label %34 unwind label %38

34:                                               ; preds = %32
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %33, i16 noundef signext 8, ptr noundef nonnull align 8 dereferenceable(8) %4) #10
          to label %37 unwind label %35

35:                                               ; preds = %34
  %36 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  br label %42

37:                                               ; preds = %34
  invoke void @__cxa_throw(ptr nonnull %33, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #14
          to label %108 unwind label %40

38:                                               ; preds = %32
  %39 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  br label %42

40:                                               ; preds = %37
  %41 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  br label %106

42:                                               ; preds = %35, %38
  %43 = phi { ptr, i32 } [ %39, %38 ], [ %36, %35 ]
  call void @__cxa_free_exception(ptr %33) #11
  br label %106

44:                                               ; preds = %26, %2
  %45 = load ptr, ptr %0, align 8, !tbaa !35
  %46 = getelementptr inbounds ptr, ptr %45, i64 26
  %47 = load ptr, ptr %46, align 8
  %48 = tail call noundef ptr %47(ptr noundef nonnull align 8 dereferenceable(26) %0) #10
  %49 = icmp eq ptr %48, null
  br i1 %49, label %72, label %50

50:                                               ; preds = %44
  %51 = load ptr, ptr %0, align 8, !tbaa !35
  %52 = getelementptr inbounds ptr, ptr %51, i64 26
  %53 = load ptr, ptr %52, align 8
  %54 = tail call noundef ptr %53(ptr noundef nonnull align 8 dereferenceable(26) %0) #10
  %55 = load ptr, ptr %54, align 8, !tbaa !35
  %56 = getelementptr inbounds ptr, ptr %55, i64 65
  %57 = load ptr, ptr %56, align 8
  %58 = tail call noundef ptr %57(ptr noundef nonnull align 8 dereferenceable(168) %54) #10
  %59 = icmp eq ptr %58, null
  br i1 %59, label %72, label %60

60:                                               ; preds = %50
  %61 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_9RangeImplEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %58) #10
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %72, label %63

63:                                               ; preds = %60, %69
  %64 = phi i32 [ %70, %69 ], [ 0, %60 ]
  %65 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %58, i32 noundef %64) #10
  %66 = icmp eq ptr %65, null
  br i1 %66, label %69, label %67

67:                                               ; preds = %63
  %68 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %58, i32 noundef %64) #10
  tail call void @_ZN11xercesc_2_79RangeImpl25updateRangeForDeletedNodeEPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(72) %68, ptr noundef %1) #10
  br label %69

69:                                               ; preds = %63, %67
  %70 = add nuw i32 %64, 1
  %71 = icmp eq i32 %70, %61
  br i1 %71, label %72, label %63, !llvm.loop !77

72:                                               ; preds = %69, %50, %60, %44
  %73 = getelementptr inbounds %"class.xercesc_2_7::AttrImpl", ptr %0, i64 0, i32 2
  %74 = load ptr, ptr %73, align 8, !tbaa !38
  %75 = icmp eq ptr %74, %1
  br i1 %75, label %76, label %83

76:                                               ; preds = %72
  tail call void @_ZN11xercesc_2_78NodeImpl12isFirstChildEb(ptr noundef nonnull align 8 dereferenceable(26) %1, i1 noundef zeroext false) #10
  %77 = getelementptr inbounds %"class.xercesc_2_7::ChildNode", ptr %1, i64 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !58
  store ptr %78, ptr %73, align 8, !tbaa !38
  %79 = icmp eq ptr %78, null
  br i1 %79, label %96, label %80

80:                                               ; preds = %76
  tail call void @_ZN11xercesc_2_78NodeImpl12isFirstChildEb(ptr noundef nonnull align 8 dereferenceable(26) %78, i1 noundef zeroext true) #10
  %81 = getelementptr inbounds %"class.xercesc_2_7::ChildNode", ptr %1, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !56
  br label %92

83:                                               ; preds = %72
  %84 = getelementptr inbounds %"class.xercesc_2_7::ChildNode", ptr %1, i64 0, i32 1
  %85 = load ptr, ptr %84, align 8, !tbaa !56
  %86 = getelementptr inbounds %"class.xercesc_2_7::ChildNode", ptr %1, i64 0, i32 2
  %87 = load ptr, ptr %86, align 8, !tbaa !58
  %88 = getelementptr inbounds %"class.xercesc_2_7::ChildNode", ptr %85, i64 0, i32 2
  store ptr %87, ptr %88, align 8, !tbaa !58
  %89 = icmp eq ptr %87, null
  %90 = load ptr, ptr %73, align 8
  %91 = select i1 %89, ptr %90, ptr %87
  br label %92

92:                                               ; preds = %83, %80
  %93 = phi ptr [ %78, %80 ], [ %91, %83 ]
  %94 = phi ptr [ %82, %80 ], [ %85, %83 ]
  %95 = getelementptr inbounds %"class.xercesc_2_7::ChildNode", ptr %93, i64 0, i32 1
  store ptr %94, ptr %95, align 8, !tbaa !56
  br label %96

96:                                               ; preds = %92, %76
  %97 = load ptr, ptr %0, align 8, !tbaa !35
  %98 = getelementptr inbounds ptr, ptr %97, i64 26
  %99 = load ptr, ptr %98, align 8
  %100 = tail call noundef ptr %99(ptr noundef nonnull align 8 dereferenceable(26) %0) #10
  %101 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %1, i64 0, i32 2
  store ptr %100, ptr %101, align 8, !tbaa !57
  tail call void @_ZN11xercesc_2_78NodeImpl7isOwnedEb(ptr noundef nonnull align 8 dereferenceable(26) %1, i1 noundef zeroext false) #10
  %102 = getelementptr inbounds %"class.xercesc_2_7::ChildNode", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %102, i8 0, i64 16, i1 false)
  %103 = load ptr, ptr %0, align 8, !tbaa !35
  %104 = getelementptr inbounds ptr, ptr %103, i64 14
  %105 = load ptr, ptr %104, align 8
  tail call void %105(ptr noundef nonnull align 8 dereferenceable(26) %0) #10
  ret ptr %1

106:                                              ; preds = %40, %20, %42, %22
  %107 = phi { ptr, i32 } [ %23, %22 ], [ %21, %20 ], [ %43, %42 ], [ %41, %40 ]
  resume { ptr, i32 } %107

108:                                              ; preds = %37, %17
  unreachable
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79RangeImpl25updateRangeForDeletedNodeEPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_78AttrImpl12replaceChildEPNS_8NodeImplES2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef returned %2) unnamed_addr #0 align 2 !prof !34 {
  %4 = load ptr, ptr %0, align 8, !tbaa !35
  %5 = getelementptr inbounds ptr, ptr %4, i64 31
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2) #10
  %8 = icmp eq ptr %1, %2
  br i1 %8, label %14, label %9

9:                                                ; preds = %3
  %10 = load ptr, ptr %0, align 8, !tbaa !35
  %11 = getelementptr inbounds ptr, ptr %10, i64 32
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %2) #10
  br label %14

14:                                               ; preds = %9, %3
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_78AttrImpl11setReadOnlyEbb(ptr noundef nonnull align 8 dereferenceable(48) %0, i1 noundef zeroext %1, i1 noundef zeroext %2) unnamed_addr #0 align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_78NodeImpl11setReadOnlyEbb(ptr noundef nonnull align 8 dereferenceable(26) %0, i1 noundef zeroext %1, i1 noundef zeroext %2) #10
  br i1 %2, label %4, label %24

4:                                                ; preds = %3
  %5 = tail call noundef zeroext i1 @_ZNK11xercesc_2_78NodeImpl14hasStringValueEv(ptr noundef nonnull align 8 dereferenceable(26) %0) #10
  %6 = getelementptr inbounds %"class.xercesc_2_7::AttrImpl", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  %9 = select i1 %5, i1 true, i1 %8
  br i1 %9, label %24, label %10

10:                                               ; preds = %4, %20
  %11 = phi ptr [ %22, %20 ], [ %7, %4 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !35
  %13 = getelementptr inbounds ptr, ptr %12, i64 12
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef zeroext i1 %14(ptr noundef nonnull align 8 dereferenceable(26) %11) #10
  br i1 %15, label %20, label %16

16:                                               ; preds = %10
  %17 = load ptr, ptr %11, align 8, !tbaa !35
  %18 = getelementptr inbounds ptr, ptr %17, i64 35
  %19 = load ptr, ptr %18, align 8
  tail call void %19(ptr noundef nonnull align 8 dereferenceable(26) %11, i1 noundef zeroext %1, i1 noundef zeroext true) #10
  br label %20

20:                                               ; preds = %10, %16
  %21 = getelementptr inbounds %"class.xercesc_2_7::ChildNode", ptr %11, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !38
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %10, !llvm.loop !78

24:                                               ; preds = %20, %4, %3
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78NodeImpl11setReadOnlyEbb(ptr noundef nonnull align 8 dereferenceable(26), i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_78AttrImpl9normalizeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 align 2 !prof !34 {
  %2 = tail call noundef zeroext i1 @_ZNK11xercesc_2_78NodeImpl14hasStringValueEv(ptr noundef nonnull align 8 dereferenceable(26) %0) #10
  %3 = getelementptr inbounds %"class.xercesc_2_7::AttrImpl", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  %6 = select i1 %2, i1 true, i1 %5
  br i1 %6, label %60, label %7

7:                                                ; preds = %1, %57
  %8 = phi ptr [ %58, %57 ], [ %4, %1 ]
  %9 = getelementptr inbounds %"class.xercesc_2_7::ChildNode", ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !58
  %11 = icmp eq ptr %10, null
  br i1 %11, label %48, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr %8, align 8, !tbaa !35
  %14 = getelementptr inbounds ptr, ptr %13, i64 13
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef zeroext i1 %15(ptr noundef nonnull align 8 dereferenceable(26) %8) #10
  br i1 %16, label %17, label %48

17:                                               ; preds = %12
  %18 = load ptr, ptr %8, align 8, !tbaa !35
  %19 = getelementptr inbounds ptr, ptr %18, i64 7
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef zeroext i1 %20(ptr noundef nonnull align 8 dereferenceable(26) %8) #10
  br i1 %21, label %48, label %22

22:                                               ; preds = %17
  %23 = load ptr, ptr %10, align 8, !tbaa !35
  %24 = getelementptr inbounds ptr, ptr %23, i64 13
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef zeroext i1 %25(ptr noundef nonnull align 8 dereferenceable(26) %10) #10
  br i1 %26, label %27, label %48

27:                                               ; preds = %22
  %28 = load ptr, ptr %10, align 8, !tbaa !35
  %29 = getelementptr inbounds ptr, ptr %28, i64 7
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef zeroext i1 %30(ptr noundef nonnull align 8 dereferenceable(26) %10) #10
  br i1 %31, label %48, label %32

32:                                               ; preds = %27
  %33 = load ptr, ptr %10, align 8, !tbaa !35
  %34 = getelementptr inbounds ptr, ptr %33, i64 49
  %35 = load ptr, ptr %34, align 8
  %36 = tail call noundef nonnull align 8 dereferenceable(8) ptr %35(ptr noundef nonnull align 8 dereferenceable(56) %10) #10
  %37 = load ptr, ptr %8, align 8, !tbaa !35
  %38 = getelementptr inbounds ptr, ptr %37, i64 47
  %39 = load ptr, ptr %38, align 8
  tail call void %39(ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(8) %36) #10
  %40 = load ptr, ptr %0, align 8, !tbaa !35
  %41 = getelementptr inbounds ptr, ptr %40, i64 32
  %42 = load ptr, ptr %41, align 8
  %43 = tail call noundef ptr %42(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %10) #10
  %44 = getelementptr inbounds %"class.xercesc_2_7::RefCountedImpl", ptr %10, i64 0, i32 1
  %45 = load i32, ptr %44, align 8, !tbaa !61
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %32
  tail call void @_ZN11xercesc_2_78NodeImpl8deleteIfEPS0_(ptr noundef nonnull %10) #10
  br label %57

48:                                               ; preds = %27, %22, %17, %12, %7
  %49 = load ptr, ptr %8, align 8, !tbaa !35
  %50 = getelementptr inbounds ptr, ptr %49, i64 11
  %51 = load ptr, ptr %50, align 8
  %52 = tail call noundef zeroext i1 %51(ptr noundef nonnull align 8 dereferenceable(26) %8) #10
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load ptr, ptr %8, align 8, !tbaa !35
  %55 = getelementptr inbounds ptr, ptr %54, i64 38
  %56 = load ptr, ptr %55, align 8
  tail call void %56(ptr noundef nonnull align 8 dereferenceable(26) %8) #10
  br label %57

57:                                               ; preds = %32, %47, %53, %48
  %58 = phi ptr [ %10, %53 ], [ %10, %48 ], [ %8, %47 ], [ %8, %32 ]
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %7, !llvm.loop !79

60:                                               ; preds = %57, %1
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78NodeImpl10referencedEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78NodeImpl12unreferencedEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl18isCDATASectionImplEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl22isDocumentFragmentImplEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl14isDocumentImplEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl18isDocumentTypeImplEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl13isElementImplEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl17isEntityReferenceEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl10isTextImplEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78NodeImpl7changedEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_78NodeImpl7changesEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_78NodeImpl11appendChildEPS0_(ptr noundef nonnull align 8 dereferenceable(26), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_78NodeImpl13getAttributesEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_78NodeImpl14getNextSiblingEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_78NodeImpl16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_78NodeImpl13getParentNodeEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_78NodeImpl18getPreviousSiblingEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_78NodeImpl11getUserDataEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78NodeImpl11setUserDataEPv(ptr noundef nonnull align 8 dereferenceable(26), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl11isSupportedERKNS_9DOMStringES3_(ptr noundef nonnull align 8 dereferenceable(26), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78NodeImpl15getNamespaceURIEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8, ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78NodeImpl9getPrefixEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8, ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78NodeImpl12getLocalNameEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8, ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78NodeImpl9setPrefixERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(26), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl13hasAttributesEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78NodeImpl16setOwnerDocumentEPNS_12DocumentImplE(ptr noundef nonnull align 8 dereferenceable(26), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_78NodeImpl11getDocumentEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #10
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #10
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #12
  resume { ptr, i32 } %8
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !34 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !80
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #10
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #10
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #12
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 comdat align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #10
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { optsize }
attributes #11 = { nounwind }
attributes #12 = { nounwind optsize }
attributes #13 = { noreturn nounwind }
attributes #14 = { noreturn }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

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
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"vtable pointer", !37, i64 0}
!37 = !{!"Simple C++ TBAA"}
!38 = !{!39, !39, i64 0}
!39 = !{!"omnipotent char", !37, i64 0}
!40 = !{!41, !46, i64 24}
!41 = !{!"_ZTSN11xercesc_2_78NodeImplE", !42, i64 0, !45, i64 16, !46, i64 24}
!42 = !{!"_ZTSN11xercesc_2_712NodeListImplE", !43, i64 0}
!43 = !{!"_ZTSN11xercesc_2_714RefCountedImplE", !44, i64 8}
!44 = !{!"int", !39, i64 0}
!45 = !{!"any pointer", !39, i64 0}
!46 = !{!"short", !39, i64 0}
!47 = !{!46, !46, i64 0}
!48 = !{!49, !45, i64 112}
!49 = !{!"_ZTSN11xercesc_2_712DocumentImplE", !50, i64 0, !45, i64 88, !45, i64 96, !45, i64 104, !45, i64 112, !45, i64 120, !45, i64 128, !45, i64 136, !45, i64 144, !44, i64 152, !52, i64 156, !45, i64 160}
!50 = !{!"_ZTSN11xercesc_2_710ParentNodeE", !51, i64 0, !45, i64 48, !45, i64 56, !44, i64 64, !45, i64 72, !44, i64 80}
!51 = !{!"_ZTSN11xercesc_2_79ChildNodeE", !41, i64 0, !45, i64 32, !45, i64 40}
!52 = !{!"bool", !39, i64 0}
!53 = distinct !{!53, !54}
!54 = !{!"llvm.loop.mustprogress"}
!55 = !{!49, !45, i64 160}
!56 = !{!51, !45, i64 32}
!57 = !{!41, !45, i64 16}
!58 = !{!51, !45, i64 40}
!59 = distinct !{!59, !54}
!60 = distinct !{!60, !54}
!61 = !{!43, !44, i64 8}
!62 = distinct !{!62, !54}
!63 = distinct !{!63, !54}
!64 = distinct !{!64, !54}
!65 = distinct !{!65, !54}
!66 = distinct !{!66, !54}
!67 = distinct !{!67, !54}
!68 = !{!49, !52, i64 156}
!69 = !{i8 0, i8 2}
!70 = !{}
!71 = !{!72, !44, i64 12}
!72 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEEE", !52, i64 8, !44, i64 12, !44, i64 16, !45, i64 24, !45, i64 32}
!73 = !{!72, !45, i64 32}
!74 = !{!72, !45, i64 24}
!75 = !{!45, !45, i64 0}
!76 = distinct !{!76, !54}
!77 = distinct !{!77, !54}
!78 = distinct !{!78, !54}
!79 = distinct !{!79, !54}
!80 = !{!81, !45, i64 40}
!81 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !82, i64 8, !45, i64 16, !44, i64 24, !45, i64 32, !45, i64 40}
!82 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !39, i64 0}
