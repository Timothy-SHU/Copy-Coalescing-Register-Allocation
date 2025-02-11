; ModuleID = 'blender/source/blender/editors/animation/anim_ipo_utils.c'
source_filename = "blender/source/blender/editors/animation/anim_ipo_utils.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.FCurve = type { ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i32, float, i16, i16, i32, ptr, i32, [3 x float], float, float }
%struct.ListBase = type { ptr, ptr }

@.str = private unnamed_addr constant [10 x i8] c"<invalid>\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"<no path>\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%s[%d]\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"bones\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"constraints\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"bones[\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"constraints[\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"%s : %s\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.8 = private unnamed_addr constant [4 x i8] c"%c \00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"[%d]\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"%s%s (%s)\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"\22%s[%d]\22\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @getname_anim_fcurve(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.PointerRNA, align 8
  %6 = alloca ptr, align 8
  %7 = alloca [16 x i8], align 16
  %8 = icmp eq ptr %0, null
  br i1 %8, label %116, label %9

9:                                                ; preds = %3
  %10 = icmp eq ptr %1, null
  %11 = icmp eq ptr %2, null
  %12 = or i1 %10, %11
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.FCurve, ptr %2, i64 0, i32 12
  %15 = load ptr, ptr %14, align 8, !tbaa !5
  %16 = icmp eq ptr %15, null
  br i1 %16, label %23, label %28

17:                                               ; preds = %9
  br i1 %11, label %18, label %19

18:                                               ; preds = %17
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %0, ptr noundef nonnull align 1 dereferenceable(10) @.str, i64 10, i1 false) #7
  br label %116

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.FCurve, ptr %2, i64 0, i32 12
  %21 = load ptr, ptr %20, align 8, !tbaa !5
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %13, %19
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %0, ptr noundef nonnull align 1 dereferenceable(10) @.str.1, i64 10, i1 false) #7
  br label %116

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.FCurve, ptr %2, i64 0, i32 11
  %26 = load i32, ptr %25, align 4, !tbaa !14
  %27 = tail call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %0, i64 noundef 256, ptr noundef nonnull @.str.2, ptr noundef nonnull %21, i32 noundef %26) #7
  br label %116

28:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #8
  call void @RNA_id_pointer_create(ptr noundef nonnull %1, ptr noundef nonnull %4) #7
  %29 = load ptr, ptr %14, align 8, !tbaa !5
  %30 = call zeroext i8 @RNA_path_resolve_property(ptr noundef nonnull %4, ptr noundef %29, ptr noundef nonnull %5, ptr noundef nonnull %6) #7
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %103, label %32

32:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #8
  %33 = load ptr, ptr %14, align 8, !tbaa !5
  %34 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %33, ptr noundef nonnull dereferenceable(1) @.str.3) #9
  %35 = icmp eq ptr %34, null
  br i1 %35, label %51, label %36

36:                                               ; preds = %32
  %37 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %33, ptr noundef nonnull dereferenceable(1) @.str.4) #9
  %38 = icmp eq ptr %37, null
  br i1 %38, label %51, label %39

39:                                               ; preds = %36
  %40 = call ptr @BLI_str_quoted_substrN(ptr noundef %33, ptr noundef nonnull @.str.5) #7
  %41 = load ptr, ptr %14, align 8, !tbaa !5
  %42 = call ptr @BLI_str_quoted_substrN(ptr noundef %41, ptr noundef nonnull @.str.6) #7
  %43 = call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.7, ptr noundef %40, ptr noundef %42) #7
  %44 = icmp eq ptr %40, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %39
  %46 = load ptr, ptr @MEM_freeN, align 8, !tbaa !15
  call void %46(ptr noundef nonnull %40) #7
  br label %47

47:                                               ; preds = %45, %39
  %48 = icmp eq ptr %42, null
  br i1 %48, label %66, label %49

49:                                               ; preds = %47
  %50 = load ptr, ptr @MEM_freeN, align 8, !tbaa !15
  call void %50(ptr noundef nonnull %42) #7
  br label %66

