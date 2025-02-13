; ModuleID = 'blender/intern/ghost/intern/GHOST_ContextNone.cpp'
source_filename = "blender/intern/ghost/intern/GHOST_ContextNone.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.GHOST_ContextNone = type <{ %class.GHOST_Context, i32, [4 x i8] }>
%class.GHOST_Context = type { ptr, i8, i16, ptr }

$_ZN17GHOST_ContextNoneD0Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN13GHOST_ContextD2Ev = comdat any

$_ZN13GHOST_ContextD0Ev = comdat any

$_ZN13GHOST_Context20updateDrawingContextEv = comdat any

$_ZN13GHOST_Context15setSwapIntervalEi = comdat any

$_ZN13GHOST_Context15getSwapIntervalERi = comdat any

$_ZTS13GHOST_Context = comdat any

$_ZTI13GHOST_Context = comdat any

$_ZTV13GHOST_Context = comdat any

@_ZTV17GHOST_ContextNone = dso_local unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTI17GHOST_ContextNone, ptr @_ZN13GHOST_ContextD2Ev, ptr @_ZN17GHOST_ContextNoneD0Ev, ptr @_ZN17GHOST_ContextNone11swapBuffersEv, ptr @_ZN17GHOST_ContextNone22activateDrawingContextEv, ptr @_ZN17GHOST_ContextNone24initializeDrawingContextEv, ptr @_ZN17GHOST_ContextNone20updateDrawingContextEv, ptr @_ZN17GHOST_ContextNone20releaseNativeHandlesEv, ptr @_ZN17GHOST_ContextNone15setSwapIntervalEi, ptr @_ZN17GHOST_ContextNone15getSwapIntervalERi] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS17GHOST_ContextNone = dso_local constant [20 x i8] c"17GHOST_ContextNone\00", align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTS13GHOST_Context = linkonce_odr dso_local constant [16 x i8] c"13GHOST_Context\00", comdat, align 1
@_ZTI13GHOST_Context = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS13GHOST_Context }, comdat, align 8
@_ZTI17GHOST_ContextNone = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS17GHOST_ContextNone, ptr @_ZTI13GHOST_Context }, align 8
@_ZTV13GHOST_Context = linkonce_odr dso_local unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTI13GHOST_Context, ptr @_ZN13GHOST_ContextD2Ev, ptr @_ZN13GHOST_ContextD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN13GHOST_Context20updateDrawingContextEv, ptr @__cxa_pure_virtual, ptr @_ZN13GHOST_Context15setSwapIntervalEi, ptr @_ZN13GHOST_Context15getSwapIntervalERi] }, comdat, align 8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN17GHOST_ContextNone11swapBuffersEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #0 align 2 {
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN17GHOST_ContextNone22activateDrawingContextEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #0 align 2 {
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN17GHOST_ContextNone20updateDrawingContextEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #0 align 2 {
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN17GHOST_ContextNone24initializeDrawingContextEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #0 align 2 {
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN17GHOST_ContextNone20releaseNativeHandlesEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #0 align 2 {
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @_ZN17GHOST_ContextNone15setSwapIntervalEi(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(28) %0, i32 noundef %1) unnamed_addr #1 align 2 {
  %3 = getelementptr inbounds %class.GHOST_ContextNone, ptr %0, i64 0, i32 1
  store i32 %1, ptr %3, align 8, !tbaa !34
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @_ZN17GHOST_ContextNone15getSwapIntervalERi(ptr nocapture noundef nonnull readonly align 8 dereferenceable(28) %0, ptr nocapture noundef nonnull writeonly align 4 dereferenceable(4) %1) unnamed_addr #2 align 2 {
  %3 = getelementptr inbounds %class.GHOST_ContextNone, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !34
  store i32 %4, ptr %1, align 4, !tbaa !43
  ret i32 1
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN17GHOST_ContextNoneD0Ev(ptr noundef nonnull align 8 dereferenceable(28) %0) unnamed_addr #3 comdat align 2 {
  tail call void @_ZN13GHOST_ContextD2Ev(ptr noundef nonnull align 8 dereferenceable(28) %0) #8
  tail call void @_ZdlPv(ptr noundef nonnull %0) #9
  ret void
}

; Function Attrs: optsize
declare void @mxDestroyContext(ptr noundef) local_unnamed_addr #4

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #10
  tail call void @_ZSt9terminatev() #11
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN13GHOST_ContextD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTV13GHOST_Context, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !44
  %2 = getelementptr inbounds %class.GHOST_Context, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  invoke void @mxDestroyContext(ptr noundef %3) #12
          to label %4 unwind label %5

4:                                                ; preds = %1
  ret void

5:                                                ; preds = %1
  %6 = landingpad { ptr, i32 }
          catch ptr null
  %7 = extractvalue { ptr, i32 } %6, 0
  tail call void @__clang_call_terminate(ptr %7) #11
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN13GHOST_ContextD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 {
  tail call void @llvm.trap() #11
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN13GHOST_Context20updateDrawingContextEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 {
  ret i32 0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN13GHOST_Context15setSwapIntervalEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) unnamed_addr #3 comdat align 2 {
  ret i32 0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN13GHOST_Context15getSwapIntervalERi(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) unnamed_addr #3 comdat align 2 {
  ret i32 0
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #6

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #7

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #7 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind optsize }
attributes #9 = { builtin nounwind optsize }
attributes #10 = { nounwind }
attributes #11 = { noreturn nounwind }
attributes #12 = { optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 6524701}
!4 = !{!"MaxCount", i64 1843200}
!5 = !{!"MaxInternalCount", i64 1843200}
!6 = !{!"MaxFunctionCount", i64 28800}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1843200, i32 3}
!14 = !{i32 100000, i64 1843200, i32 3}
!15 = !{i32 200000, i64 1843200, i32 3}
!16 = !{i32 300000, i64 1843200, i32 3}
!17 = !{i32 400000, i64 1843200, i32 3}
!18 = !{i32 500000, i64 1843200, i32 3}
!19 = !{i32 600000, i64 1843200, i32 3}
!20 = !{i32 700000, i64 1843200, i32 3}
!21 = !{i32 800000, i64 1843200, i32 3}
!22 = !{i32 900000, i64 921600, i32 4}
!23 = !{i32 950000, i64 921600, i32 4}
!24 = !{i32 990000, i64 28800, i32 6}
!25 = !{i32 999000, i64 14400, i32 7}
!26 = !{i32 999900, i64 1440, i32 8}
!27 = !{i32 999990, i64 1440, i32 8}
!28 = !{i32 999999, i64 1, i32 37}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !42, i64 24}
!35 = !{!"_ZTS17GHOST_ContextNone", !36, i64 0, !42, i64 24}
!36 = !{!"_ZTS13GHOST_Context", !37, i64 8, !40, i64 10, !41, i64 16}
!37 = !{!"bool", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C++ TBAA"}
!40 = !{!"short", !38, i64 0}
!41 = !{!"any pointer", !38, i64 0}
!42 = !{!"int", !38, i64 0}
!43 = !{!42, !42, i64 0}
!44 = !{!45, !45, i64 0}
!45 = !{!"vtable pointer", !39, i64 0}
!46 = !{!36, !41, i64 16}
