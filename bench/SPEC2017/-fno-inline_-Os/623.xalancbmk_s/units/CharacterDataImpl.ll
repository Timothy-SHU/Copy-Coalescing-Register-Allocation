; ModuleID = 'CharacterDataImpl.cpp'
source_filename = "CharacterDataImpl.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::DOMString" = type { ptr }
%"class.xercesc_2_7::CharacterDataImpl" = type { %"class.xercesc_2_7::ChildNode", %"class.xercesc_2_7::DOMString" }
%"class.xercesc_2_7::ChildNode" = type { %"class.xercesc_2_7::NodeImpl.base", ptr, ptr }
%"class.xercesc_2_7::NodeImpl.base" = type <{ %"class.xercesc_2_7::NodeListImpl.base", [4 x i8], ptr, i16 }>
%"class.xercesc_2_7::NodeListImpl.base" = type { %"class.xercesc_2_7::RefCountedImpl.base" }
%"class.xercesc_2_7::RefCountedImpl.base" = type <{ ptr, i32 }>
%"class.xercesc_2_7::DOM_Node" = type { ptr }
%"class.xercesc_2_7::NodeImpl" = type <{ %"class.xercesc_2_7::NodeListImpl.base", [4 x i8], ptr, i16, [6 x i8] }>
%"class.xercesc_2_7::BaseRefVectorOf" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$_ZNK11xercesc_2_78NodeImpl10isReadOnlyEv = comdat any

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

@_ZTVN11xercesc_2_717CharacterDataImplE = dso_local unnamed_addr constant { [57 x ptr] } { [57 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_717CharacterDataImplE, ptr @_ZN11xercesc_2_717CharacterDataImplD2Ev, ptr @_ZN11xercesc_2_717CharacterDataImplD0Ev, ptr @_ZN11xercesc_2_78NodeImpl10referencedEv, ptr @_ZN11xercesc_2_78NodeImpl12unreferencedEv, ptr @_ZN11xercesc_2_78NodeImpl4itemEj, ptr @_ZN11xercesc_2_78NodeImpl9getLengthEv, ptr @_ZN11xercesc_2_78NodeImpl10isAttrImplEv, ptr @_ZN11xercesc_2_78NodeImpl18isCDATASectionImplEv, ptr @_ZN11xercesc_2_78NodeImpl22isDocumentFragmentImplEv, ptr @_ZN11xercesc_2_78NodeImpl14isDocumentImplEv, ptr @_ZN11xercesc_2_78NodeImpl18isDocumentTypeImplEv, ptr @_ZN11xercesc_2_78NodeImpl13isElementImplEv, ptr @_ZN11xercesc_2_78NodeImpl17isEntityReferenceEv, ptr @_ZN11xercesc_2_78NodeImpl10isTextImplEv, ptr @_ZN11xercesc_2_78NodeImpl7changedEv, ptr @_ZN11xercesc_2_78NodeImpl7changesEv, ptr @_ZN11xercesc_2_78NodeImpl11appendChildEPS0_, ptr @__cxa_pure_virtual, ptr @_ZN11xercesc_2_78NodeImpl13getAttributesEv, ptr @_ZN11xercesc_2_78NodeImpl13getChildNodesEv, ptr @_ZN11xercesc_2_78NodeImpl13getFirstChildEv, ptr @_ZN11xercesc_2_78NodeImpl12getLastChildEv, ptr @_ZN11xercesc_2_79ChildNode14getNextSiblingEv, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN11xercesc_2_717CharacterDataImpl12getNodeValueEv, ptr @_ZN11xercesc_2_78NodeImpl16getOwnerDocumentEv, ptr @_ZN11xercesc_2_79ChildNode13getParentNodeEv, ptr @_ZN11xercesc_2_79ChildNode18getPreviousSiblingEv, ptr @_ZN11xercesc_2_78NodeImpl11getUserDataEv, ptr @_ZN11xercesc_2_78NodeImpl13hasChildNodesEv, ptr @_ZN11xercesc_2_78NodeImpl12insertBeforeEPS0_S1_, ptr @_ZN11xercesc_2_78NodeImpl11removeChildEPS0_, ptr @_ZN11xercesc_2_78NodeImpl12replaceChildEPS0_S1_, ptr @_ZN11xercesc_2_717CharacterDataImpl12setNodeValueERKNS_9DOMStringE, ptr @_ZN11xercesc_2_78NodeImpl11setReadOnlyEbb, ptr @_ZN11xercesc_2_78NodeImpl11setUserDataEPv, ptr @_ZN11xercesc_2_78NodeImpl8toStringEv, ptr @_ZN11xercesc_2_78NodeImpl9normalizeEv, ptr @_ZN11xercesc_2_78NodeImpl11isSupportedERKNS_9DOMStringES3_, ptr @_ZN11xercesc_2_78NodeImpl15getNamespaceURIEv, ptr @_ZN11xercesc_2_78NodeImpl9getPrefixEv, ptr @_ZN11xercesc_2_78NodeImpl12getLocalNameEv, ptr @_ZN11xercesc_2_78NodeImpl9setPrefixERKNS_9DOMStringE, ptr @_ZN11xercesc_2_78NodeImpl13hasAttributesEv, ptr @_ZN11xercesc_2_78NodeImpl16setOwnerDocumentEPNS_12DocumentImplE, ptr @_ZN11xercesc_2_78NodeImpl11getDocumentEv, ptr @_ZN11xercesc_2_717CharacterDataImpl10appendDataERKNS_9DOMStringE, ptr @_ZN11xercesc_2_717CharacterDataImpl10deleteDataEjj, ptr @_ZN11xercesc_2_717CharacterDataImpl7getDataEv, ptr @_ZN11xercesc_2_717CharacterDataImpl17getCharDataLengthEv, ptr @_ZN11xercesc_2_717CharacterDataImpl10insertDataEjRKNS_9DOMStringE, ptr @_ZN11xercesc_2_717CharacterDataImpl11replaceDataEjjRKNS_9DOMStringE, ptr @_ZN11xercesc_2_717CharacterDataImpl7setDataERKNS_9DOMStringE, ptr @_ZN11xercesc_2_717CharacterDataImpl13substringDataEjj] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_717CharacterDataImplE = dso_local constant [35 x i8] c"N11xercesc_2_717CharacterDataImplE\00", align 1
@_ZTIN11xercesc_2_79ChildNodeE = external constant ptr
@_ZTIN11xercesc_2_717CharacterDataImplE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_717CharacterDataImplE, ptr @_ZTIN11xercesc_2_79ChildNodeE }, align 8
@_ZTIN11xercesc_2_716DOM_DOMExceptionE = external constant ptr
@_ZN11xercesc_2_78NodeImpl8READONLYE = external local_unnamed_addr constant i16, align 2
@.str = private unnamed_addr constant [33 x i8] c"./xercesc/util/BaseRefVectorOf.c\00", align 1
@_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant [48 x i8] c"N11xercesc_2_730ArrayIndexOutOfBoundsExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE = external constant [0 x i16], align 2

