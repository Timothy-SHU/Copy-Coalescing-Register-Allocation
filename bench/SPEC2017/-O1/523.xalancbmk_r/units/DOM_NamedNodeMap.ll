; ModuleID = 'DOM_NamedNodeMap.cpp'
source_filename = "DOM_NamedNodeMap.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::DOM_NamedNodeMap" = type <{ ptr, i16, [6 x i8] }>
%"class.xercesc_2_7::DOM_Node" = type { ptr }

$__clang_call_terminate = comdat any

@_ZN11xercesc_2_716DOM_NamedNodeMap11NNM_ELEMENTE = dso_local local_unnamed_addr constant i16 0, align 2
@_ZN11xercesc_2_716DOM_NamedNodeMap9NNM_OTHERE = dso_local local_unnamed_addr constant i16 1, align 2

@_ZN11xercesc_2_716DOM_NamedNodeMapC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_716DOM_NamedNodeMapC2Ev
@_ZN11xercesc_2_716DOM_NamedNodeMapC1ERKS0_ = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_716DOM_NamedNodeMapC2ERKS0_
@_ZN11xercesc_2_716DOM_NamedNodeMapC1EPNS_16NamedNodeMapImplE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_716DOM_NamedNodeMapC2EPNS_16NamedNodeMapImplE
@_ZN11xercesc_2_716DOM_NamedNodeMapC1EPNS_8NodeImplE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_716DOM_NamedNodeMapC2EPNS_8NodeImplE
@_ZN11xercesc_2_716DOM_NamedNodeMapD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_716DOM_NamedNodeMapD2Ev

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_716DOM_NamedNodeMapC2Ev(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(10) %0) unnamed_addr #0 align 2 !prof !34 {
  store ptr null, ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOM_NamedNodeMap", ptr %0, i64 0, i32 1
  store i16 1, ptr %2, align 8, !tbaa !41
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_716DOM_NamedNodeMapC2ERKS0_(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(10) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(10) %1) unnamed_addr #1 align 2 !prof !34 {
  %3 = load ptr, ptr %1, align 8, !tbaa !35
  store ptr %3, ptr %0, align 8, !tbaa !35
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOM_NamedNodeMap", ptr %1, i64 0, i32 1
  %5 = load i16, ptr %4, align 8, !tbaa !41
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOM_NamedNodeMap", ptr %0, i64 0, i32 1
  store i16 %5, ptr %6, align 8, !tbaa !41
  %7 = load i16, ptr %4, align 8, !tbaa !41
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  tail call void @_ZN11xercesc_2_714RefCountedImpl6addRefEPS0_(ptr noundef %3)
  br label %11

10:                                               ; preds = %2
  tail call void @_ZN11xercesc_2_716NamedNodeMapImpl6addRefEPS0_(ptr noundef %3)
  br label %11

11:                                               ; preds = %10, %9
  ret void
}

declare void @_ZN11xercesc_2_714RefCountedImpl6addRefEPS0_(ptr noundef) local_unnamed_addr #2

