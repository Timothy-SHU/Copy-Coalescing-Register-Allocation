; ModuleID = 'DOM_Range.cpp'
source_filename = "DOM_Range.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::DOM_Node" = type { ptr }
%"class.xercesc_2_7::DOM_DocumentFragment" = type { %"class.xercesc_2_7::DOM_Node" }
%"class.xercesc_2_7::DOM_Range" = type { ptr }
%"class.xercesc_2_7::DOMString" = type { ptr }

$__clang_call_terminate = comdat any

@_ZN11xercesc_2_79DOM_RangeC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_79DOM_RangeC2Ev
@_ZN11xercesc_2_79DOM_RangeC1EPNS_9RangeImplE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_79DOM_RangeC2EPNS_9RangeImplE
@_ZN11xercesc_2_79DOM_RangeC1ERKS0_ = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_79DOM_RangeC2ERKS0_
@_ZN11xercesc_2_79DOM_RangeD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_79DOM_RangeD2Ev

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_79DOM_RangeC2Ev(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(8) %0) unnamed_addr #0 align 2 !prof !34 {
  store ptr null, ptr %0, align 8, !tbaa !35
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79DOM_RangeC2EPNS_9RangeImplE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !34 {
  store ptr %1, ptr %0, align 8, !tbaa !35
  tail call void @_ZN11xercesc_2_714RefCountedImpl6addRefEPS0_(ptr noundef %1) #6
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_714RefCountedImpl6addRefEPS0_(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79DOM_RangeC2ERKS0_(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(8) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %1) unnamed_addr #1 align 2 !prof !34 {
  %3 = load ptr, ptr %1, align 8, !tbaa !35
  store ptr %3, ptr %0, align 8, !tbaa !35
  tail call void @_ZN11xercesc_2_714RefCountedImpl6addRefEPS0_(ptr noundef %3) #6
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_79DOM_RangeD2Ev(ptr nocapture noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !35
  invoke void @_ZN11xercesc_2_714RefCountedImpl9removeRefEPS0_(ptr noundef %2) #6
          to label %3 unwind label %4

3:                                                ; preds = %1
  store ptr null, ptr %0, align 8, !tbaa !35
  ret void

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          catch ptr null
  %6 = extractvalue { ptr, i32 } %5, 0
  tail call void @__clang_call_terminate(ptr %6) #7
  unreachable
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_714RefCountedImpl9removeRefEPS0_(ptr noundef) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #8
  tail call void @_ZSt9terminatev() #7
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOM_RangeaSERKS0_(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %1) local_unnamed_addr #1 align 2 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = load ptr, ptr %1, align 8, !tbaa !35
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  tail call void @_ZN11xercesc_2_714RefCountedImpl9removeRefEPS0_(ptr noundef %3) #6
  %7 = load ptr, ptr %1, align 8, !tbaa !35
  store ptr %7, ptr %0, align 8, !tbaa !35
  tail call void @_ZN11xercesc_2_714RefCountedImpl6addRefEPS0_(ptr noundef %7) #6
  br label %8

8:                                                ; preds = %6, %2
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOM_RangeaSEPKNS_11DOM_NullPtrE(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr nocapture noundef readnone %1) local_unnamed_addr #1 align 2 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  tail call void @_ZN11xercesc_2_714RefCountedImpl9removeRefEPS0_(ptr noundef %3) #6
  store ptr null, ptr %0, align 8, !tbaa !35
  ret ptr %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_79DOM_RangeneERKS0_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %1) local_unnamed_addr #5 align 2 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = load ptr, ptr %1, align 8, !tbaa !35
  %5 = icmp ne ptr %3, %4
  ret i1 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_79DOM_RangeeqERKS0_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %1) local_unnamed_addr #5 align 2 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = load ptr, ptr %1, align 8, !tbaa !35
  %5 = icmp eq ptr %3, %4
  ret i1 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_79DOM_RangeneEPKNS_11DOM_NullPtrE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %0, ptr nocapture noundef readnone %1) local_unnamed_addr #5 align 2 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = icmp ne ptr %3, null
  ret i1 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_79DOM_RangeeqEPKNS_11DOM_NullPtrE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %0, ptr nocapture noundef readnone %1) local_unnamed_addr #5 align 2 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = icmp eq ptr %3, null
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xercesc_2_79DOM_Range17getStartContainerEv(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %1) local_unnamed_addr #1 align 2 !prof !34 {
  %3 = load ptr, ptr %1, align 8, !tbaa !35
  tail call void @_ZNK11xercesc_2_79RangeImpl17getStartContainerEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %3) #6
  ret void
}