@_ZN11xercesc_2_717CharacterDataImplD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_717CharacterDataImplD2Ev

; Function Attrs: mustprogress noinline noreturn nounwind optsize memory(inaccessiblemem: write) uwtable
define dso_local void @_ZN11xercesc_2_717CharacterDataImplD0Ev(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #0 align 2 {
  tail call void @llvm.trap() #8
  unreachable
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78NodeImpl10referencedEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78NodeImpl12unreferencedEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_78NodeImpl4itemEj(ptr noundef nonnull align 8 dereferenceable(26), i32 noundef) unnamed_addr #1

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_78NodeImpl9getLengthEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl10isAttrImplEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

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

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_78NodeImpl13getAttributesEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_78NodeImpl13getChildNodesEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_78NodeImpl13getFirstChildEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_78NodeImpl12getLastChildEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_79ChildNode14getNextSiblingEv(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717CharacterDataImpl12getNodeValueEv(ptr dead_on_unwind noalias nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #2 align 2 !prof !35 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::CharacterDataImpl", ptr %1, i64 0, i32 1
  tail call void @_ZN11xercesc_2_79DOMStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #9
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_78NodeImpl16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_79ChildNode13getParentNodeEv(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_79ChildNode18getPreviousSiblingEv(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_78NodeImpl11getUserDataEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl13hasChildNodesEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_78NodeImpl12insertBeforeEPS0_S1_(ptr noundef nonnull align 8 dereferenceable(26), ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_78NodeImpl11removeChildEPS0_(ptr noundef nonnull align 8 dereferenceable(26), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_78NodeImpl12replaceChildEPS0_S1_(ptr noundef nonnull align 8 dereferenceable(26), ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717CharacterDataImpl12setNodeValueERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  %4 = alloca %"class.xercesc_2_7::DOMString", align 8
  %5 = tail call noundef zeroext i1 @_ZNK11xercesc_2_78NodeImpl10isReadOnlyEv(ptr noundef nonnull align 8 dereferenceable(26) %0) #9
  br i1 %5, label %6, label %18

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 24) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 0) #9
          to label %8 unwind label %12

8:                                                ; preds = %6
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %7, i16 noundef signext 7, ptr noundef nonnull align 8 dereferenceable(8) %3) #9
          to label %11 unwind label %9

9:                                                ; preds = %8
  %10 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  br label %16

11:                                               ; preds = %8
  invoke void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #12
          to label %50 unwind label %14

12:                                               ; preds = %6
  %13 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  br label %16

14:                                               ; preds = %11
  %15 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  br label %48

16:                                               ; preds = %9, %12
  %17 = phi { ptr, i32 } [ %13, %12 ], [ %10, %9 ]
  call void @__cxa_free_exception(ptr %7) #10
  br label %48

18:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  call void @_ZNK11xercesc_2_79DOMString5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  %19 = getelementptr inbounds %"class.xercesc_2_7::CharacterDataImpl", ptr %0, i64 0, i32 1
  %20 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull align 8 dereferenceable(8) %4) #9
          to label %21 unwind label %40

21:                                               ; preds = %18
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  %22 = load ptr, ptr %0, align 8, !tbaa !36
  %23 = getelementptr inbounds ptr, ptr %22, i64 26
  %24 = load ptr, ptr %23, align 8
  %25 = call noundef ptr %24(ptr noundef nonnull align 8 dereferenceable(26) %0) #9
  %26 = icmp eq ptr %25, null
  br i1 %26, label %47, label %27

27:                                               ; preds = %21
  %28 = load ptr, ptr %0, align 8, !tbaa !36
  %29 = getelementptr inbounds ptr, ptr %28, i64 26
  %30 = load ptr, ptr %29, align 8
  %31 = call noundef ptr %30(ptr noundef nonnull align 8 dereferenceable(26) %0) #9
  %32 = load ptr, ptr %31, align 8, !tbaa !36
  %33 = getelementptr inbounds ptr, ptr %32, i64 65
  %34 = load ptr, ptr %33, align 8
  %35 = call noundef ptr %34(ptr noundef nonnull align 8 dereferenceable(168) %31) #9
  %36 = icmp eq ptr %35, null
  br i1 %36, label %47, label %37

37:                                               ; preds = %27
  %38 = call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_9RangeImplEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %35) #9
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %47, label %42

40:                                               ; preds = %18
  %41 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  br label %48

42:                                               ; preds = %37, %42
  %43 = phi i32 [ %45, %42 ], [ 0, %37 ]
  %44 = call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %35, i32 noundef %43) #9
  call void @_ZN11xercesc_2_79RangeImpl19receiveReplacedTextEPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(72) %44, ptr noundef nonnull %0) #9
  %45 = add nuw i32 %43, 1
  %46 = icmp eq i32 %45, %38
  br i1 %46, label %47, label %42, !llvm.loop !39

47:                                               ; preds = %42, %27, %37, %21
  ret void

48:                                               ; preds = %14, %16, %40
  %49 = phi { ptr, i32 } [ %17, %16 ], [ %15, %14 ], [ %41, %40 ]
  resume { ptr, i32 } %49

50:                                               ; preds = %11
  unreachable
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78NodeImpl11setReadOnlyEbb(ptr noundef nonnull align 8 dereferenceable(26), i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78NodeImpl11setUserDataEPv(ptr noundef nonnull align 8 dereferenceable(26), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78NodeImpl8toStringEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8, ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78NodeImpl9normalizeEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

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
define dso_local void @_ZN11xercesc_2_717CharacterDataImpl10appendDataERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_78NodeImpl10isReadOnlyEv(ptr noundef nonnull align 8 dereferenceable(26) %0) #9
  br i1 %4, label %5, label %17

5:                                                ; preds = %2
  %6 = tail call ptr @__cxa_allocate_exception(i64 24) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 0) #9
          to label %7 unwind label %11

7:                                                ; preds = %5
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %6, i16 noundef signext 7, ptr noundef nonnull align 8 dereferenceable(8) %3) #9
          to label %10 unwind label %8

8:                                                ; preds = %7
  %9 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  br label %15

10:                                               ; preds = %7
  invoke void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #12
          to label %21 unwind label %13

11:                                               ; preds = %5
  %12 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  br label %15

13:                                               ; preds = %10
  %14 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  br label %19

15:                                               ; preds = %8, %11
  %16 = phi { ptr, i32 } [ %12, %11 ], [ %9, %8 ]
  call void @__cxa_free_exception(ptr %6) #10
  br label %19

17:                                               ; preds = %2
  %18 = getelementptr inbounds %"class.xercesc_2_7::CharacterDataImpl", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_79DOMString10appendDataERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  ret void

19:                                               ; preds = %13, %15
  %20 = phi { ptr, i32 } [ %14, %13 ], [ %16, %15 ]
  resume { ptr, i32 } %20

21:                                               ; preds = %10
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717CharacterDataImpl10deleteDataEjj(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %4 = alloca %"class.xercesc_2_7::DOMString", align 8
  %5 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %6 = tail call noundef zeroext i1 @_ZNK11xercesc_2_78NodeImpl10isReadOnlyEv(ptr noundef nonnull align 8 dereferenceable(26) %0) #9
  br i1 %6, label %7, label %19

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 24) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 0) #9
          to label %9 unwind label %13

