; ModuleID = 'DOM_Document.cpp'
source_filename = "DOM_Document.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::DOM_Document" = type { %"class.xercesc_2_7::DOM_Node" }
%"class.xercesc_2_7::DOM_Node" = type { ptr }
%"class.xercesc_2_7::DOM_Notation" = type { %"class.xercesc_2_7::DOM_Node" }
%"class.xercesc_2_7::DOM_DocumentType" = type { %"class.xercesc_2_7::DOM_Node" }
%"class.xercesc_2_7::DOM_Element" = type { %"class.xercesc_2_7::DOM_Node" }
%"class.xercesc_2_7::DOM_Entity" = type { %"class.xercesc_2_7::DOM_Node" }
%"class.xercesc_2_7::DOM_DocumentFragment" = type { %"class.xercesc_2_7::DOM_Node" }
%"class.xercesc_2_7::DOM_Text" = type { %"class.xercesc_2_7::DOM_CharacterData" }
%"class.xercesc_2_7::DOM_CharacterData" = type { %"class.xercesc_2_7::DOM_Node" }
%"class.xercesc_2_7::DOM_Comment" = type { %"class.xercesc_2_7::DOM_CharacterData" }
%"class.xercesc_2_7::DOM_CDATASection" = type { %"class.xercesc_2_7::DOM_Text" }
%"class.xercesc_2_7::DOM_ProcessingInstruction" = type { %"class.xercesc_2_7::DOM_Node" }
%"class.xercesc_2_7::DOM_Attr" = type { %"class.xercesc_2_7::DOM_Node" }
%"class.xercesc_2_7::DOM_EntityReference" = type { %"class.xercesc_2_7::DOM_Node" }
%"class.xercesc_2_7::DOM_NodeIterator" = type { ptr }
%"class.xercesc_2_7::DOM_TreeWalker" = type { ptr }
%"class.xercesc_2_7::DOM_NodeList" = type { ptr }
%"class.xercesc_2_7::DOM_XMLDecl" = type { %"class.xercesc_2_7::DOM_Node" }
%"class.xercesc_2_7::DOM_Range" = type { ptr }
%"class.xercesc_2_7::DocumentImpl" = type { %"class.xercesc_2_7::ParentNode.base", ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, ptr }
%"class.xercesc_2_7::ParentNode.base" = type <{ %"class.xercesc_2_7::ChildNode", ptr, ptr, i32, [4 x i8], ptr, i32 }>
%"class.xercesc_2_7::ChildNode" = type { %"class.xercesc_2_7::NodeImpl.base", ptr, ptr }
%"class.xercesc_2_7::NodeImpl.base" = type <{ %"class.xercesc_2_7::NodeListImpl.base", [4 x i8], ptr, i16 }>
%"class.xercesc_2_7::NodeListImpl.base" = type { %"class.xercesc_2_7::RefCountedImpl.base" }
%"class.xercesc_2_7::RefCountedImpl.base" = type <{ ptr, i32 }>

$_ZN11xercesc_2_712DocumentImpl16setErrorCheckingEb = comdat any

$_ZN11xercesc_2_712DocumentImpl16getErrorCheckingEv = comdat any

@_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE = external local_unnamed_addr global ptr, align 8