; Function Attrs: optsize
declare void @_ZNK11xercesc_2_79RangeImpl17getStartContainerEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Node") align 8, ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_79DOM_Range14getStartOffsetEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %0) local_unnamed_addr #1 align 2 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !35
  %3 = tail call noundef i32 @_ZNK11xercesc_2_79RangeImpl14getStartOffsetEv(ptr noundef nonnull align 8 dereferenceable(72) %2) #6
  ret i32 %3
}

; Function Attrs: optsize
declare noundef i32 @_ZNK11xercesc_2_79RangeImpl14getStartOffsetEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xercesc_2_79DOM_Range15getEndContainerEv(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %1) local_unnamed_addr #1 align 2 !prof !34 {
  %3 = load ptr, ptr %1, align 8, !tbaa !35
  tail call void @_ZNK11xercesc_2_79RangeImpl15getEndContainerEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %3) #6
  ret void
}

; Function Attrs: optsize
declare void @_ZNK11xercesc_2_79RangeImpl15getEndContainerEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Node") align 8, ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_79DOM_Range12getEndOffsetEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %0) local_unnamed_addr #1 align 2 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !35
  %3 = tail call noundef i32 @_ZNK11xercesc_2_79RangeImpl12getEndOffsetEv(ptr noundef nonnull align 8 dereferenceable(72) %2) #6
  ret i32 %3
}

; Function Attrs: optsize
declare noundef i32 @_ZNK11xercesc_2_79RangeImpl12getEndOffsetEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xercesc_2_79DOM_Range26getCommonAncestorContainerEv(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %1) local_unnamed_addr #1 align 2 !prof !34 {
  %3 = load ptr, ptr %1, align 8, !tbaa !35
  tail call void @_ZNK11xercesc_2_79RangeImpl26getCommonAncestorContainerEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %3) #6
  ret void
}

; Function Attrs: optsize
declare void @_ZNK11xercesc_2_79RangeImpl26getCommonAncestorContainerEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Node") align 8, ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79DOM_Range8setStartERKNS_8DOM_NodeEj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) local_unnamed_addr #1 align 2 !prof !34 {
  %4 = load ptr, ptr %0, align 8, !tbaa !35
  tail call void @_ZN11xercesc_2_79RangeImpl8setStartERKNS_8DOM_NodeEj(ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) #6
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79RangeImpl8setStartERKNS_8DOM_NodeEj(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79DOM_Range6setEndERKNS_8DOM_NodeEj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) local_unnamed_addr #1 align 2 !prof !34 {
  %4 = load ptr, ptr %0, align 8, !tbaa !35
  tail call void @_ZN11xercesc_2_79RangeImpl6setEndERKNS_8DOM_NodeEj(ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) #6
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79RangeImpl6setEndERKNS_8DOM_NodeEj(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79DOM_Range14setStartBeforeERKNS_8DOM_NodeE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 align 2 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  tail call void @_ZN11xercesc_2_79RangeImpl14setStartBeforeERKNS_8DOM_NodeE(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(8) %1) #6
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79RangeImpl14setStartBeforeERKNS_8DOM_NodeE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79DOM_Range13setStartAfterERKNS_8DOM_NodeE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 align 2 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  tail call void @_ZN11xercesc_2_79RangeImpl13setStartAfterERKNS_8DOM_NodeE(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(8) %1) #6
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79RangeImpl13setStartAfterERKNS_8DOM_NodeE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79DOM_Range12setEndBeforeERKNS_8DOM_NodeE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 align 2 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  tail call void @_ZN11xercesc_2_79RangeImpl12setEndBeforeERKNS_8DOM_NodeE(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(8) %1) #6
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79RangeImpl12setEndBeforeERKNS_8DOM_NodeE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79DOM_Range11setEndAfterERKNS_8DOM_NodeE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 align 2 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  tail call void @_ZN11xercesc_2_79RangeImpl11setEndAfterERKNS_8DOM_NodeE(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(8) %1) #6
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79RangeImpl11setEndAfterERKNS_8DOM_NodeE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79DOM_Range8collapseEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %0, i1 noundef zeroext %1) local_unnamed_addr #1 align 2 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  tail call void @_ZN11xercesc_2_79RangeImpl8collapseEb(ptr noundef nonnull align 8 dereferenceable(72) %3, i1 noundef zeroext %1) #6
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79RangeImpl8collapseEb(ptr noundef nonnull align 8 dereferenceable(72), i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_79DOM_Range12getCollapsedEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %0) local_unnamed_addr #1 align 2 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !35
  %3 = tail call noundef zeroext i1 @_ZNK11xercesc_2_79RangeImpl12getCollapsedEv(ptr noundef nonnull align 8 dereferenceable(72) %2) #6
  ret i1 %3
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_79RangeImpl12getCollapsedEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79DOM_Range10selectNodeERKNS_8DOM_NodeE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 align 2 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  tail call void @_ZN11xercesc_2_79RangeImpl10selectNodeERKNS_8DOM_NodeE(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(8) %1) #6
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79RangeImpl10selectNodeERKNS_8DOM_NodeE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79DOM_Range18selectNodeContentsERKNS_8DOM_NodeE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 align 2 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  tail call void @_ZN11xercesc_2_79RangeImpl18selectNodeContentsERKNS_8DOM_NodeE(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(8) %1) #6
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79RangeImpl18selectNodeContentsERKNS_8DOM_NodeE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef signext i16 @_ZNK11xercesc_2_79DOM_Range21compareBoundaryPointsENS0_10CompareHowERKS0_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %0, i32 noundef %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2) local_unnamed_addr #1 align 2 !prof !34 {
  %4 = load ptr, ptr %0, align 8, !tbaa !35
  %5 = load ptr, ptr %2, align 8, !tbaa !35
  %6 = tail call noundef signext i16 @_ZNK11xercesc_2_79RangeImpl21compareBoundaryPointsENS_9DOM_Range10CompareHowEPS0_(ptr noundef nonnull align 8 dereferenceable(72) %4, i32 noundef %1, ptr noundef %5) #6
  ret i16 %6
}

