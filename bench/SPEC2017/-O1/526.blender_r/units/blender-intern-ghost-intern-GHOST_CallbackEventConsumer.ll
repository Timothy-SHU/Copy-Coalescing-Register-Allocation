; ModuleID = 'blender/intern/ghost/intern/GHOST_CallbackEventConsumer.cpp'
source_filename = "blender/intern/ghost/intern/GHOST_CallbackEventConsumer.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.GHOST_CallbackEventConsumer = type { %class.GHOST_IEventConsumer, ptr, ptr }
%class.GHOST_IEventConsumer = type { ptr }

$_ZN20GHOST_IEventConsumerD2Ev = comdat any

$_ZN27GHOST_CallbackEventConsumerD0Ev = comdat any

$_ZTS20GHOST_IEventConsumer = comdat any

$_ZTI20GHOST_IEventConsumer = comdat any

@_ZTV27GHOST_CallbackEventConsumer = dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI27GHOST_CallbackEventConsumer, ptr @_ZN20GHOST_IEventConsumerD2Ev, ptr @_ZN27GHOST_CallbackEventConsumerD0Ev, ptr @_ZN27GHOST_CallbackEventConsumer12processEventEP12GHOST_IEvent] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS27GHOST_CallbackEventConsumer = dso_local constant [30 x i8] c"27GHOST_CallbackEventConsumer\00", align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTS20GHOST_IEventConsumer = linkonce_odr dso_local constant [23 x i8] c"20GHOST_IEventConsumer\00", comdat, align 1
@_ZTI20GHOST_IEventConsumer = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS20GHOST_IEventConsumer }, comdat, align 8
@_ZTI27GHOST_CallbackEventConsumer = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS27GHOST_CallbackEventConsumer, ptr @_ZTI20GHOST_IEventConsumer }, align 8

@_ZN27GHOST_CallbackEventConsumerC1EPFiP19GHOST_EventHandle__PvES2_ = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN27GHOST_CallbackEventConsumerC2EPFiP19GHOST_EventHandle__PvES2_

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN27GHOST_CallbackEventConsumerC2EPFiP19GHOST_EventHandle__PvES2_(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 align 2 {
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTV27GHOST_CallbackEventConsumer, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds %class.GHOST_CallbackEventConsumer, ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !37
  %5 = getelementptr inbounds %class.GHOST_CallbackEventConsumer, ptr %0, i64 0, i32 2
  store ptr %2, ptr %5, align 8, !tbaa !42
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN27GHOST_CallbackEventConsumer12processEventEP12GHOST_IEvent(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #1 align 2 {
  %3 = getelementptr inbounds %class.GHOST_CallbackEventConsumer, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !37
  %5 = getelementptr inbounds %class.GHOST_CallbackEventConsumer, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !42
  %7 = tail call noundef i32 %4(ptr noundef %1, ptr noundef %6)
  %8 = icmp ne i32 %7, 0
  ret i1 %8
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN20GHOST_IEventConsumerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 {
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN27GHOST_CallbackEventConsumerD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 {
  tail call void @_ZdlPv(ptr noundef %0) #4
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 7547212}
!8 = !{!"MaxCount", i64 1843200}
!9 = !{!"MaxInternalCount", i64 1843200}
!10 = !{!"MaxFunctionCount", i64 6}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 1843200, i32 1}
!18 = !{i32 100000, i64 1843200, i32 1}
!19 = !{i32 200000, i64 1843200, i32 1}
!20 = !{i32 300000, i64 921600, i32 7}
!21 = !{i32 400000, i64 921600, i32 7}
!22 = !{i32 500000, i64 921600, i32 7}
!23 = !{i32 600000, i64 921600, i32 7}
!24 = !{i32 700000, i64 921600, i32 7}
!25 = !{i32 800000, i64 921600, i32 7}
!26 = !{i32 900000, i64 921600, i32 7}
!27 = !{i32 950000, i64 921600, i32 7}
!28 = !{i32 990000, i64 115200, i32 8}
!29 = !{i32 999000, i64 14400, i32 12}
!30 = !{i32 999900, i64 1440, i32 13}
!31 = !{i32 999990, i64 21, i32 15}
!32 = !{i32 999999, i64 1, i32 48}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !35, i64 0}
!35 = !{!"vtable pointer", !36, i64 0}
!36 = !{!"Simple C++ TBAA"}
!37 = !{!38, !40, i64 8}
!38 = !{!"_ZTS27GHOST_CallbackEventConsumer", !39, i64 0, !40, i64 8, !40, i64 16}
!39 = !{!"_ZTS20GHOST_IEventConsumer"}
!40 = !{!"any pointer", !41, i64 0}
!41 = !{!"omnipotent char", !36, i64 0}
!42 = !{!38, !40, i64 16}