9:                                                ; preds = %7
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %8, i16 noundef signext 7, ptr noundef nonnull align 8 dereferenceable(8) %4) #9
          to label %12 unwind label %10

10:                                               ; preds = %9
  %11 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  br label %17

12:                                               ; preds = %9
  invoke void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #12
          to label %51 unwind label %15

13:                                               ; preds = %7
  %14 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  br label %17

15:                                               ; preds = %12
  %16 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  br label %49

17:                                               ; preds = %10, %13
  %18 = phi { ptr, i32 } [ %14, %13 ], [ %11, %10 ]
  call void @__cxa_free_exception(ptr %8) #10
  br label %49

19:                                               ; preds = %3
  %20 = getelementptr inbounds %"class.xercesc_2_7::CharacterDataImpl", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_79DOMString10deleteDataEjj(ptr noundef nonnull align 8 dereferenceable(8) %20, i32 noundef %1, i32 noundef %2) #9
  %21 = load ptr, ptr %0, align 8, !tbaa !36
  %22 = getelementptr inbounds ptr, ptr %21, i64 26
  %23 = load ptr, ptr %22, align 8
  %24 = tail call noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(26) %0) #9
  %25 = icmp eq ptr %24, null
  br i1 %25, label %48, label %26

26:                                               ; preds = %19
  %27 = load ptr, ptr %0, align 8, !tbaa !36
  %28 = getelementptr inbounds ptr, ptr %27, i64 26
  %29 = load ptr, ptr %28, align 8
  %30 = tail call noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(26) %0) #9
  %31 = load ptr, ptr %30, align 8, !tbaa !36
  %32 = getelementptr inbounds ptr, ptr %31, i64 65
  %33 = load ptr, ptr %32, align 8
  %34 = tail call noundef ptr %33(ptr noundef nonnull align 8 dereferenceable(168) %30) #9
  %35 = icmp eq ptr %34, null
  br i1 %35, label %48, label %36

