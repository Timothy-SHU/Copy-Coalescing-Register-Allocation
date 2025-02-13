; ModuleID = 'TextImpl.cpp'
source_filename = "TextImpl.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XMLRegisterCleanup" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::DocumentImpl" = type { %"class.xercesc_2_7::ParentNode.base", ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, ptr }
%"class.xercesc_2_7::ParentNode.base" = type <{ %"class.xercesc_2_7::ChildNode", ptr, ptr, i32, [4 x i8], ptr, i32 }>
%"class.xercesc_2_7::ChildNode" = type { %"class.xercesc_2_7::NodeImpl.base", ptr, ptr }
%"class.xercesc_2_7::NodeImpl.base" = type <{ %"class.xercesc_2_7::NodeListImpl.base", [4 x i8], ptr, i16 }>
%"class.xercesc_2_7::NodeListImpl.base" = type { %"class.xercesc_2_7::RefCountedImpl.base" }
%"class.xercesc_2_7::RefCountedImpl.base" = type <{ ptr, i32 }>
%"class.xercesc_2_7::DOMString" = type { ptr }
%"class.xercesc_2_7::CharacterDataImpl" = type { %"class.xercesc_2_7::ChildNode", %"class.xercesc_2_7::DOMString" }
%"class.xercesc_2_7::NodeImpl" = type <{ %"class.xercesc_2_7::NodeListImpl.base", [4 x i8], ptr, i16, [6 x i8] }>
%"class.xercesc_2_7::BaseRefVectorOf" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$_ZNK11xercesc_2_712DocumentImpl16getMemoryManagerEv = comdat any

$_ZNK11xercesc_2_78NodeImpl10isReadOnlyEv = comdat any

$_ZNK11xercesc_2_715BaseRefVectorOfINS_9RangeImplEE4sizeEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEE9elementAtEj = comdat any

$_ZNK11xercesc_2_78NodeImpl19ignorableWhitespaceEv = comdat any

$_ZN11xercesc_2_78NodeImpl19ignorableWhitespaceEb = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_ = comdat any

$_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