@_ZN11xercesc_2_712DOM_DocumentC1EPNS_12DocumentImplE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_712DOM_DocumentC2EPNS_12DocumentImplE
@_ZN11xercesc_2_712DOM_DocumentC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_712DOM_DocumentC2Ev
@_ZN11xercesc_2_712DOM_DocumentC1ERKS0_ = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_712DOM_DocumentC2ERKS0_
@_ZN11xercesc_2_712DOM_DocumentD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_712DOM_DocumentD2Ev

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712DOM_DocumentC2EPNS_12DocumentImplE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_78DOM_NodeC2EPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) #4
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78DOM_NodeC2EPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712DOM_DocumentC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_78DOM_NodeC2EPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef null) #4
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712DOM_DocumentC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_78DOM_NodeC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #4
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78DOM_NodeC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_78DOM_NodeD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_712DOM_DocumentD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_78DOM_NodeD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #5
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_712DOM_DocumentaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 !prof !34 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #4
  ret ptr %3
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_712DOM_DocumentaSEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 align 2 !prof !34 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) #4
  ret ptr %3
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712DOM_Document14createDocumentEPNS_13MemoryManagerE(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOM_Document") align 8 %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 168, ptr noundef %1) #4
  invoke void @_ZN11xercesc_2_712DocumentImplC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(168) %3, ptr noundef %1) #4
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @_ZN11xercesc_2_712DOM_DocumentC2EPNS_12DocumentImplE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %3) #4
  ret void

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %3, ptr noundef %1) #5
  resume { ptr, i32 } %6
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712DocumentImplC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(168), ptr noundef) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712DOM_Document14createNotationERKNS_9DOMStringE(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOM_Notation") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 align 2 !prof !34 {
  %4 = load ptr, ptr %1, align 8, !tbaa !35
  %5 = load ptr, ptr %4, align 8, !tbaa !40
  %6 = getelementptr inbounds ptr, ptr %5, i64 57
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(168) %4, ptr noundef nonnull align 8 dereferenceable(8) %2) #4
  tail call void @_ZN11xercesc_2_712DOM_NotationC1EPNS_12NotationImplE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %8) #4
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712DOM_NotationC1EPNS_12NotationImplE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xercesc_2_712DOM_Document10getDoctypeEv(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOM_DocumentType") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 !prof !34 {
  %3 = load ptr, ptr %1, align 8, !tbaa !35
  %4 = load ptr, ptr %3, align 8, !tbaa !40
  %5 = getelementptr inbounds ptr, ptr %4, i64 60
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(168) %3) #4
  tail call void @_ZN11xercesc_2_716DOM_DocumentTypeC1EPNS_16DocumentTypeImplE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %7) #4
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716DOM_DocumentTypeC1EPNS_16DocumentTypeImplE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNK11xercesc_2_712DOM_Document17getImplementationEv(ptr nocapture noundef nonnull readnone align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 !prof !34 {
  %2 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZN11xercesc_2_721DOM_DOMImplementation17getImplementationEv() #4
  ret ptr %2
}

; Function Attrs: optsize
declare noundef nonnull align 1 dereferenceable(1) ptr @_ZN11xercesc_2_721DOM_DOMImplementation17getImplementationEv() local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xercesc_2_712DOM_Document18getDocumentElementEv(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOM_Element") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 !prof !34 {
  %3 = load ptr, ptr %1, align 8, !tbaa !35
  %4 = load ptr, ptr %3, align 8, !tbaa !40
  %5 = getelementptr inbounds ptr, ptr %4, i64 61
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(168) %3) #4
  tail call void @_ZN11xercesc_2_711DOM_ElementC1EPNS_11ElementImplE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %7) #4
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711DOM_ElementC1EPNS_11ElementImplE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712DOM_Document13createElementERKNS_9DOMStringE(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOM_Element") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 align 2 !prof !34 {
  %4 = load ptr, ptr %1, align 8, !tbaa !35
  %5 = load ptr, ptr %4, align 8, !tbaa !40
  %6 = getelementptr inbounds ptr, ptr %5, i64 53
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(168) %4, ptr noundef nonnull align 8 dereferenceable(8) %2) #4
  tail call void @_ZN11xercesc_2_711DOM_ElementC1EPNS_11ElementImplE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %8) #4
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712DOM_Document13createElementEPKt(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOM_Element") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %1, ptr noundef %2) local_unnamed_addr #0 align 2 !prof !34 {
  %4 = load ptr, ptr %1, align 8, !tbaa !35
  %5 = load ptr, ptr %4, align 8, !tbaa !40
  %6 = getelementptr inbounds ptr, ptr %5, i64 54
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(168) %4, ptr noundef %2) #4
  tail call void @_ZN11xercesc_2_711DOM_ElementC1EPNS_11ElementImplE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %8) #4
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712DOM_Document12createEntityERKNS_9DOMStringE(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOM_Entity") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 align 2 !prof !34 {
  %4 = load ptr, ptr %1, align 8, !tbaa !35
  %5 = load ptr, ptr %4, align 8, !tbaa !40
  %6 = getelementptr inbounds ptr, ptr %5, i64 55
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(168) %4, ptr noundef nonnull align 8 dereferenceable(8) %2) #4
  tail call void @_ZN11xercesc_2_710DOM_EntityC1EPNS_10EntityImplE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %8) #4
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710DOM_EntityC1EPNS_10EntityImplE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712DOM_Document22createDocumentFragmentEv(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOM_DocumentFragment") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 !prof !34 {
  %3 = load ptr, ptr %1, align 8, !tbaa !35
  %4 = load ptr, ptr %3, align 8, !tbaa !40
  %5 = getelementptr inbounds ptr, ptr %4, i64 50
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(168) %3) #4
  tail call void @_ZN11xercesc_2_720DOM_DocumentFragmentC1EPNS_20DocumentFragmentImplE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %7) #4
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_720DOM_DocumentFragmentC1EPNS_20DocumentFragmentImplE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712DOM_Document18createDocumentTypeERKNS_9DOMStringE(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOM_DocumentType") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 align 2 !prof !34 {
  %4 = load ptr, ptr %1, align 8, !tbaa !35
  %5 = load ptr, ptr %4, align 8, !tbaa !40
  %6 = getelementptr inbounds ptr, ptr %5, i64 51
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(168) %4, ptr noundef nonnull align 8 dereferenceable(8) %2) #4
  tail call void @_ZN11xercesc_2_716DOM_DocumentTypeC1EPNS_16DocumentTypeImplE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %8) #4
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712DOM_Document14createTextNodeERKNS_9DOMStringE(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOM_Text") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 align 2 !prof !34 {
  %4 = load ptr, ptr %1, align 8, !tbaa !35
  %5 = load ptr, ptr %4, align 8, !tbaa !40
  %6 = getelementptr inbounds ptr, ptr %5, i64 59
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(168) %4, ptr noundef nonnull align 8 dereferenceable(8) %2) #4
  tail call void @_ZN11xercesc_2_78DOM_TextC1EPNS_8TextImplE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %8) #4
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78DOM_TextC1EPNS_8TextImplE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712DOM_Document13createCommentERKNS_9DOMStringE(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOM_Comment") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 align 2 !prof !34 {
  %4 = load ptr, ptr %1, align 8, !tbaa !35
  %5 = load ptr, ptr %4, align 8, !tbaa !40
  %6 = getelementptr inbounds ptr, ptr %5, i64 49
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(168) %4, ptr noundef nonnull align 8 dereferenceable(8) %2) #4
  tail call void @_ZN11xercesc_2_711DOM_CommentC1EPNS_11CommentImplE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %8) #4
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711DOM_CommentC1EPNS_11CommentImplE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712DOM_Document18createCDATASectionERKNS_9DOMStringE(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOM_CDATASection") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 align 2 !prof !34 {
  %4 = load ptr, ptr %1, align 8, !tbaa !35
  %5 = load ptr, ptr %4, align 8, !tbaa !40
  %6 = getelementptr inbounds ptr, ptr %5, i64 48
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(168) %4, ptr noundef nonnull align 8 dereferenceable(8) %2) #4
  tail call void @_ZN11xercesc_2_716DOM_CDATASectionC1EPNS_16CDATASectionImplE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %8) #4
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716DOM_CDATASectionC1EPNS_16CDATASectionImplE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712DOM_Document27createProcessingInstructionERKNS_9DOMStringES3_(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOM_ProcessingInstruction") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 align 2 !prof !34 {
  %5 = load ptr, ptr %1, align 8, !tbaa !35
  %6 = load ptr, ptr %5, align 8, !tbaa !40
  %7 = getelementptr inbounds ptr, ptr %6, i64 58
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(168) %5, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #4
  tail call void @_ZN11xercesc_2_725DOM_ProcessingInstructionC1EPNS_25ProcessingInstructionImplE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %9) #4
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_725DOM_ProcessingInstructionC1EPNS_25ProcessingInstructionImplE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712DOM_Document15createAttributeERKNS_9DOMStringE(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOM_Attr") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 align 2 !prof !34 {
  %4 = load ptr, ptr %1, align 8, !tbaa !35
  %5 = load ptr, ptr %4, align 8, !tbaa !40
  %6 = getelementptr inbounds ptr, ptr %5, i64 47
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(168) %4, ptr noundef nonnull align 8 dereferenceable(8) %2) #4
  tail call void @_ZN11xercesc_2_78DOM_AttrC1EPNS_8AttrImplE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %8) #4
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78DOM_AttrC1EPNS_8AttrImplE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712DOM_Document21createEntityReferenceERKNS_9DOMStringE(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOM_EntityReference") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 align 2 !prof !34 {
  %4 = load ptr, ptr %1, align 8, !tbaa !35
  %5 = load ptr, ptr %4, align 8, !tbaa !40
  %6 = getelementptr inbounds ptr, ptr %5, i64 56
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(168) %4, ptr noundef nonnull align 8 dereferenceable(8) %2) #4
  tail call void @_ZN11xercesc_2_719DOM_EntityReferenceC1EPNS_19EntityReferenceImplE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %8) #4
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_719DOM_EntityReferenceC1EPNS_19EntityReferenceImplE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712DOM_Document18createNodeIteratorENS_8DOM_NodeEmPNS_14DOM_NodeFilterEb(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOM_NodeIterator") align 8 %0, ptr nocapture noundef nonnull readnone align 8 dereferenceable(8) %1, ptr noundef nonnull %2, i64 noundef %3, ptr noundef %4, i1 noundef zeroext %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %7 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  call void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %2) #4
  %8 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !42
  %9 = invoke noundef ptr @_ZN11xercesc_2_712DocumentImpl18createNodeIteratorENS_8DOM_NodeEmPNS_14DOM_NodeFilterEbPNS_13MemoryManagerE(ptr noundef nonnull %7, i64 noundef %3, ptr noundef %4, i1 noundef zeroext %5, ptr noundef %8) #4
          to label %10 unwind label %12

10:                                               ; preds = %6
  invoke void @_ZN11xercesc_2_716DOM_NodeIteratorC1EPNS_16NodeIteratorImplE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %9) #4
          to label %11 unwind label %12