declare void @_ZN11xercesc_2_716NamedNodeMapImpl6addRefEPS0_(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_716DOM_NamedNodeMapC2EPNS_16NamedNodeMapImplE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(10) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !34 {
  store ptr %1, ptr %0, align 8, !tbaa !35
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOM_NamedNodeMap", ptr %0, i64 0, i32 1
  store i16 1, ptr %3, align 8, !tbaa !41
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call void @_ZN11xercesc_2_716NamedNodeMapImpl6addRefEPS0_(ptr noundef nonnull %1)
  br label %6

6:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_716DOM_NamedNodeMapC2EPNS_8NodeImplE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(10) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !34 {
  store ptr %1, ptr %0, align 8, !tbaa !35
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOM_NamedNodeMap", ptr %0, i64 0, i32 1
  store i16 0, ptr %3, align 8, !tbaa !41
  tail call void @_ZN11xercesc_2_714RefCountedImpl6addRefEPS0_(ptr noundef %1)
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_716DOM_NamedNodeMapD2Ev(ptr nocapture noundef nonnull readonly align 8 dereferenceable(10) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOM_NamedNodeMap", ptr %0, i64 0, i32 1
  %3 = load i16, ptr %2, align 8, !tbaa !41
  %4 = icmp eq i16 %3, 1
  %5 = load ptr, ptr %0, align 8, !tbaa !35
  br i1 %4, label %6, label %7

6:                                                ; preds = %1
  invoke void @_ZN11xercesc_2_716NamedNodeMapImpl9removeRefEPS0_(ptr noundef %5)
          to label %8 unwind label %9

7:                                                ; preds = %1
  invoke void @_ZN11xercesc_2_714RefCountedImpl9removeRefEPS0_(ptr noundef %5)
          to label %8 unwind label %9

8:                                                ; preds = %7, %6
  ret void

9:                                                ; preds = %7, %6
  %10 = landingpad { ptr, i32 }
          catch ptr null
  %11 = extractvalue { ptr, i32 } %10, 0
  tail call void @__clang_call_terminate(ptr %11) #6
  unreachable
}

declare void @_ZN11xercesc_2_716NamedNodeMapImpl9removeRefEPS0_(ptr noundef) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat !prof !34 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #7
  tail call void @_ZSt9terminatev() #6
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

declare void @_ZN11xercesc_2_714RefCountedImpl9removeRefEPS0_(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_716DOM_NamedNodeMapeqERKS0_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(10) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(10) %1) local_unnamed_addr #5 align 2 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = load ptr, ptr %1, align 8, !tbaa !35
  %5 = icmp eq ptr %3, %4
  ret i1 %5
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_716DOM_NamedNodeMapneERKS0_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(10) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(10) %1) local_unnamed_addr #5 align 2 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = load ptr, ptr %1, align 8, !tbaa !35
  %5 = icmp ne ptr %3, %4
  ret i1 %5
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_716DOM_NamedNodeMapeqEPKNS_11DOM_NullPtrE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(10) %0, ptr nocapture noundef readnone %1) local_unnamed_addr #5 align 2 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = icmp eq ptr %3, null
  ret i1 %4
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_716DOM_NamedNodeMapneEPKNS_11DOM_NullPtrE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(10) %0, ptr nocapture noundef readnone %1) local_unnamed_addr #5 align 2 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = icmp ne ptr %3, null
  ret i1 %4
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(10) ptr @_ZN11xercesc_2_716DOM_NamedNodeMapaSERKS0_(ptr noundef nonnull returned align 8 dereferenceable(10) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(10) %1) local_unnamed_addr #1 align 2 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = load ptr, ptr %1, align 8, !tbaa !35
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %19, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOM_NamedNodeMap", ptr %0, i64 0, i32 1
  %8 = load i16, ptr %7, align 8, !tbaa !41
  %9 = icmp eq i16 %8, 1
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  tail call void @_ZN11xercesc_2_716NamedNodeMapImpl9removeRefEPS0_(ptr noundef %3)
  br label %12

11:                                               ; preds = %6
  tail call void @_ZN11xercesc_2_714RefCountedImpl9removeRefEPS0_(ptr noundef %3)
  br label %12

12:                                               ; preds = %11, %10
  %13 = load ptr, ptr %1, align 8, !tbaa !35
  store ptr %13, ptr %0, align 8, !tbaa !35
  %14 = getelementptr inbounds %"class.xercesc_2_7::DOM_NamedNodeMap", ptr %1, i64 0, i32 1
  %15 = load i16, ptr %14, align 8, !tbaa !41
  store i16 %15, ptr %7, align 8, !tbaa !41
  %16 = icmp eq i16 %15, 1
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  tail call void @_ZN11xercesc_2_716NamedNodeMapImpl6addRefEPS0_(ptr noundef %13)
  br label %19

18:                                               ; preds = %12
  tail call void @_ZN11xercesc_2_714RefCountedImpl6addRefEPS0_(ptr noundef %13)
  br label %19

19:                                               ; preds = %17, %18, %2
  ret ptr %0
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(10) ptr @_ZN11xercesc_2_716DOM_NamedNodeMapaSEPKNS_11DOM_NullPtrE(ptr noundef nonnull returned align 8 dereferenceable(10) %0, ptr nocapture noundef readnone %1) local_unnamed_addr #1 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOM_NamedNodeMap", ptr %0, i64 0, i32 1
  %4 = load i16, ptr %3, align 8, !tbaa !41
  %5 = icmp eq i16 %4, 1
  %6 = load ptr, ptr %0, align 8, !tbaa !35
  br i1 %5, label %7, label %8

7:                                                ; preds = %2
  tail call void @_ZN11xercesc_2_716NamedNodeMapImpl9removeRefEPS0_(ptr noundef %6)
  br label %9

8:                                                ; preds = %2
  tail call void @_ZN11xercesc_2_714RefCountedImpl9removeRefEPS0_(ptr noundef %6)
  br label %9