51:                                               ; preds = %36, %32
  %52 = getelementptr inbounds %struct.PointerRNA, ptr %5, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !16
  %54 = load ptr, ptr %5, align 8, !tbaa !19
  %55 = icmp eq ptr %53, %54
  br i1 %55, label %66, label %56

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.PointerRNA, ptr %5, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !20
  %59 = call ptr @RNA_struct_name_property(ptr noundef %58) #7
  %60 = icmp eq ptr %59, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %56
  %62 = call ptr @RNA_property_string_get_alloc(ptr noundef nonnull %5, ptr noundef nonnull %59, ptr noundef null, i32 noundef 0, ptr noundef null) #7
  br label %66

63:                                               ; preds = %56
  %64 = load ptr, ptr %57, align 8, !tbaa !20
  %65 = call ptr @RNA_struct_ui_name(ptr noundef %64) #7
  br label %66

66:                                               ; preds = %61, %63, %47, %49, %51
  %67 = phi i1 [ true, %51 ], [ false, %49 ], [ false, %47 ], [ true, %63 ], [ false, %61 ]
  %68 = phi ptr [ null, %51 ], [ %43, %49 ], [ %43, %47 ], [ %65, %63 ], [ %62, %61 ]
  %69 = load ptr, ptr %6, align 8, !tbaa !15
  %70 = call ptr @RNA_property_ui_name(ptr noundef %69) #7
  %71 = load ptr, ptr %6, align 8, !tbaa !15
  %72 = call zeroext i8 @RNA_property_array_check(ptr noundef %71) #7
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %86, label %74

74:                                               ; preds = %66
  %75 = load ptr, ptr %6, align 8, !tbaa !15
  %76 = getelementptr inbounds %struct.FCurve, ptr %2, i64 0, i32 11
  %77 = load i32, ptr %76, align 4, !tbaa !14
  %78 = call zeroext i8 @RNA_property_array_item_char(ptr noundef %75, i32 noundef %77) #7
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %74
  %81 = zext i8 %78 to i32
  %82 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %7, i64 noundef 16, ptr noundef nonnull @.str.8, i32 noundef %81) #7
  br label %86

83:                                               ; preds = %74
  %84 = load i32, ptr %76, align 4, !tbaa !14
  %85 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %7, i64 noundef 16, ptr noundef nonnull @.str.9, i32 noundef %84) #7
  br label %86

86:                                               ; preds = %66, %80, %83
  %87 = phi ptr [ %7, %83 ], [ %7, %80 ], [ @.str.10, %66 ]
  %88 = icmp eq ptr %68, null
  br i1 %88, label %91, label %89

89:                                               ; preds = %86
  %90 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %0, i64 noundef 256, ptr noundef nonnull @.str.11, ptr noundef nonnull %87, ptr noundef %70, ptr noundef nonnull %68) #7
  br label %93

91:                                               ; preds = %86
  %92 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %0, i64 noundef 256, ptr noundef nonnull @.str.12, ptr noundef nonnull %87, ptr noundef %70) #7
  br label %93

93:                                               ; preds = %91, %89
  br i1 %67, label %96, label %94

94:                                               ; preds = %93
  %95 = load ptr, ptr @MEM_freeN, align 8, !tbaa !15
  call void %95(ptr noundef %68) #7
  br label %96

96:                                               ; preds = %94, %93
  %97 = getelementptr inbounds %struct.PointerRNA, ptr %5, i64 0, i32 1
  %98 = load ptr, ptr %97, align 8, !tbaa !20
  %99 = call i32 @RNA_struct_ui_icon(ptr noundef %98) #7
  %100 = getelementptr inbounds %struct.FCurve, ptr %2, i64 0, i32 9
  %101 = load i16, ptr %100, align 8, !tbaa !21
  %102 = and i16 %101, -1025
  store i16 %102, ptr %100, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #8
  br label %114

