; ModuleID = 'DOM_Node.cpp'
source_filename = "DOM_Node.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::DOM_Node" = type { ptr }
%"class.xercesc_2_7::DOMString" = type { ptr }
%"class.xercesc_2_7::DOM_NodeList" = type { ptr }
%"class.xercesc_2_7::DOM_NamedNodeMap" = type <{ ptr, i16, [6 x i8] }>
%"class.xercesc_2_7::DOM_Document" = type { %"class.xercesc_2_7::DOM_Node" }

$__clang_call_terminate = comdat any

@_ZN11xercesc_2_78DOM_NodeC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_78DOM_NodeC2Ev
@_ZN11xercesc_2_78DOM_NodeC1EPNS_8NodeImplE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_78DOM_NodeC2EPNS_8NodeImplE
@_ZN11xercesc_2_78DOM_NodeC1ERKS0_ = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_78DOM_NodeC2ERKS0_
@_ZN11xercesc_2_78DOM_NodeD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_78DOM_NodeD2Ev

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_78DOM_NodeC2Ev(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(8) %0) unnamed_addr #0 align 2 !prof !34 {
  store ptr null, ptr %0, align 8, !tbaa !35
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_78DOM_NodeC2EPNS_8NodeImplE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !34 {
  store ptr %1, ptr %0, align 8, !tbaa !35
  tail call void @_ZN11xercesc_2_714RefCountedImpl6addRefEPS0_(ptr noundef %1) #8
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_714RefCountedImpl6addRefEPS0_(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_78DOM_NodeC2ERKS0_(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(8) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %1) unnamed_addr #1 align 2 !prof !34 {
  %3 = load ptr, ptr %1, align 8, !tbaa !35
  store ptr %3, ptr %0, align 8, !tbaa !35
  tail call void @_ZN11xercesc_2_714RefCountedImpl6addRefEPS0_(ptr noundef %3) #8
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %1) local_unnamed_addr #1 align 2 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = load ptr, ptr %1, align 8, !tbaa !35
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  tail call void @_ZN11xercesc_2_714RefCountedImpl9removeRefEPS0_(ptr noundef %3) #8
  %7 = load ptr, ptr %1, align 8, !tbaa !35
  store ptr %7, ptr %0, align 8, !tbaa !35
  tail call void @_ZN11xercesc_2_714RefCountedImpl6addRefEPS0_(ptr noundef %7) #8
  br label %8

8:                                                ; preds = %6, %2
  ret ptr %0
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_714RefCountedImpl9removeRefEPS0_(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSEPKNS_11DOM_NullPtrE(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr nocapture noundef readnone %1) local_unnamed_addr #1 align 2 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  tail call void @_ZN11xercesc_2_714RefCountedImpl9removeRefEPS0_(ptr noundef %3) #8
  store ptr null, ptr %0, align 8, !tbaa !35
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_78DOM_NodeD2Ev(ptr nocapture noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !35
  invoke void @_ZN11xercesc_2_714RefCountedImpl9removeRefEPS0_(ptr noundef %2) #8
          to label %3 unwind label %4

3:                                                ; preds = %1
  store ptr null, ptr %0, align 8, !tbaa !35
  ret void

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          catch ptr null
  %6 = extractvalue { ptr, i32 } %5, 0
  tail call void @__clang_call_terminate(ptr %6) #9
  unreachable
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #10
  tail call void @_ZSt9terminatev() #9
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneERKS0_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %1) local_unnamed_addr #5 align 2 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = load ptr, ptr %1, align 8, !tbaa !35
  %5 = icmp ne ptr %3, %4
  ret i1 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeeqERKS0_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %1) local_unnamed_addr #5 align 2 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = load ptr, ptr %1, align 8, !tbaa !35
  %5 = icmp eq ptr %3, %4
  ret i1 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneEPKNS_11DOM_NullPtrE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %0, ptr nocapture noundef readnone %1) local_unnamed_addr #5 align 2 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = icmp ne ptr %3, null
  ret i1 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeeqEPKNS_11DOM_NullPtrE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %0, ptr nocapture noundef readnone %1) local_unnamed_addr #5 align 2 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = icmp eq ptr %3, null
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_78DOM_Node11appendChildERKS0_(ptr dead_on_unwind noalias nocapture writable writeonly sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2) local_unnamed_addr #1 align 2 !prof !34 {
  %4 = load ptr, ptr %1, align 8, !tbaa !35
  %5 = load ptr, ptr %2, align 8, !tbaa !35
  %6 = load ptr, ptr %4, align 8, !tbaa !40
  %7 = getelementptr inbounds ptr, ptr %6, i64 16
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(26) %4, ptr noundef %5) #8
  tail call void @_ZN11xercesc_2_78DOM_NodeC2EPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %9) #8
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xercesc_2_78DOM_Node9cloneNodeEb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %1, i1 noundef zeroext %2) local_unnamed_addr #1 align 2 !prof !34 {
  %4 = load ptr, ptr %1, align 8, !tbaa !35
  %5 = load ptr, ptr %4, align 8, !tbaa !40
  %6 = getelementptr inbounds ptr, ptr %5, i64 17
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(26) %4, i1 noundef zeroext %2) #8
  tail call void @_ZN11xercesc_2_78DOM_NodeC2EPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %8) #8
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xercesc_2_78DOM_Node11getNodeNameEv(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOMString") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  %4 = load ptr, ptr %1, align 8, !tbaa !35
  %5 = load ptr, ptr %4, align 8, !tbaa !40
  %6 = getelementptr inbounds ptr, ptr %5, i64 23
  %7 = load ptr, ptr %6, align 8
  call void %7(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %3, ptr noundef nonnull align 8 dereferenceable(26) %4) #8
  invoke void @_ZNK11xercesc_2_79DOMString5cloneEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #8
          to label %8 unwind label %9

8:                                                ; preds = %2
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  ret void

9:                                                ; preds = %2
  %10 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  resume { ptr, i32 } %10
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: optsize
declare void @_ZNK11xercesc_2_79DOMString5cloneEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xercesc_2_78DOM_Node12getNodeValueEv(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOMString") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  %4 = load ptr, ptr %1, align 8, !tbaa !35
  %5 = load ptr, ptr %4, align 8, !tbaa !40
  %6 = getelementptr inbounds ptr, ptr %5, i64 25
  %7 = load ptr, ptr %6, align 8
  call void %7(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %3, ptr noundef nonnull align 8 dereferenceable(26) %4) #8
  invoke void @_ZNK11xercesc_2_79DOMString5cloneEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #8
          to label %8 unwind label %9

8:                                                ; preds = %2
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  ret void

9:                                                ; preds = %2
  %10 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  resume { ptr, i32 } %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef signext i16 @_ZNK11xercesc_2_78DOM_Node11getNodeTypeEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %0) local_unnamed_addr #1 align 2 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !35
  %3 = load ptr, ptr %2, align 8, !tbaa !40
  %4 = getelementptr inbounds ptr, ptr %3, i64 24
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef signext i16 %5(ptr noundef nonnull align 8 dereferenceable(26) %2) #8
  ret i16 %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xercesc_2_78DOM_Node13getParentNodeEv(ptr dead_on_unwind noalias nocapture writable writeonly sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %1) local_unnamed_addr #1 align 2 !prof !34 {
  %3 = load ptr, ptr %1, align 8, !tbaa !35
  %4 = load ptr, ptr %3, align 8, !tbaa !40
  %5 = getelementptr inbounds ptr, ptr %4, i64 27
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(26) %3) #8
  tail call void @_ZN11xercesc_2_78DOM_NodeC2EPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %7) #8
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xercesc_2_78DOM_Node13getChildNodesEv(ptr dead_on_unwind noalias nonnull writable sret(%"class.xercesc_2_7::DOM_NodeList") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %1) local_unnamed_addr #1 align 2 !prof !34 {
  %3 = load ptr, ptr %1, align 8, !tbaa !35
  tail call void @_ZN11xercesc_2_712DOM_NodeListC1EPNS_12NodeListImplE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %3) #8
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712DOM_NodeListC1EPNS_12NodeListImplE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xercesc_2_78DOM_Node13getFirstChildEv(ptr dead_on_unwind noalias nocapture writable writeonly sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %1) local_unnamed_addr #1 align 2 !prof !34 {
  %3 = load ptr, ptr %1, align 8, !tbaa !35
  %4 = load ptr, ptr %3, align 8, !tbaa !40
  %5 = getelementptr inbounds ptr, ptr %4, i64 20
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(26) %3) #8
  tail call void @_ZN11xercesc_2_78DOM_NodeC2EPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %7) #8
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xercesc_2_78DOM_Node12getLastChildEv(ptr dead_on_unwind noalias nocapture writable writeonly sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %1) local_unnamed_addr #1 align 2 !prof !34 {
  %3 = load ptr, ptr %1, align 8, !tbaa !35
  %4 = load ptr, ptr %3, align 8, !tbaa !40
  %5 = getelementptr inbounds ptr, ptr %4, i64 21
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(26) %3) #8
  tail call void @_ZN11xercesc_2_78DOM_NodeC2EPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %7) #8
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xercesc_2_78DOM_Node18getPreviousSiblingEv(ptr dead_on_unwind noalias nocapture writable writeonly sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %1) local_unnamed_addr #1 align 2 !prof !34 {
  %3 = load ptr, ptr %1, align 8, !tbaa !35
  %4 = load ptr, ptr %3, align 8, !tbaa !40
  %5 = getelementptr inbounds ptr, ptr %4, i64 28
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(26) %3) #8
  tail call void @_ZN11xercesc_2_78DOM_NodeC2EPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %7) #8
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xercesc_2_78DOM_Node14getNextSiblingEv(ptr dead_on_unwind noalias nocapture writable writeonly sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %1) local_unnamed_addr #1 align 2 !prof !34 {
  %3 = load ptr, ptr %1, align 8, !tbaa !35
  %4 = load ptr, ptr %3, align 8, !tbaa !40
  %5 = getelementptr inbounds ptr, ptr %4, i64 22
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(26) %3) #8
  tail call void @_ZN11xercesc_2_78DOM_NodeC2EPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %7) #8
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_78DOM_Node11getUserDataEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %0) local_unnamed_addr #1 align 2 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !35
  %3 = load ptr, ptr %2, align 8, !tbaa !40
  %4 = getelementptr inbounds ptr, ptr %3, i64 29
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(26) %2) #8
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xercesc_2_78DOM_Node13getAttributesEv(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOM_NamedNodeMap") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %1) local_unnamed_addr #1 align 2 !prof !34 {
  %3 = tail call noundef signext i16 @_ZNK11xercesc_2_78DOM_Node11getNodeTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #8
  %4 = icmp eq i16 %3, 1
  br i1 %4, label %5, label %19

5:                                                ; preds = %2
  %6 = load ptr, ptr %1, align 8, !tbaa !35
  %7 = load ptr, ptr %6, align 8, !tbaa !40
  %8 = getelementptr inbounds ptr, ptr %7, i64 18
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(26) %6) #8
  %11 = icmp eq ptr %10, null
  %12 = load ptr, ptr %1, align 8, !tbaa !35
  br i1 %11, label %13, label %14