36:                                               ; preds = %26
  %37 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_9RangeImplEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %34) #9
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %36, %43
  %40 = phi i32 [ %44, %43 ], [ 0, %36 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10
  call void @_ZN11xercesc_2_78DOM_NodeC1EPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %0) #9
  %41 = invoke noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %34, i32 noundef %40) #9
          to label %42 unwind label %46

42:                                               ; preds = %39
  invoke void @_ZN11xercesc_2_79RangeImpl25updateRangeForDeletedTextERNS_8DOM_NodeEji(ptr noundef nonnull align 8 dereferenceable(72) %41, ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %1, i32 noundef %2) #9
          to label %43 unwind label %46

43:                                               ; preds = %42
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  %44 = add nuw i32 %40, 1
  %45 = icmp eq i32 %44, %37
  br i1 %45, label %48, label %39, !llvm.loop !41

46:                                               ; preds = %42, %39
  %47 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  br label %49

48:                                               ; preds = %43, %26, %36, %19
  ret void

49:                                               ; preds = %15, %17, %46
  %50 = phi { ptr, i32 } [ %18, %17 ], [ %16, %15 ], [ %47, %46 ]
  resume { ptr, i32 } %50

51:                                               ; preds = %12
  unreachable
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_717CharacterDataImpl7getDataEv(ptr noundef nonnull readnone align 8 dereferenceable(56) %0) unnamed_addr #3 align 2 !prof !35 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::CharacterDataImpl", ptr %0, i64 0, i32 1
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN11xercesc_2_717CharacterDataImpl17getCharDataLengthEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #2 align 2 !prof !35 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::CharacterDataImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef i32 @_ZNK11xercesc_2_79DOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #9
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717CharacterDataImpl10insertDataEjRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %4 = alloca %"class.xercesc_2_7::DOMString", align 8
  %5 = tail call noundef zeroext i1 @_ZNK11xercesc_2_78NodeImpl10isReadOnlyEv(ptr noundef nonnull align 8 dereferenceable(26) %0) #9
  br i1 %5, label %6, label %18

