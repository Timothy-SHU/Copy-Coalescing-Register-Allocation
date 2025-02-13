; ModuleID = 'blender_bin/source/blender/makesrna/intern/rna_sound_gen.c'
source_filename = "blender_bin/source/blender/makesrna/intern/rna_sound_gen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.StructRNA = type { %struct.ContainerRNA, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase }
%struct.ContainerRNA = type { ptr, ptr, ptr, %struct.ListBase }
%struct.ListBase = type { ptr, ptr }
%struct.PointerPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr }
%struct.PropertyRNA = type { ptr, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, i32, ptr, i32, [3 x i32], i32, ptr, i32, ptr, ptr, i32, i32, ptr, ptr }
%struct.StringPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.BoolPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.CollectionPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.bSound = type { %struct.ID, [1024 x i8], ptr, ptr, ptr, ptr, float, float, float, float, float, float, i32, i32, ptr, ptr, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }

@RNA_PackedFile = external global %struct.StructRNA, align 8
@rna_Sound_packed_file = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_Sound_use_memory_cache, ptr @rna_Sound_filepath, i32 -1, ptr @.str.5, i32 8388608, ptr @.str.6, ptr @.str.4, i32 0, ptr @.str.3, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Sound_packed_file_get, ptr null, ptr null, ptr null, ptr @RNA_PackedFile }, align 8
@.str = private unnamed_addr constant [9 x i8] c"filepath\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"File Path\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"Sound sample file used by this Sound datablock\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@rna_Sound_filepath = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_Sound_packed_file, ptr null, i32 -1, ptr @.str, i32 262145, ptr @.str.1, ptr @.str.2, i32 0, ptr @.str.3, i32 3, i32 1, ptr null, i32 0, [3 x i32] [i32 1024, i32 0, i32 0], i32 0, ptr @rna_Sound_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Sound_filepath_get, ptr @Sound_filepath_length, ptr @Sound_filepath_set, ptr null, ptr null, ptr null, i32 1024, ptr @.str.4 }, align 8
@rna_Sound_use_memory_cache = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Sound_use_mono, ptr @rna_Sound_packed_file, i32 -1, ptr @.str.7, i32 3, ptr @.str.8, ptr @.str.9, i32 0, ptr @.str.3, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sound_caching_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Sound_use_memory_cache_get, ptr @Sound_use_memory_cache_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.5 = private unnamed_addr constant [12 x i8] c"packed_file\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"Packed File\00", align 1
@rna_Sound_use_mono = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_Sound_use_memory_cache, i32 -1, ptr @.str.10, i32 3, ptr @.str.11, ptr @.str.12, i32 0, ptr @.str.3, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sound_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Sound_use_mono_get, ptr @Sound_use_mono_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.7 = private unnamed_addr constant [17 x i8] c"use_memory_cache\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"Caching\00", align 1
@.str.9 = private unnamed_addr constant [46 x i8] c"The sound file is decoded and loaded into RAM\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"use_mono\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"Mono\00", align 1
@.str.12 = private unnamed_addr constant [79 x i8] c"If the file contains multiple audio channels they are rendered to a single one\00", align 1
@RNA_UILayout = external global %struct.StructRNA, align 8
@RNA_TimelineMarker = external global %struct.StructRNA, align 8
@.str.13 = private unnamed_addr constant [6 x i8] c"Sound\00", align 1
@.str.14 = private unnamed_addr constant [61 x i8] c"Sound datablock referencing an external or packed sound file\00", align 1
@rna_ID_name = external global %struct.StringPropertyRNA, align 8
@rna_ID_rna_properties = external global %struct.CollectionPropertyRNA, align 8
@RNA_ID = external global %struct.StructRNA, align 8
@RNA_Sound = dso_local local_unnamed_addr global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_UILayout, ptr @RNA_TimelineMarker, ptr null, %struct.ListBase { ptr @rna_Sound_filepath, ptr @rna_Sound_use_mono } }, ptr @.str.13, ptr null, ptr null, i32 7, ptr @.str.13, ptr @.str.14, ptr @.str.3, i32 114, ptr @rna_ID_name, ptr @rna_ID_rna_properties, ptr @RNA_ID, ptr null, ptr @rna_ID_refine, ptr null, ptr null, ptr null, ptr null, ptr @rna_ID_idprops, %struct.ListBase zeroinitializer }, align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Sound_filepath_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.bSound, ptr %4, i64 0, i32 1
  %6 = tail call ptr @BLI_strncpy(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #6
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Sound_filepath_length(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.bSound, ptr %3, i64 0, i32 1
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #7
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Sound_filepath_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.bSound, ptr %4, i64 0, i32 1
  %6 = tail call ptr @BLI_strncpy(ptr noundef nonnull %5, ptr noundef %1, i64 noundef 1024) #6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Sound_packed_file_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.bSound, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !40
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_PackedFile, ptr noundef %6) #6
  ret void
}