; Function Attrs: optsize
declare noundef signext i16 @_ZNK11xercesc_2_79RangeImpl21compareBoundaryPointsENS_9DOM_Range10CompareHowEPS0_(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79DOM_Range14deleteContentsEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %0) local_unnamed_addr #1 align 2 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !35
  tail call void @_ZN11xercesc_2_79RangeImpl14deleteContentsEv(ptr noundef nonnull align 8 dereferenceable(72) %2) #6
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79RangeImpl14deleteContentsEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79DOM_Range15extractContentsEv(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOM_DocumentFragment") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %1) local_unnamed_addr #1 align 2 !prof !34 {
  %3 = load ptr, ptr %1, align 8, !tbaa !35
  tail call void @_ZN11xercesc_2_79RangeImpl15extractContentsEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_DocumentFragment") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %3) #6
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79RangeImpl15extractContentsEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_DocumentFragment") align 8, ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xercesc_2_79DOM_Range13cloneContentsEv(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOM_DocumentFragment") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %1) local_unnamed_addr #1 align 2 !prof !34 {
  %3 = load ptr, ptr %1, align 8, !tbaa !35
  tail call void @_ZNK11xercesc_2_79RangeImpl13cloneContentsEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_DocumentFragment") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %3) #6
  ret void
}

; Function Attrs: optsize
declare void @_ZNK11xercesc_2_79RangeImpl13cloneContentsEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_DocumentFragment") align 8, ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79DOM_Range10insertNodeERNS_8DOM_NodeE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 align 2 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  tail call void @_ZN11xercesc_2_79RangeImpl10insertNodeERNS_8DOM_NodeE(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(8) %1) #6
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79RangeImpl10insertNodeERNS_8DOM_NodeE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79DOM_Range16surroundContentsERNS_8DOM_NodeE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 align 2 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  tail call void @_ZN11xercesc_2_79RangeImpl16surroundContentsERNS_8DOM_NodeE(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(8) %1) #6
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79RangeImpl16surroundContentsERNS_8DOM_NodeE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xercesc_2_79DOM_Range10cloneRangeEv(ptr dead_on_unwind noalias nocapture writable writeonly sret(%"class.xercesc_2_7::DOM_Range") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %1) local_unnamed_addr #1 align 2 !prof !34 {
  %3 = load ptr, ptr %1, align 8, !tbaa !35
  %4 = tail call noundef ptr @_ZNK11xercesc_2_79RangeImpl10cloneRangeEv(ptr noundef nonnull align 8 dereferenceable(72) %3) #6
  tail call void @_ZN11xercesc_2_79DOM_RangeC2EPNS_9RangeImplE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %4) #6
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_79RangeImpl10cloneRangeEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xercesc_2_79DOM_Range8toStringEv(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOMString") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %1) local_unnamed_addr #1 align 2 !prof !34 {
  %3 = load ptr, ptr %1, align 8, !tbaa !35
  tail call void @_ZNK11xercesc_2_79RangeImpl8toStringEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %3) #6
  ret void
}

; Function Attrs: optsize
declare void @_ZNK11xercesc_2_79RangeImpl8toStringEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8, ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79DOM_Range6detachEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %0) local_unnamed_addr #1 align 2 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !35
  tail call void @_ZN11xercesc_2_79RangeImpl6detachEv(ptr noundef nonnull align 8 dereferenceable(72) %2) #6
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79RangeImpl6detachEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { optsize }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind }

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
!36 = !{!"_ZTSN11xercesc_2_79DOM_RangeE", !37, i64 0}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C++ TBAA"}