@_ZN11xercesc_2_7L12gTextCleanupE = internal global %"class.xercesc_2_7::XMLRegisterCleanup" zeroinitializer, align 8
@_ZTVN11xercesc_2_78TextImplE = dso_local unnamed_addr constant { [60 x ptr] } { [60 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_78TextImplE, ptr @_ZN11xercesc_2_78TextImplD2Ev, ptr @_ZN11xercesc_2_78TextImplD0Ev, ptr @_ZN11xercesc_2_78NodeImpl10referencedEv, ptr @_ZN11xercesc_2_78NodeImpl12unreferencedEv, ptr @_ZN11xercesc_2_78NodeImpl4itemEj, ptr @_ZN11xercesc_2_78NodeImpl9getLengthEv, ptr @_ZN11xercesc_2_78NodeImpl10isAttrImplEv, ptr @_ZN11xercesc_2_78NodeImpl18isCDATASectionImplEv, ptr @_ZN11xercesc_2_78NodeImpl22isDocumentFragmentImplEv, ptr @_ZN11xercesc_2_78NodeImpl14isDocumentImplEv, ptr @_ZN11xercesc_2_78NodeImpl18isDocumentTypeImplEv, ptr @_ZN11xercesc_2_78NodeImpl13isElementImplEv, ptr @_ZN11xercesc_2_78NodeImpl17isEntityReferenceEv, ptr @_ZN11xercesc_2_78TextImpl10isTextImplEv, ptr @_ZN11xercesc_2_78NodeImpl7changedEv, ptr @_ZN11xercesc_2_78NodeImpl7changesEv, ptr @_ZN11xercesc_2_78NodeImpl11appendChildEPS0_, ptr @_ZN11xercesc_2_78TextImpl9cloneNodeEb, ptr @_ZN11xercesc_2_78NodeImpl13getAttributesEv, ptr @_ZN11xercesc_2_78NodeImpl13getChildNodesEv, ptr @_ZN11xercesc_2_78NodeImpl13getFirstChildEv, ptr @_ZN11xercesc_2_78NodeImpl12getLastChildEv, ptr @_ZN11xercesc_2_79ChildNode14getNextSiblingEv, ptr @_ZN11xercesc_2_78TextImpl11getNodeNameEv, ptr @_ZN11xercesc_2_78TextImpl11getNodeTypeEv, ptr @_ZN11xercesc_2_717CharacterDataImpl12getNodeValueEv, ptr @_ZN11xercesc_2_78NodeImpl16getOwnerDocumentEv, ptr @_ZN11xercesc_2_79ChildNode13getParentNodeEv, ptr @_ZN11xercesc_2_79ChildNode18getPreviousSiblingEv, ptr @_ZN11xercesc_2_78NodeImpl11getUserDataEv, ptr @_ZN11xercesc_2_78NodeImpl13hasChildNodesEv, ptr @_ZN11xercesc_2_78NodeImpl12insertBeforeEPS0_S1_, ptr @_ZN11xercesc_2_78NodeImpl11removeChildEPS0_, ptr @_ZN11xercesc_2_78NodeImpl12replaceChildEPS0_S1_, ptr @_ZN11xercesc_2_717CharacterDataImpl12setNodeValueERKNS_9DOMStringE, ptr @_ZN11xercesc_2_78NodeImpl11setReadOnlyEbb, ptr @_ZN11xercesc_2_78NodeImpl11setUserDataEPv, ptr @_ZN11xercesc_2_78NodeImpl8toStringEv, ptr @_ZN11xercesc_2_78NodeImpl9normalizeEv, ptr @_ZN11xercesc_2_78NodeImpl11isSupportedERKNS_9DOMStringES3_, ptr @_ZN11xercesc_2_78NodeImpl15getNamespaceURIEv, ptr @_ZN11xercesc_2_78NodeImpl9getPrefixEv, ptr @_ZN11xercesc_2_78NodeImpl12getLocalNameEv, ptr @_ZN11xercesc_2_78NodeImpl9setPrefixERKNS_9DOMStringE, ptr @_ZN11xercesc_2_78NodeImpl13hasAttributesEv, ptr @_ZN11xercesc_2_78NodeImpl16setOwnerDocumentEPNS_12DocumentImplE, ptr @_ZN11xercesc_2_78NodeImpl11getDocumentEv, ptr @_ZN11xercesc_2_717CharacterDataImpl10appendDataERKNS_9DOMStringE, ptr @_ZN11xercesc_2_717CharacterDataImpl10deleteDataEjj, ptr @_ZN11xercesc_2_717CharacterDataImpl7getDataEv, ptr @_ZN11xercesc_2_717CharacterDataImpl17getCharDataLengthEv, ptr @_ZN11xercesc_2_717CharacterDataImpl10insertDataEjRKNS_9DOMStringE, ptr @_ZN11xercesc_2_717CharacterDataImpl11replaceDataEjjRKNS_9DOMStringE, ptr @_ZN11xercesc_2_717CharacterDataImpl7setDataERKNS_9DOMStringE, ptr @_ZN11xercesc_2_717CharacterDataImpl13substringDataEjj, ptr @_ZN11xercesc_2_78TextImpl9splitTextEj, ptr @_ZN11xercesc_2_78TextImpl21isIgnorableWhitespaceEv, ptr @_ZN11xercesc_2_78TextImpl22setIgnorableWhitespaceEb] }, align 8
@.str = private unnamed_addr constant [6 x i8] c"#text\00", align 1
@_ZN11xercesc_2_7L5gTextE = internal global ptr null, align 8
@_ZTIN11xercesc_2_716DOM_DOMExceptionE = external constant ptr
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_78TextImplE = dso_local constant [25 x i8] c"N11xercesc_2_78TextImplE\00", align 1
@_ZTIN11xercesc_2_717CharacterDataImplE = external constant ptr
@_ZTIN11xercesc_2_78TextImplE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_78TextImplE, ptr @_ZTIN11xercesc_2_717CharacterDataImplE }, align 8
@_ZN11xercesc_2_78NodeImpl8READONLYE = external local_unnamed_addr constant i16, align 2
@_ZN11xercesc_2_78NodeImpl11IGNORABLEWSE = external local_unnamed_addr constant i16, align 2
@.str.1 = private unnamed_addr constant [33 x i8] c"./xercesc/util/BaseRefVectorOf.c\00", align 1
@_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant [48 x i8] c"N11xercesc_2_730ArrayIndexOutOfBoundsExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE = external constant [0 x i16], align 2
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_TextImpl.cpp, ptr null }]