9:                                                ; preds = %8, %7
  store ptr null, ptr %0, align 8, !tbaa !35
  store i16 1, ptr %3, align 8, !tbaa !41
  ret ptr %0
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xercesc_2_716DOM_NamedNodeMap12getNamedItemERKNS_9DOMStringE(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(10) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 align 2 !prof !34 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOM_NamedNodeMap", ptr %1, i64 0, i32 1
  %5 = load i16, ptr %4, align 8, !tbaa !41
  %6 = icmp eq i16 %5, 1
  %7 = load ptr, ptr %1, align 8, !tbaa !35
  %8 = load ptr, ptr %7, align 8, !tbaa !42
  br i1 %6, label %9, label %13

9:                                                ; preds = %3
  %10 = getelementptr inbounds ptr, ptr %8, i64 6
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %17

13:                                               ; preds = %3
  %14 = getelementptr inbounds ptr, ptr %8, i64 66
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(104) %7, ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %17

17:                                               ; preds = %13, %9
  %18 = phi ptr [ %16, %13 ], [ %12, %9 ]
  tail call void @_ZN11xercesc_2_78DOM_NodeC1EPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %18)
  ret void
}

declare void @_ZN11xercesc_2_78DOM_NodeC1EPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_716DOM_NamedNodeMap12setNamedItemENS_8DOM_NodeE(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(10) %1, ptr nocapture noundef readonly %2) local_unnamed_addr #1 align 2 !prof !34 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOM_NamedNodeMap", ptr %1, i64 0, i32 1
  %5 = load i16, ptr %4, align 8, !tbaa !41
  %6 = icmp eq i16 %5, 1
  %7 = load ptr, ptr %1, align 8, !tbaa !35
  %8 = load ptr, ptr %2, align 8, !tbaa !44
  %9 = load ptr, ptr %7, align 8, !tbaa !42
  br i1 %6, label %10, label %14

10:                                               ; preds = %3
  %11 = getelementptr inbounds ptr, ptr %9, i64 10
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %8)
  br label %18

14:                                               ; preds = %3
  %15 = getelementptr inbounds ptr, ptr %9, i64 70
  %16 = load ptr, ptr %15, align 8
  %17 = tail call noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(104) %7, ptr noundef %8)
  br label %18

18:                                               ; preds = %14, %10
  %19 = phi ptr [ %17, %14 ], [ %13, %10 ]
  tail call void @_ZN11xercesc_2_78DOM_NodeC1EPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %19)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_716DOM_NamedNodeMap15removeNamedItemERKNS_9DOMStringE(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(10) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 align 2 !prof !34 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOM_NamedNodeMap", ptr %1, i64 0, i32 1
  %5 = load i16, ptr %4, align 8, !tbaa !41
  %6 = icmp eq i16 %5, 1
  %7 = load ptr, ptr %1, align 8, !tbaa !35
  %8 = load ptr, ptr %7, align 8, !tbaa !42
  br i1 %6, label %9, label %13

9:                                                ; preds = %3
  %10 = getelementptr inbounds ptr, ptr %8, i64 9
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %17

13:                                               ; preds = %3
  %14 = getelementptr inbounds ptr, ptr %8, i64 69
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(104) %7, ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %17

17:                                               ; preds = %13, %9
  %18 = phi ptr [ %16, %13 ], [ %12, %9 ]
  tail call void @_ZN11xercesc_2_78DOM_NodeC1EPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %18)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xercesc_2_716DOM_NamedNodeMap4itemEj(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(10) %1, i32 noundef %2) local_unnamed_addr #1 align 2 !prof !34 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOM_NamedNodeMap", ptr %1, i64 0, i32 1
  %5 = load i16, ptr %4, align 8, !tbaa !41
  %6 = icmp eq i16 %5, 1
  %7 = load ptr, ptr %1, align 8, !tbaa !35
  %8 = load ptr, ptr %7, align 8, !tbaa !42
  br i1 %6, label %9, label %13

9:                                                ; preds = %3
  %10 = getelementptr inbounds ptr, ptr %8, i64 7
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef %2)
  br label %17

13:                                               ; preds = %3
  %14 = getelementptr inbounds ptr, ptr %8, i64 67
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(104) %7, i32 noundef %2)
  br label %17

17:                                               ; preds = %13, %9
  %18 = phi ptr [ %16, %13 ], [ %12, %9 ]
  tail call void @_ZN11xercesc_2_78DOM_NodeC1EPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %18)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_716DOM_NamedNodeMap9getLengthEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(10) %0) local_unnamed_addr #1 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOM_NamedNodeMap", ptr %0, i64 0, i32 1
  %3 = load i16, ptr %2, align 8, !tbaa !41
  %4 = icmp eq i16 %3, 1
  %5 = load ptr, ptr %0, align 8, !tbaa !35
  %6 = load ptr, ptr %5, align 8, !tbaa !42
  br i1 %4, label %7, label %11