6:                                                ; preds = %3
  %7 = tail call ptr @__cxa_allocate_exception(i64 24) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 0) #9
          to label %8 unwind label %12

8:                                                ; preds = %6
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %7, i16 noundef signext 7, ptr noundef nonnull align 8 dereferenceable(8) %4) #9
          to label %11 unwind label %9

9:                                                ; preds = %8
  %10 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  br label %16

11:                                               ; preds = %8
  invoke void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #12
          to label %22 unwind label %14

12:                                               ; preds = %6
  %13 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  br label %16

14:                                               ; preds = %11
  %15 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  br label %20

16:                                               ; preds = %9, %12
  %17 = phi { ptr, i32 } [ %13, %12 ], [ %10, %9 ]
  call void @__cxa_free_exception(ptr %7) #10
  br label %20

18:                                               ; preds = %3
  %19 = getelementptr inbounds %"class.xercesc_2_7::CharacterDataImpl", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_79DOMString10insertDataEjRKS0_(ptr noundef nonnull align 8 dereferenceable(8) %19, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #9
  ret void

20:                                               ; preds = %14, %16
  %21 = phi { ptr, i32 } [ %15, %14 ], [ %17, %16 ]
  resume { ptr, i32 } %21

22:                                               ; preds = %11
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717CharacterDataImpl11replaceDataEjjRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %5 = alloca %"class.xercesc_2_7::DOMString", align 8
  %6 = tail call noundef zeroext i1 @_ZNK11xercesc_2_78NodeImpl10isReadOnlyEv(ptr noundef nonnull align 8 dereferenceable(26) %0) #9
  br i1 %6, label %7, label %19

7:                                                ; preds = %4
  %8 = tail call ptr @__cxa_allocate_exception(i64 24) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef 0) #9
          to label %9 unwind label %13

9:                                                ; preds = %7
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %8, i16 noundef signext 7, ptr noundef nonnull align 8 dereferenceable(8) %5) #9
          to label %12 unwind label %10

10:                                               ; preds = %9
  %11 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  br label %17

12:                                               ; preds = %9
  invoke void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #12
          to label %28 unwind label %15

13:                                               ; preds = %7
  %14 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  br label %17

15:                                               ; preds = %12
  %16 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  br label %26

17:                                               ; preds = %10, %13
  %18 = phi { ptr, i32 } [ %14, %13 ], [ %11, %10 ]
  call void @__cxa_free_exception(ptr %8) #10
  br label %26

19:                                               ; preds = %4
  %20 = load ptr, ptr %0, align 8, !tbaa !36
  %21 = getelementptr inbounds ptr, ptr %20, i64 48
  %22 = load ptr, ptr %21, align 8
  tail call void %22(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1, i32 noundef %2) #9
  %23 = load ptr, ptr %0, align 8, !tbaa !36
  %24 = getelementptr inbounds ptr, ptr %23, i64 51
  %25 = load ptr, ptr %24, align 8
  tail call void %25(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %3) #9
  ret void

26:                                               ; preds = %15, %17
  %27 = phi { ptr, i32 } [ %16, %15 ], [ %18, %17 ]
  resume { ptr, i32 } %27