@_ZN11xercesc_2_78TextImplC1EPNS_12DocumentImplERKNS_9DOMStringE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xercesc_2_78TextImplC2EPNS_12DocumentImplERKNS_9DOMStringE
@_ZN11xercesc_2_78TextImplC1ERKS0_b = dso_local unnamed_addr alias void (ptr, ptr, i1), ptr @_ZN11xercesc_2_78TextImplC2ERKS0_b
@_ZN11xercesc_2_78TextImplD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_78TextImplD2Ev

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L12gTextCleanupE) #7
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_78TextImplC2EPNS_12DocumentImplERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #2 align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_717CharacterDataImplC2EPNS_12DocumentImplERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #7
  store ptr getelementptr inbounds ({ [60 x ptr] }, ptr @_ZTVN11xercesc_2_78TextImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717CharacterDataImplC2EPNS_12DocumentImplERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_78TextImplC2ERKS0_b(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2) unnamed_addr #2 align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_717CharacterDataImplC2ERKS0_b(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2) #7
  store ptr getelementptr inbounds ({ [60 x ptr] }, ptr @_ZTVN11xercesc_2_78TextImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717CharacterDataImplC2ERKS0_b(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(56), i1 noundef zeroext) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_717CharacterDataImplD2Ev(ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_78TextImplD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #4 align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_717CharacterDataImplD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) #8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_78TextImplD0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #4 align 2 {
  tail call void @_ZN11xercesc_2_78TextImplD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) #8
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #8
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_78TextImpl10isTextImplEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #5 align 2 !prof !34 {
  ret i1 true
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_78TextImpl9cloneNodeEb(ptr noundef nonnull align 8 dereferenceable(56) %0, i1 noundef zeroext %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = getelementptr inbounds ptr, ptr %3, i64 26
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(26) %0) #7
  %7 = tail call noundef ptr @_ZNK11xercesc_2_712DocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(168) %6) #7
  %8 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %7) #7
  invoke void @_ZN11xercesc_2_78TextImplC2ERKS0_b(ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(56) %0, i1 noundef zeroext %1) #7
          to label %9 unwind label %10

9:                                                ; preds = %2
  ret ptr %8

10:                                               ; preds = %2
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %8, ptr noundef %7) #8
  resume { ptr, i32 } %11
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_712DocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(168) %0) local_unnamed_addr #4 comdat align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !38
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_78TextImpl11getNodeNameEv(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOMString") align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #2 align 2 !prof !34 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_711DStringPool15getStaticStringEPKcPPNS_9DOMStringEPFvvERNS_18XMLRegisterCleanupE(ptr noundef nonnull @.str, ptr noundef nonnull @_ZN11xercesc_2_7L5gTextE, ptr noundef nonnull @_ZN11xercesc_2_78TextImpl14reinitTextImplEv, ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L12gTextCleanupE) #7
  tail call void @_ZN11xercesc_2_79DOMStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #7
  ret void
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_711DStringPool15getStaticStringEPKcPPNS_9DOMStringEPFvvERNS_18XMLRegisterCleanupE(ptr noundef, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_78TextImpl14reinitTextImplEv() #4 align 2 !prof !34 {
  %1 = load ptr, ptr @_ZN11xercesc_2_7L5gTextE, align 8, !tbaa !50
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1) #8
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %1) #8
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @_ZN11xercesc_2_7L5gTextE, align 8, !tbaa !50
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79DOMStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef signext i16 @_ZN11xercesc_2_78TextImpl11getNodeTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #5 align 2 !prof !34 {
  ret i16 3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_78TextImpl9splitTextEj(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  %4 = alloca %"class.xercesc_2_7::DOMString", align 8
  %5 = alloca %"class.xercesc_2_7::DOMString", align 8
  %6 = alloca %"class.xercesc_2_7::DOMString", align 8
  %7 = tail call noundef zeroext i1 @_ZNK11xercesc_2_78NodeImpl10isReadOnlyEv(ptr noundef nonnull align 8 dereferenceable(26) %0) #7
  br i1 %7, label %8, label %20

8:                                                ; preds = %2
  %9 = tail call ptr @__cxa_allocate_exception(i64 24) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 0) #7
          to label %10 unwind label %14