; Function Attrs: optsize
declare void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Sound_use_memory_cache_get(ptr nocapture noundef readonly %0) #4 {
  %2 = tail call fastcc i32 @rna_Sound_caching_get(ptr noundef %0) #8, !range !46
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @rna_Sound_caching_get(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !47 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.bSound, ptr %3, i64 0, i32 12
  %5 = load i32, ptr %4, align 8, !tbaa !48
  %6 = lshr i32 %5, 4
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Sound_use_memory_cache_set(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  tail call fastcc void @rna_Sound_caching_set(ptr noundef %0, i32 noundef %1) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Sound_caching_set(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !49 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @sound_cache(ptr noundef %4) #6
  br label %8

7:                                                ; preds = %2
  tail call void @sound_delete_cache(ptr noundef %4) #6
  br label %8

8:                                                ; preds = %7, %6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Sound_use_mono_get(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.bSound, ptr %3, i64 0, i32 12
  %5 = load i32, ptr %4, align 8, !tbaa !48
  %6 = lshr i32 %5, 5
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Sound_use_mono_set(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.bSound, ptr %4, i64 0, i32 12
  %7 = load i32, ptr %6, align 8, !tbaa !48
  %8 = and i32 %7, -33
  %9 = select i1 %5, i32 0, i32 32
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !48
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rna_Sound_update(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !50 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  tail call void @sound_load(ptr noundef %0, ptr noundef %5) #6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rna_Sound_caching_update(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !51 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  tail call void @sound_update_sequencer(ptr noundef %0, ptr noundef %5) #6
  ret void
}

; Function Attrs: optsize
declare ptr @rna_ID_refine(ptr noundef) #1

; Function Attrs: optsize
declare ptr @rna_ID_idprops(ptr noundef, i8 noundef zeroext) #1

; Function Attrs: optsize
declare void @sound_cache(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @sound_delete_cache(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @sound_load(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @sound_update_sequencer(ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind optsize }
attributes #7 = { nounwind optsize willreturn memory(read) }
attributes #8 = { optsize }

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
!34 = !{!35, !37, i64 16}
!35 = !{!"PointerRNA", !36, i64 0, !37, i64 8, !37, i64 16}
!36 = !{!"", !37, i64 0}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!41, !37, i64 1144}
!41 = !{!"bSound", !42, i64 0, !38, i64 120, !37, i64 1144, !37, i64 1152, !37, i64 1160, !37, i64 1168, !45, i64 1176, !45, i64 1180, !45, i64 1184, !45, i64 1188, !45, i64 1192, !45, i64 1196, !44, i64 1200, !44, i64 1204, !37, i64 1208, !37, i64 1216, !37, i64 1224}
!42 = !{!"ID", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !43, i64 98, !44, i64 100, !44, i64 104, !44, i64 108, !37, i64 112}
!43 = !{!"short", !38, i64 0}
!44 = !{!"int", !38, i64 0}
!45 = !{!"float", !38, i64 0}
!46 = !{i32 0, i32 2}
!47 = !{!"rna_sound_gen.c:rna_Sound_caching_get"}
!48 = !{!41, !44, i64 1200}
!49 = !{!"rna_sound_gen.c:rna_Sound_caching_set"}
!50 = !{!"rna_sound_gen.c:rna_Sound_update"}
!51 = !{!"rna_sound_gen.c:rna_Sound_caching_update"}