11:                                               ; preds = %10
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #5
  ret void

12:                                               ; preds = %10, %6
  %13 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #5
  resume { ptr, i32 } %13
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_712DocumentImpl18createNodeIteratorENS_8DOM_NodeEmPNS_14DOM_NodeFilterEbPNS_13MemoryManagerE(ptr noundef, i64 noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716DOM_NodeIteratorC1EPNS_16NodeIteratorImplE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712DOM_Document16createTreeWalkerENS_8DOM_NodeEmPNS_14DOM_NodeFilterEb(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOM_TreeWalker") align 8 %0, ptr nocapture noundef nonnull readnone align 8 dereferenceable(8) %1, ptr noundef nonnull %2, i64 noundef %3, ptr noundef %4, i1 noundef zeroext %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %7 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  call void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %2) #4
  %8 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !42
  %9 = invoke noundef ptr @_ZN11xercesc_2_712DocumentImpl16createTreeWalkerENS_8DOM_NodeEmPNS_14DOM_NodeFilterEbPNS_13MemoryManagerE(ptr noundef nonnull %7, i64 noundef %3, ptr noundef %4, i1 noundef zeroext %5, ptr noundef %8) #4
          to label %10 unwind label %12

10:                                               ; preds = %6
  invoke void @_ZN11xercesc_2_714DOM_TreeWalkerC1EPNS_14TreeWalkerImplE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %9) #4
          to label %11 unwind label %12

11:                                               ; preds = %10
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #5
  ret void

12:                                               ; preds = %10, %6
  %13 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #5
  resume { ptr, i32 } %13
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_712DocumentImpl16createTreeWalkerENS_8DOM_NodeEmPNS_14DOM_NodeFilterEbPNS_13MemoryManagerE(ptr noundef, i64 noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_714DOM_TreeWalkerC1EPNS_14TreeWalkerImplE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xercesc_2_712DOM_Document20getElementsByTagNameERKNS_9DOMStringE(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOM_NodeList") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 align 2 !prof !34 {
  %4 = load ptr, ptr %1, align 8, !tbaa !35
  %5 = load ptr, ptr %4, align 8, !tbaa !40
  %6 = getelementptr inbounds ptr, ptr %5, i64 62
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(168) %4, ptr noundef nonnull align 8 dereferenceable(8) %2) #4
  tail call void @_ZN11xercesc_2_712DOM_NodeListC1EPNS_12NodeListImplE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %8) #4
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712DOM_NodeListC1EPNS_12NodeListImplE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712DOM_Document10importNodeERKNS_8DOM_NodeEb(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 !prof !34 {
  %5 = load ptr, ptr %1, align 8, !tbaa !35
  %6 = load ptr, ptr %2, align 8, !tbaa !35
  %7 = load ptr, ptr %5, align 8, !tbaa !40
  %8 = getelementptr inbounds ptr, ptr %7, i64 69
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(168) %5, ptr noundef %6, i1 noundef zeroext %3) #4
  tail call void @_ZN11xercesc_2_78DOM_NodeC1EPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %10) #4
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78DOM_NodeC1EPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712DOM_Document15createElementNSERKNS_9DOMStringES3_(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOM_Element") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 align 2 !prof !34 {
  %5 = load ptr, ptr %1, align 8, !tbaa !35
  %6 = load ptr, ptr %5, align 8, !tbaa !40
  %7 = getelementptr inbounds ptr, ptr %6, i64 70
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(168) %5, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #4
  tail call void @_ZN11xercesc_2_711DOM_ElementC1EPNS_11ElementImplE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %9) #4
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712DOM_Document17createAttributeNSERKNS_9DOMStringES3_(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOM_Attr") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 align 2 !prof !34 {
  %5 = load ptr, ptr %1, align 8, !tbaa !35
  %6 = load ptr, ptr %5, align 8, !tbaa !40
  %7 = getelementptr inbounds ptr, ptr %6, i64 71
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(168) %5, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #4
  tail call void @_ZN11xercesc_2_78DOM_AttrC1EPNS_8AttrImplE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %9) #4
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xercesc_2_712DOM_Document22getElementsByTagNameNSERKNS_9DOMStringES3_(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOM_NodeList") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 align 2 !prof !34 {
  %5 = load ptr, ptr %1, align 8, !tbaa !35
  %6 = load ptr, ptr %5, align 8, !tbaa !40
  %7 = getelementptr inbounds ptr, ptr %6, i64 72
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(168) %5, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #4
  tail call void @_ZN11xercesc_2_712DOM_NodeListC1EPNS_12NodeListImplE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %9) #4
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712DOM_Document14getElementByIdERKNS_9DOMStringE(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOM_Element") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 align 2 !prof !34 {
  %4 = load ptr, ptr %1, align 8, !tbaa !35
  %5 = load ptr, ptr %4, align 8, !tbaa !40
  %6 = getelementptr inbounds ptr, ptr %5, i64 73
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(168) %4, ptr noundef nonnull align 8 dereferenceable(8) %2) #4
  tail call void @_ZN11xercesc_2_711DOM_ElementC1EPNS_11ElementImplE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %8) #4
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712DOM_Document13createXMLDeclERKNS_9DOMStringES3_S3_(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOM_XMLDecl") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 align 2 !prof !34 {
  %6 = load ptr, ptr %1, align 8, !tbaa !35
  %7 = load ptr, ptr %6, align 8, !tbaa !40
  %8 = getelementptr inbounds ptr, ptr %7, i64 63
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(168) %6, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #4
  tail call void @_ZN11xercesc_2_711DOM_XMLDeclC1EPNS_11XMLDeclImplE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %10) #4
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711DOM_XMLDeclC1EPNS_11XMLDeclImplE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712DOM_Document11createRangeEv(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOM_Range") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 !prof !34 {
  %3 = load ptr, ptr %1, align 8, !tbaa !35
  %4 = load ptr, ptr %3, align 8, !tbaa !40
  %5 = getelementptr inbounds ptr, ptr %4, i64 64
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(168) %3) #4
  tail call void @_ZN11xercesc_2_79DOM_RangeC1EPNS_9RangeImplE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %7) #4
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79DOM_RangeC1EPNS_9RangeImplE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_712DOM_Document16setErrorCheckingEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %0, i1 noundef zeroext %1) local_unnamed_addr #3 align 2 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  tail call void @_ZN11xercesc_2_712DocumentImpl16setErrorCheckingEb(ptr noundef nonnull align 8 dereferenceable(168) %3, i1 noundef zeroext %1) #4
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712DocumentImpl16setErrorCheckingEb(ptr noundef nonnull align 8 dereferenceable(168) %0, i1 noundef zeroext %1) local_unnamed_addr #3 comdat align 2 !prof !34 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 10
  store i8 %3, ptr %4, align 4, !tbaa !43
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_712DOM_Document16getErrorCheckingEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %0) local_unnamed_addr #3 align 2 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !35
  %3 = tail call noundef zeroext i1 @_ZN11xercesc_2_712DocumentImpl16getErrorCheckingEv(ptr noundef nonnull align 8 dereferenceable(168) %2) #4
  ret i1 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_712DocumentImpl16getErrorCheckingEv(ptr noundef nonnull align 8 dereferenceable(168) %0) local_unnamed_addr #3 comdat align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 10
  %3 = load i8, ptr %2, align 4, !tbaa !43, !range !53, !noundef !54
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize }
attributes #5 = { nounwind optsize }

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
!35 = !{!36, !37, i64 0}
!36 = !{!"_ZTSN11xercesc_2_78DOM_NodeE", !37, i64 0}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C++ TBAA"}
!40 = !{!41, !41, i64 0}
!41 = !{!"vtable pointer", !39, i64 0}
!42 = !{!37, !37, i64 0}
!43 = !{!44, !52, i64 156}
!44 = !{!"_ZTSN11xercesc_2_712DocumentImplE", !45, i64 0, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !50, i64 152, !52, i64 156, !37, i64 160}
!45 = !{!"_ZTSN11xercesc_2_710ParentNodeE", !46, i64 0, !37, i64 48, !37, i64 56, !50, i64 64, !37, i64 72, !50, i64 80}
!46 = !{!"_ZTSN11xercesc_2_79ChildNodeE", !47, i64 0, !37, i64 32, !37, i64 40}
!47 = !{!"_ZTSN11xercesc_2_78NodeImplE", !48, i64 0, !37, i64 16, !51, i64 24}
!48 = !{!"_ZTSN11xercesc_2_712NodeListImplE", !49, i64 0}
!49 = !{!"_ZTSN11xercesc_2_714RefCountedImplE", !50, i64 8}
!50 = !{!"int", !38, i64 0}
!51 = !{!"short", !38, i64 0}
!52 = !{!"bool", !38, i64 0}
!53 = !{i8 0, i8 2}
!54 = !{}