28:                                               ; preds = %12
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717CharacterDataImpl7setDataERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  %4 = alloca %"class.xercesc_2_7::DOMString", align 8
  %5 = tail call noundef zeroext i1 @_ZNK11xercesc_2_78NodeImpl10isReadOnlyEv(ptr noundef nonnull align 8 dereferenceable(26) %0) #9
  br i1 %5, label %6, label %18

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 24) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 0) #9
          to label %8 unwind label %12

8:                                                ; preds = %6
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %7, i16 noundef signext 7, ptr noundef nonnull align 8 dereferenceable(8) %3) #9
          to label %11 unwind label %9

9:                                                ; preds = %8
  %10 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  br label %16

11:                                               ; preds = %8
  invoke void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #12
          to label %26 unwind label %14

12:                                               ; preds = %6
  %13 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  br label %16

14:                                               ; preds = %11
  %15 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  br label %24

16:                                               ; preds = %9, %12
  %17 = phi { ptr, i32 } [ %13, %12 ], [ %10, %9 ]
  call void @__cxa_free_exception(ptr %7) #10
  br label %24

18:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  call void @_ZNK11xercesc_2_79DOMString5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  %19 = getelementptr inbounds %"class.xercesc_2_7::CharacterDataImpl", ptr %0, i64 0, i32 1
  %20 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull align 8 dereferenceable(8) %4) #9
          to label %21 unwind label %22

21:                                               ; preds = %18
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  ret void

22:                                               ; preds = %18
  %23 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  br label %24

24:                                               ; preds = %14, %16, %22
  %25 = phi { ptr, i32 } [ %17, %16 ], [ %15, %14 ], [ %23, %22 ]
  resume { ptr, i32 } %25

26:                                               ; preds = %11
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717CharacterDataImpl13substringDataEjj(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOMString") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #2 align 2 !prof !35 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::CharacterDataImpl", ptr %1, i64 0, i32 1
  tail call void @_ZNK11xercesc_2_79DOMString13substringDataEjj(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %2, i32 noundef %3) #9
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717CharacterDataImplC2EPNS_12DocumentImplERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %4 = alloca %"class.xercesc_2_7::DOMString", align 8
  tail call void @_ZN11xercesc_2_79ChildNodeC2EPNS_12DocumentImplE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) #9
  store ptr getelementptr inbounds ({ [57 x ptr] }, ptr @_ZTVN11xercesc_2_717CharacterDataImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !36
  %5 = getelementptr inbounds %"class.xercesc_2_7::CharacterDataImpl", ptr %0, i64 0, i32 1
  invoke void @_ZN11xercesc_2_79DOMStringC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #9
          to label %6 unwind label %10

6:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  invoke void @_ZNK11xercesc_2_79DOMString5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %2) #9
          to label %7 unwind label %12

7:                                                ; preds = %6
  %8 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4) #9
          to label %9 unwind label %14

9:                                                ; preds = %7
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  ret void

10:                                               ; preds = %3
  %11 = landingpad { ptr, i32 }
          cleanup
  br label %18

12:                                               ; preds = %6
  %13 = landingpad { ptr, i32 }
          cleanup
  br label %16