10:                                               ; preds = %8
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %9, i16 noundef signext 7, ptr noundef nonnull align 8 dereferenceable(8) %3) #7
          to label %13 unwind label %11

11:                                               ; preds = %10
  %12 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  br label %18

13:                                               ; preds = %10
  invoke void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #10
          to label %95 unwind label %16

14:                                               ; preds = %8
  %15 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  br label %18

16:                                               ; preds = %13
  %17 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  br label %93

18:                                               ; preds = %11, %14
  %19 = phi { ptr, i32 } [ %15, %14 ], [ %12, %11 ]
  call void @__cxa_free_exception(ptr %9) #9
  br label %93

20:                                               ; preds = %2
  %21 = getelementptr inbounds %"class.xercesc_2_7::CharacterDataImpl", ptr %0, i64 0, i32 1
  %22 = tail call noundef i32 @_ZNK11xercesc_2_79DOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(8) %21) #7
  %23 = icmp ult i32 %22, %1
  br i1 %23, label %24, label %36

24:                                               ; preds = %20
  %25 = tail call ptr @__cxa_allocate_exception(i64 24) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 0) #7
          to label %26 unwind label %30

26:                                               ; preds = %24
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %25, i16 noundef signext 1, ptr noundef nonnull align 8 dereferenceable(8) %4) #7
          to label %29 unwind label %27

27:                                               ; preds = %26
  %28 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  br label %34

29:                                               ; preds = %26
  invoke void @__cxa_throw(ptr nonnull %25, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #10
          to label %95 unwind label %32

30:                                               ; preds = %24
  %31 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  br label %34

32:                                               ; preds = %29
  %33 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  br label %93

34:                                               ; preds = %27, %30
  %35 = phi { ptr, i32 } [ %31, %30 ], [ %28, %27 ]
  call void @__cxa_free_exception(ptr %25) #9
  br label %93

36:                                               ; preds = %20
  %37 = load ptr, ptr %0, align 8, !tbaa !35
  %38 = getelementptr inbounds ptr, ptr %37, i64 26
  %39 = load ptr, ptr %38, align 8
  %40 = tail call noundef ptr %39(ptr noundef nonnull align 8 dereferenceable(26) %0) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  %41 = tail call noundef i32 @_ZNK11xercesc_2_79DOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(8) %21) #7
  %42 = sub i32 %41, %1
  call void @_ZNK11xercesc_2_79DOMString13substringDataEjj(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %21, i32 noundef %1, i32 noundef %42) #7
  %43 = load ptr, ptr %40, align 8, !tbaa !35
  %44 = getelementptr inbounds ptr, ptr %43, i64 59
  %45 = load ptr, ptr %44, align 8
  %46 = invoke noundef ptr %45(ptr noundef nonnull align 8 dereferenceable(168) %40, ptr noundef nonnull align 8 dereferenceable(8) %5) #7
          to label %47 unwind label %62

47:                                               ; preds = %36
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  %48 = load ptr, ptr %0, align 8, !tbaa !35
  %49 = getelementptr inbounds ptr, ptr %48, i64 27
  %50 = load ptr, ptr %49, align 8
  %51 = call noundef ptr %50(ptr noundef nonnull align 8 dereferenceable(48) %0) #7
  %52 = icmp eq ptr %51, null
  br i1 %52, label %64, label %53