7:                                                ; preds = %1
  %8 = getelementptr inbounds ptr, ptr %6, i64 5
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef i32 %9(ptr noundef nonnull align 8 dereferenceable(32) %5)
  br label %15

11:                                               ; preds = %1
  %12 = getelementptr inbounds ptr, ptr %6, i64 65
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef i32 %13(ptr noundef nonnull align 8 dereferenceable(104) %5)
  br label %15

15:                                               ; preds = %11, %7
  %16 = phi i32 [ %10, %7 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_716DOM_NamedNodeMap14getNamedItemNSERKNS_9DOMStringES3_(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(10) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #1 align 2 !prof !34 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOM_NamedNodeMap", ptr %1, i64 0, i32 1
  %6 = load i16, ptr %5, align 8, !tbaa !41
  %7 = icmp eq i16 %6, 1
  %8 = load ptr, ptr %1, align 8, !tbaa !35
  %9 = load ptr, ptr %8, align 8, !tbaa !42
  br i1 %7, label %10, label %14

10:                                               ; preds = %4
  %11 = getelementptr inbounds ptr, ptr %9, i64 13
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %18

14:                                               ; preds = %4
  %15 = getelementptr inbounds ptr, ptr %9, i64 73
  %16 = load ptr, ptr %15, align 8
  %17 = tail call noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(104) %8, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %18

18:                                               ; preds = %14, %10
  %19 = phi ptr [ %17, %14 ], [ %13, %10 ]
  tail call void @_ZN11xercesc_2_78DOM_NodeC1EPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %19)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_716DOM_NamedNodeMap14setNamedItemNSENS_8DOM_NodeE(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(10) %1, ptr nocapture noundef readonly %2) local_unnamed_addr #1 align 2 !prof !34 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOM_NamedNodeMap", ptr %1, i64 0, i32 1
  %5 = load i16, ptr %4, align 8, !tbaa !41
  %6 = icmp eq i16 %5, 1
  %7 = load ptr, ptr %1, align 8, !tbaa !35
  %8 = load ptr, ptr %2, align 8, !tbaa !44
  %9 = load ptr, ptr %7, align 8, !tbaa !42
  br i1 %6, label %10, label %14

10:                                               ; preds = %3
  %11 = getelementptr inbounds ptr, ptr %9, i64 14
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %8)
  br label %18

14:                                               ; preds = %3
  %15 = getelementptr inbounds ptr, ptr %9, i64 74
  %16 = load ptr, ptr %15, align 8
  %17 = tail call noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(104) %7, ptr noundef %8)
  br label %18

18:                                               ; preds = %14, %10
  %19 = phi ptr [ %17, %14 ], [ %13, %10 ]
  tail call void @_ZN11xercesc_2_78DOM_NodeC1EPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %19)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_716DOM_NamedNodeMap17removeNamedItemNSERKNS_9DOMStringES3_(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(10) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #1 align 2 !prof !34 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOM_NamedNodeMap", ptr %1, i64 0, i32 1
  %6 = load i16, ptr %5, align 8, !tbaa !41
  %7 = icmp eq i16 %6, 1
  %8 = load ptr, ptr %1, align 8, !tbaa !35
  %9 = load ptr, ptr %8, align 8, !tbaa !42
  br i1 %7, label %10, label %14

10:                                               ; preds = %4
  %11 = getelementptr inbounds ptr, ptr %9, i64 15
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %18

14:                                               ; preds = %4
  %15 = getelementptr inbounds ptr, ptr %9, i64 75
  %16 = load ptr, ptr %15, align 8
  %17 = tail call noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(104) %8, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %18

18:                                               ; preds = %14, %10
  %19 = phi ptr [ %17, %14 ], [ %13, %10 ]
  tail call void @_ZN11xercesc_2_78DOM_NodeC1EPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %19)
  ret void
}

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind }

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
!35 = !{!36, !37, i64 0}
!36 = !{!"_ZTSN11xercesc_2_716DOM_NamedNodeMapE", !37, i64 0, !40, i64 8}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C++ TBAA"}
!40 = !{!"short", !38, i64 0}
!41 = !{!36, !40, i64 8}
!42 = !{!43, !43, i64 0}
!43 = !{!"vtable pointer", !39, i64 0}
!44 = !{!45, !37, i64 0}
!45 = !{!"_ZTSN11xercesc_2_78DOM_NodeE", !37, i64 0}