14:                                               ; preds = %7
  %15 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #11
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi { ptr, i32 } [ %15, %14 ], [ %13, %12 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #11
  br label %18

18:                                               ; preds = %16, %10
  %19 = phi { ptr, i32 } [ %17, %16 ], [ %11, %10 ]
  call void @_ZN11xercesc_2_79ChildNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #11
  resume { ptr, i32 } %19
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79ChildNodeC2EPNS_12DocumentImplE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79DOMStringC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: optsize
declare void @_ZNK11xercesc_2_79DOMString5cloneEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_79ChildNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717CharacterDataImplC2ERKS0_b(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %4 = alloca %"class.xercesc_2_7::DOMString", align 8
  tail call void @_ZN11xercesc_2_79ChildNodeC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #9
  store ptr getelementptr inbounds ({ [57 x ptr] }, ptr @_ZTVN11xercesc_2_717CharacterDataImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !36
  %5 = getelementptr inbounds %"class.xercesc_2_7::CharacterDataImpl", ptr %0, i64 0, i32 1
  invoke void @_ZN11xercesc_2_79DOMStringC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #9
          to label %6 unwind label %11

6:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  %7 = getelementptr inbounds %"class.xercesc_2_7::CharacterDataImpl", ptr %1, i64 0, i32 1
  invoke void @_ZNK11xercesc_2_79DOMString5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %7) #9
          to label %8 unwind label %13

8:                                                ; preds = %6
  %9 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4) #9
          to label %10 unwind label %15

10:                                               ; preds = %8
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  ret void

11:                                               ; preds = %3
  %12 = landingpad { ptr, i32 }
          cleanup
  br label %19

13:                                               ; preds = %6
  %14 = landingpad { ptr, i32 }
          cleanup
  br label %17

15:                                               ; preds = %8
  %16 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #11
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi { ptr, i32 } [ %16, %15 ], [ %14, %13 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #11
  br label %19

19:                                               ; preds = %17, %11
  %20 = phi { ptr, i32 } [ %18, %17 ], [ %12, %11 ]
  call void @_ZN11xercesc_2_79ChildNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #11
  resume { ptr, i32 } %20
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79ChildNodeC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_717CharacterDataImplD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #6 align 2 !prof !35 {
  store ptr getelementptr inbounds ({ [57 x ptr] }, ptr @_ZTVN11xercesc_2_717CharacterDataImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !36
  %2 = getelementptr inbounds %"class.xercesc_2_7::CharacterDataImpl", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #11
  tail call void @_ZN11xercesc_2_79ChildNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #11
  ret void
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #7

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79DOMStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_78NodeImpl10isReadOnlyEv(ptr noundef nonnull align 8 dereferenceable(26) %0) local_unnamed_addr #6 comdat align 2 !prof !35 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %0, i64 0, i32 3
  %3 = load i16, ptr %2, align 8, !tbaa !42
  %4 = load i16, ptr @_ZN11xercesc_2_78NodeImpl8READONLYE, align 2, !tbaa !50
  %5 = and i16 %4, %3
  %6 = icmp ne i16 %5, 0
  ret i1 %6
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24), i16 noundef signext, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #5

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_9RangeImplEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #6 comdat align 2 !prof !35 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !51
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !51
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #10
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !54
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 249, i32 noundef 116, ptr noundef %9) #9
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #12
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #10
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !55
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !56
  ret ptr %18
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79RangeImpl19receiveReplacedTextEPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #9
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !36
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #9
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
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #11
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 !prof !35 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !57
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #9
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #9
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
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #2 comdat align 2 !prof !35 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #9
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !36
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79DOMString10appendDataERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79DOMString10deleteDataEjj(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78DOM_NodeC1EPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79RangeImpl25updateRangeForDeletedTextERNS_8DOM_NodeEji(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: optsize
declare noundef i32 @_ZNK11xercesc_2_79DOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79DOMString10insertDataEjRKS0_(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK11xercesc_2_79DOMString13substringDataEjj(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { mustprogress noinline noreturn nounwind optsize memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #8 = { noreturn nounwind }
attributes #9 = { optsize }
attributes #10 = { nounwind }
attributes #11 = { nounwind optsize }
attributes #12 = { noreturn }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

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
!34 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!35 = !{!"function_entry_count", i64 0}
!36 = !{!37, !37, i64 0}
!37 = !{!"vtable pointer", !38, i64 0}
!38 = !{!"Simple C++ TBAA"}
!39 = distinct !{!39, !40}
!40 = !{!"llvm.loop.mustprogress"}
!41 = distinct !{!41, !40}
!42 = !{!43, !49, i64 24}
!43 = !{!"_ZTSN11xercesc_2_78NodeImplE", !44, i64 0, !48, i64 16, !49, i64 24}
!44 = !{!"_ZTSN11xercesc_2_712NodeListImplE", !45, i64 0}
!45 = !{!"_ZTSN11xercesc_2_714RefCountedImplE", !46, i64 8}
!46 = !{!"int", !47, i64 0}
!47 = !{!"omnipotent char", !38, i64 0}
!48 = !{!"any pointer", !47, i64 0}
!49 = !{!"short", !47, i64 0}
!50 = !{!49, !49, i64 0}
!51 = !{!52, !46, i64 12}
!52 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEEE", !53, i64 8, !46, i64 12, !46, i64 16, !48, i64 24, !48, i64 32}
!53 = !{!"bool", !47, i64 0}
!54 = !{!52, !48, i64 32}
!55 = !{!52, !48, i64 24}
!56 = !{!48, !48, i64 0}
!57 = !{!58, !48, i64 40}
!58 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !59, i64 8, !48, i64 16, !46, i64 24, !48, i64 32, !48, i64 40}
!59 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !47, i64 0}