13:                                               ; preds = %5
  tail call void @_ZN11xercesc_2_716DOM_NamedNodeMapC1EPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(10) %0, ptr noundef %12) #8
  br label %20

14:                                               ; preds = %5
  %15 = load ptr, ptr %12, align 8, !tbaa !40
  %16 = getelementptr inbounds ptr, ptr %15, i64 18
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(26) %12) #8
  tail call void @_ZN11xercesc_2_716DOM_NamedNodeMapC1EPNS_16NamedNodeMapImplE(ptr noundef nonnull align 8 dereferenceable(10) %0, ptr noundef %18) #8
  br label %20

19:                                               ; preds = %2
  tail call void @_ZN11xercesc_2_716DOM_NamedNodeMapC1Ev(ptr noundef nonnull align 8 dereferenceable(10) %0) #8
  br label %20

20:                                               ; preds = %13, %14, %19
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716DOM_NamedNodeMapC1EPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716DOM_NamedNodeMapC1EPNS_16NamedNodeMapImplE(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716DOM_NamedNodeMapC1Ev(ptr noundef nonnull align 8 dereferenceable(10)) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xercesc_2_78DOM_Node16getOwnerDocumentEv(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOM_Document") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %1) local_unnamed_addr #1 align 2 !prof !34 {
  %3 = load ptr, ptr %1, align 8, !tbaa !35
  %4 = load ptr, ptr %3, align 8, !tbaa !40
  %5 = getelementptr inbounds ptr, ptr %4, i64 26
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(26) %3) #8
  tail call void @_ZN11xercesc_2_712DOM_DocumentC1EPNS_12DocumentImplE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %7) #8
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712DOM_DocumentC1EPNS_12DocumentImplE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node13hasChildNodesEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %0) local_unnamed_addr #1 align 2 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !35
  %3 = load ptr, ptr %2, align 8, !tbaa !40
  %4 = getelementptr inbounds ptr, ptr %3, i64 30
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef zeroext i1 %5(ptr noundef nonnull align 8 dereferenceable(26) %2) #8
  ret i1 %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_78DOM_Node12insertBeforeERKS0_S2_(ptr dead_on_unwind noalias nocapture writable writeonly sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %3) local_unnamed_addr #1 align 2 !prof !34 {
  %5 = load ptr, ptr %1, align 8, !tbaa !35
  %6 = load ptr, ptr %2, align 8, !tbaa !35
  %7 = load ptr, ptr %3, align 8, !tbaa !35
  %8 = load ptr, ptr %5, align 8, !tbaa !40
  %9 = getelementptr inbounds ptr, ptr %8, i64 31
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(26) %5, ptr noundef %6, ptr noundef %7) #8
  tail call void @_ZN11xercesc_2_78DOM_NodeC2EPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %11) #8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node6isNullEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %0) local_unnamed_addr #5 align 2 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !35
  %3 = icmp eq ptr %2, null
  ret i1 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_78DOM_Node12replaceChildERKS0_S2_(ptr dead_on_unwind noalias nocapture writable writeonly sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %3) local_unnamed_addr #1 align 2 !prof !34 {
  %5 = load ptr, ptr %1, align 8, !tbaa !35
  %6 = load ptr, ptr %2, align 8, !tbaa !35
  %7 = load ptr, ptr %3, align 8, !tbaa !35
  %8 = load ptr, ptr %5, align 8, !tbaa !40
  %9 = getelementptr inbounds ptr, ptr %8, i64 33
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(26) %5, ptr noundef %6, ptr noundef %7) #8
  tail call void @_ZN11xercesc_2_78DOM_NodeC2EPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %11) #8
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_78DOM_Node11removeChildERKS0_(ptr dead_on_unwind noalias nocapture writable writeonly sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2) local_unnamed_addr #1 align 2 !prof !34 {
  %4 = load ptr, ptr %1, align 8, !tbaa !35
  %5 = load ptr, ptr %2, align 8, !tbaa !35
  %6 = load ptr, ptr %4, align 8, !tbaa !40
  %7 = getelementptr inbounds ptr, ptr %6, i64 32
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(26) %4, ptr noundef %5) #8
  tail call void @_ZN11xercesc_2_78DOM_NodeC2EPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %9) #8
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_78DOM_Node12setNodeValueERKNS_9DOMStringE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 align 2 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = load ptr, ptr %3, align 8, !tbaa !40
  %5 = getelementptr inbounds ptr, ptr %4, i64 34
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(26) %3, ptr noundef nonnull align 8 dereferenceable(8) %1) #8
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_78DOM_Node11setUserDataEPv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #1 align 2 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = load ptr, ptr %3, align 8, !tbaa !40
  %5 = getelementptr inbounds ptr, ptr %4, i64 36
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(26) %3, ptr noundef %1) #8
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_78DOM_Node9normalizeEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %0) local_unnamed_addr #1 align 2 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !35
  %3 = load ptr, ptr %2, align 8, !tbaa !40
  %4 = getelementptr inbounds ptr, ptr %3, i64 38
  %5 = load ptr, ptr %4, align 8
  tail call void %5(ptr noundef nonnull align 8 dereferenceable(26) %2) #8
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node11isSupportedERKNS_9DOMStringES3_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 align 2 !prof !34 {
  %4 = load ptr, ptr %0, align 8, !tbaa !35
  %5 = load ptr, ptr %4, align 8, !tbaa !40
  %6 = getelementptr inbounds ptr, ptr %5, i64 39
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef zeroext i1 %7(ptr noundef nonnull align 8 dereferenceable(26) %4, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #8
  ret i1 %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xercesc_2_78DOM_Node15getNamespaceURIEv(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOMString") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  %4 = load ptr, ptr %1, align 8, !tbaa !35
  %5 = load ptr, ptr %4, align 8, !tbaa !40
  %6 = getelementptr inbounds ptr, ptr %5, i64 40
  %7 = load ptr, ptr %6, align 8
  call void %7(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %3, ptr noundef nonnull align 8 dereferenceable(26) %4) #8
  invoke void @_ZNK11xercesc_2_79DOMString5cloneEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #8
          to label %8 unwind label %9

8:                                                ; preds = %2
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  ret void

9:                                                ; preds = %2
  %10 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  resume { ptr, i32 } %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xercesc_2_78DOM_Node9getPrefixEv(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOMString") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  %4 = load ptr, ptr %1, align 8, !tbaa !35
  %5 = load ptr, ptr %4, align 8, !tbaa !40
  %6 = getelementptr inbounds ptr, ptr %5, i64 41
  %7 = load ptr, ptr %6, align 8
  call void %7(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %3, ptr noundef nonnull align 8 dereferenceable(26) %4) #8
  invoke void @_ZNK11xercesc_2_79DOMString5cloneEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #8
          to label %8 unwind label %9

8:                                                ; preds = %2
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  ret void

9:                                                ; preds = %2
  %10 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  resume { ptr, i32 } %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xercesc_2_78DOM_Node12getLocalNameEv(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOMString") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  %4 = load ptr, ptr %1, align 8, !tbaa !35
  %5 = load ptr, ptr %4, align 8, !tbaa !40
  %6 = getelementptr inbounds ptr, ptr %5, i64 42
  %7 = load ptr, ptr %6, align 8
  call void %7(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %3, ptr noundef nonnull align 8 dereferenceable(26) %4) #8
  invoke void @_ZNK11xercesc_2_79DOMString5cloneEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #8
          to label %8 unwind label %9

8:                                                ; preds = %2
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  ret void

9:                                                ; preds = %2
  %10 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  resume { ptr, i32 } %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_78DOM_Node9setPrefixERKNS_9DOMStringE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 align 2 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = load ptr, ptr %3, align 8, !tbaa !40
  %5 = getelementptr inbounds ptr, ptr %4, i64 43
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(26) %3, ptr noundef nonnull align 8 dereferenceable(8) %1) #8
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node13hasAttributesEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %0) local_unnamed_addr #1 align 2 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !35
  %3 = load ptr, ptr %2, align 8, !tbaa !40
  %4 = getelementptr inbounds ptr, ptr %3, i64 44
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef zeroext i1 %5(ptr noundef nonnull align 8 dereferenceable(26) %2) #8
  ret i1 %6
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { optsize }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind }
attributes #11 = { nounwind optsize }

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