53:                                               ; preds = %47
  %54 = load ptr, ptr %0, align 8, !tbaa !35
  %55 = getelementptr inbounds ptr, ptr %54, i64 22
  %56 = load ptr, ptr %55, align 8
  %57 = call noundef ptr %56(ptr noundef nonnull align 8 dereferenceable(48) %0) #7
  %58 = load ptr, ptr %51, align 8, !tbaa !35
  %59 = getelementptr inbounds ptr, ptr %58, i64 31
  %60 = load ptr, ptr %59, align 8
  %61 = call noundef ptr %60(ptr noundef nonnull align 8 dereferenceable(26) %51, ptr noundef %46, ptr noundef %57) #7
  br label %64

62:                                               ; preds = %36
  %63 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  br label %93

64:                                               ; preds = %53, %47
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #9
  call void @_ZNK11xercesc_2_79DOMString13substringDataEjj(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %21, i32 noundef 0, i32 noundef %1) #7
  %65 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef nonnull align 8 dereferenceable(8) %6) #7
          to label %66 unwind label %85

66:                                               ; preds = %64
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  %67 = load ptr, ptr %0, align 8, !tbaa !35
  %68 = getelementptr inbounds ptr, ptr %67, i64 26
  %69 = load ptr, ptr %68, align 8
  %70 = call noundef ptr %69(ptr noundef nonnull align 8 dereferenceable(26) %0) #7
  %71 = icmp eq ptr %70, null
  br i1 %71, label %92, label %72

72:                                               ; preds = %66
  %73 = load ptr, ptr %0, align 8, !tbaa !35
  %74 = getelementptr inbounds ptr, ptr %73, i64 26
  %75 = load ptr, ptr %74, align 8
  %76 = call noundef ptr %75(ptr noundef nonnull align 8 dereferenceable(26) %0) #7
  %77 = load ptr, ptr %76, align 8, !tbaa !35
  %78 = getelementptr inbounds ptr, ptr %77, i64 65
  %79 = load ptr, ptr %78, align 8
  %80 = call noundef ptr %79(ptr noundef nonnull align 8 dereferenceable(168) %76) #7
  %81 = icmp eq ptr %80, null
  br i1 %81, label %92, label %82

82:                                               ; preds = %72
  %83 = call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_9RangeImplEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %80) #7
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %92, label %87

85:                                               ; preds = %64
  %86 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  br label %93

87:                                               ; preds = %82, %87
  %88 = phi i32 [ %90, %87 ], [ 0, %82 ]
  %89 = call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %80, i32 noundef %88) #7
  call void @_ZN11xercesc_2_79RangeImpl15updateSplitInfoEPNS_8TextImplES2_j(ptr noundef nonnull align 8 dereferenceable(72) %89, ptr noundef nonnull %0, ptr noundef %46, i32 noundef %1) #7
  %90 = add nuw i32 %88, 1
  %91 = icmp eq i32 %90, %83
  br i1 %91, label %92, label %87, !llvm.loop !51

92:                                               ; preds = %87, %72, %82, %66
  ret ptr %46

93:                                               ; preds = %32, %16, %34, %85, %62, %18
  %94 = phi { ptr, i32 } [ %19, %18 ], [ %17, %16 ], [ %35, %34 ], [ %33, %32 ], [ %86, %85 ], [ %63, %62 ]
  resume { ptr, i32 } %94

