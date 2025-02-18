; ModuleID = 'blender/source/blender/blenkernel/intern/addon.c'
source_filename = "blender/source/blender/blenkernel/intern/addon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@global_addonpreftype_hash = internal unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [36 x i8] c"search for unknown addon-pref '%s'\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"search for empty addon-pref\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@__func__.BKE_addon_pref_type_init = private unnamed_addr constant [25 x i8] c"BKE_addon_pref_type_init\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_addon_pref_type_find(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = load i8, ptr %0, align 1, !tbaa !34
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %14, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr @global_addonpreftype_hash, align 8, !tbaa !37
  %7 = tail call ptr @BLI_ghash_lookup(ptr noundef %6, ptr noundef nonnull %0) #3
  %8 = icmp ne ptr %7, null
  %9 = icmp ne i8 %1, 0
  %10 = or i1 %9, %8
  br i1 %10, label %13, label %11

11:                                               ; preds = %5
  %12 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull %0)
  br label %13

13:                                               ; preds = %11, %5
  br i1 %8, label %19, label %18

14:                                               ; preds = %2
  %15 = icmp eq i8 %1, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %14
  %17 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1)
  br label %18

18:                                               ; preds = %13, %14, %16
  br label %19

19:                                               ; preds = %13, %18
  %20 = phi ptr [ %7, %13 ], [ null, %18 ]
  ret ptr %20
}

declare ptr @BLI_ghash_lookup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BKE_addon_pref_type_add(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @global_addonpreftype_hash, align 8, !tbaa !37
  tail call void @BLI_ghash_insert(ptr noundef %2, ptr noundef %0, ptr noundef %0) #3
  ret void
}

declare void @BLI_ghash_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @BKE_addon_pref_type_remove(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @global_addonpreftype_hash, align 8, !tbaa !37
  %3 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  %4 = tail call zeroext i8 @BLI_ghash_remove(ptr noundef %2, ptr noundef %0, ptr noundef null, ptr noundef %3) #3
  ret void
}

declare zeroext i8 @BLI_ghash_remove(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @BKE_addon_pref_type_init() local_unnamed_addr #0 {
  %1 = tail call ptr @BLI_ghash_str_new(ptr noundef nonnull @__func__.BKE_addon_pref_type_init) #3
  store ptr %1, ptr @global_addonpreftype_hash, align 8, !tbaa !37
  ret void
}

declare ptr @BLI_ghash_str_new(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @BKE_addon_pref_type_free() local_unnamed_addr #0 {
  %1 = load ptr, ptr @global_addonpreftype_hash, align 8, !tbaa !37
  %2 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  tail call void @BLI_ghash_free(ptr noundef %1, ptr noundef null, ptr noundef %2) #3
  store ptr null, ptr @global_addonpreftype_hash, align 8, !tbaa !37
  ret void
}

declare void @BLI_ghash_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
!35 = !{!"omnipotent char", !36, i64 0}
!36 = !{!"Simple C/C++ TBAA"}
!37 = !{!38, !38, i64 0}
!38 = !{!"any pointer", !35, i64 0}