103:                                              ; preds = %28
  %104 = load ptr, ptr %14, align 8, !tbaa !5
  %105 = getelementptr inbounds %struct.FCurve, ptr %2, i64 0, i32 11
  %106 = load i32, ptr %105, align 4, !tbaa !14
  %107 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %0, i64 noundef 256, ptr noundef nonnull @.str.13, ptr noundef %104, i32 noundef %106) #7
  %108 = getelementptr inbounds %struct.PointerRNA, ptr %4, i64 0, i32 1
  %109 = load ptr, ptr %108, align 8, !tbaa !20
  %110 = call i32 @RNA_struct_ui_icon(ptr noundef %109) #7
  %111 = getelementptr inbounds %struct.FCurve, ptr %2, i64 0, i32 9
  %112 = load i16, ptr %111, align 8, !tbaa !21
  %113 = or i16 %112, 1024
  store i16 %113, ptr %111, align 8, !tbaa !21
  br label %114

114:                                              ; preds = %103, %96
  %115 = phi i32 [ %99, %96 ], [ %110, %103 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #8
  br label %116

116:                                              ; preds = %18, %24, %23, %114, %3
  %117 = phi i32 [ 0, %3 ], [ 0, %18 ], [ 0, %23 ], [ 0, %24 ], [ %115, %114 ]
  ret i32 %117
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_id_pointer_create(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @RNA_path_resolve_property(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BLI_str_quoted_substrN(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_sprintfN(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @RNA_struct_name_property(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_property_string_get_alloc(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_struct_ui_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_property_ui_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @RNA_property_array_check(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @RNA_property_array_item_char(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_struct_ui_icon(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @getcolor_fcurve_rainbow(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #8
  %5 = srem i32 %1, 2
  %6 = sub nsw i32 4, %5
  %7 = srem i32 %0, %6
  %8 = sitofp i32 %7 to float
  %9 = fmul float %8, 0x3FD3333340000000
  %10 = sitofp i32 %0 to float
  %11 = sitofp i32 %1 to float
  %12 = fdiv float %10, %11
  %13 = fmul float %12, 0x3FE6666660000000
  %14 = tail call float @llvm.fmuladd.f32(float %13, float 0x3FD3333340000000, float %9)
  store float %14, ptr %4, align 4, !tbaa !22
  %15 = fcmp ogt float %14, 1.000000e+00
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = fpext float %14 to double
  %18 = tail call double @fmod(double noundef %17, double noundef 1.000000e+00) #7
  %19 = fptrunc double %18 to float
  store float %19, ptr %4, align 4, !tbaa !22
  br label %20

20:                                               ; preds = %16, %3
  %21 = phi float [ %19, %16 ], [ %14, %3 ]
  %22 = fcmp ogt float %21, 5.000000e-01
  %23 = fcmp olt float %21, 0x3FE99999A0000000
  %24 = and i1 %22, %23
  %25 = select i1 %24, float 5.000000e-01, float 0x3FE3333340000000
  %26 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  store float %25, ptr %26, align 4, !tbaa !22
  %27 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  store float 1.000000e+00, ptr %27, align 4, !tbaa !22
  call void @hsv_to_rgb_v(ptr noundef nonnull %4, ptr noundef %2) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @fmod(double noundef, double noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @hsv_to_rgb_v(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nounwind optsize }
attributes #8 = { nounwind }
attributes #9 = { nounwind optsize willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 80}
!6 = !{!"FCurve", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !10, i64 32, !7, i64 48, !7, i64 56, !11, i64 64, !12, i64 68, !13, i64 72, !13, i64 74, !11, i64 76, !7, i64 80, !11, i64 88, !8, i64 92, !12, i64 104, !12, i64 108}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"ListBase", !7, i64 0, !7, i64 8}
!11 = !{!"int", !8, i64 0}
!12 = !{!"float", !8, i64 0}
!13 = !{!"short", !8, i64 0}
!14 = !{!6, !11, i64 76}
!15 = !{!7, !7, i64 0}
!16 = !{!17, !7, i64 16}
!17 = !{!"PointerRNA", !18, i64 0, !7, i64 8, !7, i64 16}
!18 = !{!"", !7, i64 0}
!19 = !{!17, !7, i64 0}
!20 = !{!17, !7, i64 8}
!21 = !{!6, !13, i64 72}
!22 = !{!12, !12, i64 0}