95:                                               ; preds = %29, %13
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_78NodeImpl10isReadOnlyEv(ptr noundef nonnull align 8 dereferenceable(26) %0) local_unnamed_addr #4 comdat align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %0, i64 0, i32 3
  %3 = load i16, ptr %2, align 8, !tbaa !53
  %4 = load i16, ptr @_ZN11xercesc_2_78NodeImpl8READONLYE, align 2, !tbaa !54
  %5 = and i16 %4, %3
  %6 = icmp ne i16 %5, 0
  ret i1 %6
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24), i16 noundef signext, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: optsize
declare noundef i32 @_ZNK11xercesc_2_79DOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK11xercesc_2_79DOMString13substringDataEjj(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_9RangeImplEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #4 comdat align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !55
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !55
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #9
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !57
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.1, i32 noundef 249, i32 noundef 116, ptr noundef %9) #7
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
  %15 = load ptr, ptr %14, align 8, !tbaa !58
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !50
  ret ptr %18
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79RangeImpl15updateSplitInfoEPNS_8TextImplES2_j(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_78TextImpl21isIgnorableWhitespaceEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #4 align 2 !prof !34 {
  %2 = tail call noundef zeroext i1 @_ZNK11xercesc_2_78NodeImpl19ignorableWhitespaceEv(ptr noundef nonnull align 8 dereferenceable(26) %0) #7
  ret i1 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_78NodeImpl19ignorableWhitespaceEv(ptr noundef nonnull align 8 dereferenceable(26) %0) local_unnamed_addr #4 comdat align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %0, i64 0, i32 3
  %3 = load i16, ptr %2, align 8, !tbaa !53
  %4 = load i16, ptr @_ZN11xercesc_2_78NodeImpl11IGNORABLEWSE, align 2, !tbaa !54
  %5 = and i16 %4, %3
  %6 = icmp ne i16 %5, 0
  ret i1 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_78TextImpl22setIgnorableWhitespaceEb(ptr noundef nonnull align 8 dereferenceable(56) %0, i1 noundef zeroext %1) unnamed_addr #4 align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_78NodeImpl19ignorableWhitespaceEb(ptr noundef nonnull align 8 dereferenceable(26) %0, i1 noundef zeroext %1) #7
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_78NodeImpl19ignorableWhitespaceEb(ptr noundef nonnull align 8 dereferenceable(26) %0, i1 noundef zeroext %1) local_unnamed_addr #4 comdat align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %0, i64 0, i32 3
  %4 = load i16, ptr %3, align 8, !tbaa !53
  %5 = load i16, ptr @_ZN11xercesc_2_78NodeImpl11IGNORABLEWSE, align 2, !tbaa !54
  %6 = or i16 %5, %4
  %7 = xor i16 %5, -1
  %8 = and i16 %4, %7
  %9 = select i1 %1, i16 %6, i16 %8
  %10 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %0, i64 0, i32 3
  store i16 %9, ptr %10, align 8, !tbaa !53
  ret void
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
declare void @_ZN11xercesc_2_78NodeImpl7changedEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_78NodeImpl7changesEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_78NodeImpl11appendChildEPS0_(ptr noundef nonnull align 8 dereferenceable(26), ptr noundef) unnamed_addr #1

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

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717CharacterDataImpl12getNodeValueEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8, ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #1

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

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717CharacterDataImpl12setNodeValueERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

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

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717CharacterDataImpl10appendDataERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717CharacterDataImpl10deleteDataEjj(ptr noundef nonnull align 8 dereferenceable(56), i32 noundef, i32 noundef) unnamed_addr #1

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_717CharacterDataImpl7getDataEv(ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #1

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_717CharacterDataImpl17getCharDataLengthEv(ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717CharacterDataImpl10insertDataEjRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(56), i32 noundef, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717CharacterDataImpl11replaceDataEjjRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(56), i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717CharacterDataImpl7setDataERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717CharacterDataImpl13substringDataEjj(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8, ptr noundef nonnull align 8 dereferenceable(56), i32 noundef, i32 noundef) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #7
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #7
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #8
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
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #8
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !34 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !59
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #7
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #7
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #8
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #2 comdat align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #7
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: noinline optsize uwtable
define internal void @_GLOBAL__sub_I_TextImpl.cpp() #0 section ".text.startup" {
  tail call fastcc void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { optsize }
attributes #8 = { nounwind optsize }
attributes #9 = { nounwind }
attributes #10 = { noreturn }

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
!50 = !{!47, !47, i64 0}
!51 = distinct !{!51, !52}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !{!42, !48, i64 24}
!54 = !{!48, !48, i64 0}
!55 = !{!56, !45, i64 12}
!56 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEEE", !49, i64 8, !45, i64 12, !45, i64 16, !47, i64 24, !47, i64 32}
!57 = !{!56, !47, i64 32}
!58 = !{!56, !47, i64 24}
!59 = !{!60, !47, i64 40}
!60 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !61, i64 8, !47, i64 16, !45, i64 24, !47, i64 32, !47, i64 40}
!61 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !46, i64 0}
