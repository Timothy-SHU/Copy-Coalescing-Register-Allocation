; ModuleID = 'ldecod_src/annexb.c'
source_filename = "ldecod_src/annexb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.video_par = type { ptr, ptr, ptr, [32 x %struct.seq_parameter_set_rbsp_t], [256 x %struct.pic_parameter_set_rbsp_t], ptr, [32 x %struct.subset_seq_parameter_set_rbsp_t], i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, [3 x ptr], i32, i32, i32, i32, i32, ptr, [3 x ptr], ptr, ptr, [3 x ptr], i32, i32, ptr, ptr, [3 x ptr], i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, [2 x i32], i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x [2 x i32]], [3 x [2 x i32]], [3 x [2 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, i32, i32, i32, i64, i32, [1024 x i32], i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [100 x i32], ptr, [3 x ptr], ptr, ptr, ptr, i32, ptr, [20 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, [2 x ptr], [9 x i8], ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x i32], [6 x [16 x i32]], [6 x [64 x i32]], [6 x i32], [6 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t, i32, i32 }
%struct.vui_seq_parameters_t = type { i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [12 x i32], [6 x [16 x i32]], [6 x [64 x i32]], [6 x i32], [6 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.subset_seq_parameter_set_rbsp_t = type { %struct.seq_parameter_set_rbsp_t, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.mvcvui_tag }
%struct.mvcvui_tag = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, [32 x i32], [32 x i32], [32 x i8], i8, i8, i8, i8 }
%struct.image_data = type { %struct.frame_format, [3 x ptr], [3 x ptr], [3 x ptr], [3 x ptr], [3 x ptr], [3 x ptr], [3 x i32], [3 x i32], [3 x i32] }
%struct.frame_format = type { i32, i32, double, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], i32, [3 x i32], [3 x i32], [3 x i32], i32, i32 }
%struct.nalu_t = type { i32, i32, i32, i32, i32, i32, ptr, i16, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.annex_b_struct = type { i32, ptr, ptr, i32, i32, i32, i32, i32, ptr }

@errortext = external global [300 x i8], align 16
@.str = private unnamed_addr constant [42 x i8] c"Memory allocation for Annex_B file failed\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"GetAnnexbNALU: Buf\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"OpenAnnexBFile: tried to open Annex B file twice\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"Cannot open Annex B ByteStream file '%s'\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"OpenAnnexBFile: cannot allocate IO buffer\00", align 1
@str = private unnamed_addr constant [41 x i8] c" Panic: Error in next start code search \00", align 1
@str.9 = private unnamed_addr constant [110 x i8] c"GetAnnexbNALU: The leading_zero_8bits syntax can only be present in the first byte stream NAL unit, return -1\00", align 1
@str.10 = private unnamed_addr constant [69 x i8] c"GetAnnexbNALU: no Start Code at the beginning of the NALU, return -1\00", align 1
@str.11 = private unnamed_addr constant [36 x i8] c"GetAnnexbNALU can't read start code\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @malloc_annex_b(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = tail call noalias dereferenceable_or_null(56) ptr @calloc(i64 noundef 1, i64 noundef 56) #14
  %3 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 144
  store ptr %2, ptr %3, align 8, !tbaa !34
  %4 = icmp eq ptr %2, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(42) @errortext, ptr noundef nonnull align 1 dereferenceable(42) @.str, i64 42, i1 false)
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #15
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 171
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  %9 = getelementptr inbounds %struct.nalu_t, ptr %8, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !46
  %11 = zext i32 %10 to i64
  %12 = tail call noalias ptr @malloc(i64 noundef %11) #16
  %13 = load ptr, ptr %3, align 8, !tbaa !34
  %14 = getelementptr inbounds %struct.annex_b_struct, ptr %13, i64 0, i32 8
  store ptr %12, ptr %14, align 8, !tbaa !48
  %15 = icmp eq ptr %12, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %6
  tail call void @error(ptr noundef nonnull @.str.1, i32 noundef 101) #15
  br label %17

17:                                               ; preds = %16, %6
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i64 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

declare void @error(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @init_annex_b(ptr nocapture noundef writeonly %0) local_unnamed_addr #5 {
  store i32 -1, ptr %0, align 8, !tbaa !50
  %2 = getelementptr inbounds %struct.annex_b_struct, ptr %0, i64 0, i32 1
  %3 = getelementptr inbounds %struct.annex_b_struct, ptr %0, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  store i32 1, ptr %3, align 4, !tbaa !51
  %4 = getelementptr inbounds %struct.annex_b_struct, ptr %0, i64 0, i32 7
  store i32 0, ptr %4, align 8, !tbaa !52
  ret void
}

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local void @free_annex_b(ptr nocapture noundef %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 144
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.annex_b_struct, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  tail call void @free(ptr noundef %5) #15
  %6 = load ptr, ptr %2, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct.annex_b_struct, ptr %6, i64 0, i32 8
  store ptr null, ptr %7, align 8, !tbaa !48
  tail call void @free(ptr noundef %6) #15
  store ptr null, ptr %2, align 8, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @GetAnnexbNALU(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 144
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.annex_b_struct, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = getelementptr inbounds %struct.annex_b_struct, ptr %4, i64 0, i32 7
  %8 = load i32, ptr %7, align 8, !tbaa !52
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32, ptr %7, align 8, !tbaa !52
  %12 = icmp sgt i32 %11, 1
  br i1 %12, label %20, label %30

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.annex_b_struct, ptr %4, i64 0, i32 4
  %15 = getelementptr inbounds %struct.annex_b_struct, ptr %4, i64 0, i32 3
  %16 = getelementptr inbounds %struct.annex_b_struct, ptr %4, i64 0, i32 1
  %17 = getelementptr inbounds %struct.annex_b_struct, ptr %4, i64 0, i32 5
  %18 = getelementptr inbounds %struct.annex_b_struct, ptr %4, i64 0, i32 2
  %19 = getelementptr inbounds %struct.annex_b_struct, ptr %4, i64 0, i32 2
  br label %34

20:                                               ; preds = %10, %20
  %21 = phi ptr [ %23, %20 ], [ %6, %10 ]
  %22 = phi i32 [ %24, %20 ], [ 0, %10 ]
  %23 = getelementptr inbounds i8, ptr %21, i64 1
  store i8 0, ptr %21, align 1, !tbaa !53
  %24 = add nuw nsw i32 %22, 1
  %25 = load i32, ptr %7, align 8, !tbaa !52
  %26 = add nsw i32 %25, -1
  %27 = icmp slt i32 %24, %26
  br i1 %27, label %20, label %28, !llvm.loop !54

28:                                               ; preds = %20
  %29 = add nuw nsw i32 %22, 2
  br label %30

30:                                               ; preds = %28, %10
  %31 = phi i32 [ 1, %10 ], [ %29, %28 ]
  %32 = phi ptr [ %6, %10 ], [ %23, %28 ]
  %33 = getelementptr inbounds i8, ptr %32, i64 1
  store i8 1, ptr %32, align 1, !tbaa !53
  br label %65

34:                                               ; preds = %13, %61
  %35 = phi i32 [ %40, %61 ], [ 0, %13 ]
  %36 = phi ptr [ %63, %61 ], [ %6, %13 ]
  %37 = load i32, ptr %14, align 4, !tbaa !57
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %65

39:                                               ; preds = %34
  %40 = add nuw nsw i32 %35, 1
  %41 = load i32, ptr %15, align 8, !tbaa !58
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %39
  %44 = load i32, ptr %4, align 8, !tbaa !50
  %45 = load ptr, ptr %16, align 8, !tbaa !59
  %46 = load i32, ptr %17, align 8, !tbaa !60
  %47 = sext i32 %46 to i64
  %48 = tail call i64 @read(i32 noundef %44, ptr noundef %45, i64 noundef %47) #15
  %49 = trunc i64 %48 to i32
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  store i32 1, ptr %14, align 4, !tbaa !57
  br label %54

52:                                               ; preds = %43
  store i32 %49, ptr %15, align 8, !tbaa !58
  %53 = load ptr, ptr %16, align 8, !tbaa !59
  store ptr %53, ptr %18, align 8, !tbaa !61
  br label %54

54:                                               ; preds = %52, %51
  br i1 %50, label %61, label %55

55:                                               ; preds = %54, %39
  %56 = load i32, ptr %15, align 8, !tbaa !58
  %57 = add nsw i32 %56, -1
  store i32 %57, ptr %15, align 8, !tbaa !58
  %58 = load ptr, ptr %19, align 8, !tbaa !61
  %59 = getelementptr inbounds i8, ptr %58, i64 1
  store ptr %59, ptr %19, align 8, !tbaa !61
  %60 = load i8, ptr %58, align 1, !tbaa !53
  br label %61

61:                                               ; preds = %54, %55
  %62 = phi i8 [ %60, %55 ], [ 0, %54 ]
  %63 = getelementptr inbounds i8, ptr %36, i64 1
  store i8 %62, ptr %36, align 1, !tbaa !53
  %64 = icmp eq i8 %62, 0
  br i1 %64, label %34, label %65, !llvm.loop !62

65:                                               ; preds = %34, %61, %30
  %66 = phi i32 [ %31, %30 ], [ %40, %61 ], [ %35, %34 ]
  %67 = phi ptr [ %33, %30 ], [ %63, %61 ], [ %36, %34 ]
  %68 = getelementptr inbounds %struct.annex_b_struct, ptr %4, i64 0, i32 4
  %69 = load i32, ptr %68, align 4, !tbaa !57
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %71, label %75

71:                                               ; preds = %65
  %72 = icmp eq i32 %66, 0
  br i1 %72, label %246, label %73

73:                                               ; preds = %71
  %74 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.11)
  br label %246

75:                                               ; preds = %65
  %76 = getelementptr inbounds i8, ptr %67, i64 -1
  %77 = load i8, ptr %76, align 1, !tbaa !53
  %78 = icmp ne i8 %77, 1
  %79 = icmp slt i32 %66, 3
  %80 = select i1 %78, i1 true, i1 %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %75
  %82 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.10)
  br label %246

83:                                               ; preds = %75
  %84 = icmp eq i32 %66, 3
  %85 = icmp sgt i32 %66, 4
  %86 = select i1 %84, i32 3, i32 4
  store i32 %86, ptr %1, align 8, !tbaa !63
  %87 = getelementptr inbounds %struct.annex_b_struct, ptr %4, i64 0, i32 6
  %88 = load i32, ptr %87, align 4, !tbaa !51
  %89 = icmp eq i32 %88, 0
  %90 = select i1 %89, i1 %85, i1 false
  br i1 %90, label %91, label %93

91:                                               ; preds = %83
  %92 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.9)
  br label %246

93:                                               ; preds = %83
  store i32 0, ptr %87, align 4, !tbaa !51
  %94 = getelementptr inbounds %struct.annex_b_struct, ptr %4, i64 0, i32 3
  %95 = getelementptr inbounds %struct.annex_b_struct, ptr %4, i64 0, i32 1
  %96 = getelementptr inbounds %struct.annex_b_struct, ptr %4, i64 0, i32 5
  %97 = getelementptr inbounds %struct.annex_b_struct, ptr %4, i64 0, i32 2
  %98 = getelementptr inbounds %struct.annex_b_struct, ptr %4, i64 0, i32 2
  br label %99

99:                                               ; preds = %93, %198
  %100 = phi ptr [ %67, %93 ], [ %165, %198 ]
  %101 = phi i32 [ %66, %93 ], [ %142, %198 ]
  %102 = phi i32 [ 0, %93 ], [ %199, %198 ]
  %103 = load i32, ptr %68, align 4, !tbaa !57
  %104 = icmp eq i32 %103, 1
  br i1 %104, label %105, label %141

105:                                              ; preds = %99
  %106 = getelementptr inbounds i8, ptr %100, i64 -2
  %107 = load i8, ptr %106, align 1, !tbaa !53
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %105, %109
  %110 = phi ptr [ %112, %109 ], [ %106, %105 ]
  %111 = phi i32 [ %113, %109 ], [ %101, %105 ]
  %112 = getelementptr inbounds i8, ptr %110, i64 -1
  %113 = add nsw i32 %111, -1
  %114 = load i8, ptr %112, align 1, !tbaa !53
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %109, label %116, !llvm.loop !64

116:                                              ; preds = %109, %105
  %117 = phi i32 [ %101, %105 ], [ %113, %109 ]
  %118 = add nsw i32 %117, -1
  %119 = sub nsw i32 %118, %66
  %120 = getelementptr inbounds %struct.nalu_t, ptr %1, i64 0, i32 1
  store i32 %119, ptr %120, align 4, !tbaa !65
  %121 = getelementptr inbounds %struct.nalu_t, ptr %1, i64 0, i32 6
  %122 = load ptr, ptr %121, align 8, !tbaa !66
  %123 = load ptr, ptr %5, align 8, !tbaa !48
  %124 = zext nneg i32 %66 to i64
  %125 = getelementptr inbounds i8, ptr %123, i64 %124
  %126 = zext i32 %119 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %122, ptr align 1 %125, i64 %126, i1 false)
  %127 = load ptr, ptr %121, align 8, !tbaa !66
  %128 = load i8, ptr %127, align 1, !tbaa !53
  %129 = lshr i8 %128, 7
  %130 = zext nneg i8 %129 to i32
  %131 = getelementptr inbounds %struct.nalu_t, ptr %1, i64 0, i32 3
  store i32 %130, ptr %131, align 4, !tbaa !67
  %132 = load i8, ptr %127, align 1, !tbaa !53
  %133 = lshr i8 %132, 5
  %134 = and i8 %133, 3
  %135 = zext nneg i8 %134 to i32
  %136 = getelementptr inbounds %struct.nalu_t, ptr %1, i64 0, i32 5
  store i32 %135, ptr %136, align 4, !tbaa !68
  %137 = load i8, ptr %127, align 1, !tbaa !53
  %138 = and i8 %137, 31
  %139 = zext nneg i8 %138 to i32
  %140 = getelementptr inbounds %struct.nalu_t, ptr %1, i64 0, i32 4
  store i32 %139, ptr %140, align 8, !tbaa !69
  store i32 0, ptr %7, align 8, !tbaa !52
  br label %246

141:                                              ; preds = %99
  %142 = add nsw i32 %101, 1
  %143 = load i32, ptr %94, align 8, !tbaa !58
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %157

145:                                              ; preds = %141
  %146 = load i32, ptr %4, align 8, !tbaa !50
  %147 = load ptr, ptr %95, align 8, !tbaa !59
  %148 = load i32, ptr %96, align 8, !tbaa !60
  %149 = sext i32 %148 to i64
  %150 = tail call i64 @read(i32 noundef %146, ptr noundef %147, i64 noundef %149) #15
  %151 = trunc i64 %150 to i32
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %145
  store i32 1, ptr %68, align 4, !tbaa !57
  br label %156

154:                                              ; preds = %145
  store i32 %151, ptr %94, align 8, !tbaa !58
  %155 = load ptr, ptr %95, align 8, !tbaa !59
  store ptr %155, ptr %97, align 8, !tbaa !61
  br label %156

156:                                              ; preds = %154, %153
  br i1 %152, label %163, label %157

157:                                              ; preds = %156, %141
  %158 = load i32, ptr %94, align 8, !tbaa !58
  %159 = add nsw i32 %158, -1
  store i32 %159, ptr %94, align 8, !tbaa !58
  %160 = load ptr, ptr %98, align 8, !tbaa !61
  %161 = getelementptr inbounds i8, ptr %160, i64 1
  store ptr %161, ptr %98, align 8, !tbaa !61
  %162 = load i8, ptr %160, align 1, !tbaa !53
  br label %163

163:                                              ; preds = %156, %157
  %164 = phi i8 [ %162, %157 ], [ 0, %156 ]
  %165 = getelementptr inbounds i8, ptr %100, i64 1
  store i8 %164, ptr %100, align 1, !tbaa !53
  %166 = getelementptr inbounds i8, ptr %100, i64 -3
  br label %167

167:                                              ; preds = %163, %172
  %168 = phi i32 [ 0, %163 ], [ %174, %172 ]
  %169 = phi ptr [ %166, %163 ], [ %173, %172 ]
  %170 = load i8, ptr %169, align 1, !tbaa !53
  %171 = icmp eq i8 %170, 0
  br i1 %171, label %172, label %180

172:                                              ; preds = %167
  %173 = getelementptr inbounds i8, ptr %169, i64 1
  %174 = add nuw nsw i32 %168, 1
  %175 = icmp eq i32 %174, 3
  br i1 %175, label %176, label %167, !llvm.loop !70

176:                                              ; preds = %172
  %177 = load i8, ptr %100, align 1, !tbaa !53
  %178 = icmp eq i8 %177, 1
  %179 = zext i1 %178 to i32
  br label %180

180:                                              ; preds = %167, %176
  %181 = phi i32 [ %179, %176 ], [ 0, %167 ]
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %198

183:                                              ; preds = %180
  %184 = getelementptr inbounds i8, ptr %100, i64 -2
  br label %185

185:                                              ; preds = %183, %190
  %186 = phi i32 [ 0, %183 ], [ %192, %190 ]
  %187 = phi ptr [ %184, %183 ], [ %191, %190 ]
  %188 = load i8, ptr %187, align 1, !tbaa !53
  %189 = icmp eq i8 %188, 0
  br i1 %189, label %190, label %198

190:                                              ; preds = %185
  %191 = getelementptr inbounds i8, ptr %187, i64 1
  %192 = add nuw nsw i32 %186, 1
  %193 = icmp eq i32 %186, 0
  br i1 %193, label %185, label %194, !llvm.loop !70

194:                                              ; preds = %190
  %195 = load i8, ptr %100, align 1, !tbaa !53
  %196 = icmp eq i8 %195, 1
  %197 = zext i1 %196 to i32
  br label %198

198:                                              ; preds = %185, %194, %180
  %199 = phi i32 [ %102, %180 ], [ %197, %194 ], [ 0, %185 ]
  %200 = phi i32 [ 1, %180 ], [ %197, %194 ], [ 0, %185 ]
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %99, label %202, !llvm.loop !71

202:                                              ; preds = %198
  %203 = icmp eq i32 %181, 0
  br i1 %203, label %215, label %204

204:                                              ; preds = %202
  %205 = getelementptr inbounds i8, ptr %100, i64 -4
  %206 = load i8, ptr %205, align 1, !tbaa !53
  %207 = icmp eq i8 %206, 0
  br i1 %207, label %208, label %219

208:                                              ; preds = %204, %208
  %209 = phi ptr [ %211, %208 ], [ %205, %204 ]
  %210 = phi i32 [ %212, %208 ], [ %142, %204 ]
  %211 = getelementptr inbounds i8, ptr %209, i64 -1
  %212 = add nsw i32 %210, -1
  %213 = load i8, ptr %211, align 1, !tbaa !53
  %214 = icmp eq i8 %213, 0
  br i1 %214, label %208, label %219, !llvm.loop !72

215:                                              ; preds = %202
  %216 = icmp eq i32 %199, 1
  br i1 %216, label %219, label %217

217:                                              ; preds = %215
  %218 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %246

219:                                              ; preds = %208, %204, %215
  %220 = phi i32 [ 3, %215 ], [ 4, %204 ], [ 4, %208 ]
  %221 = phi i32 [ %142, %215 ], [ %142, %204 ], [ %212, %208 ]
  store i32 %220, ptr %7, align 8, !tbaa !52
  %222 = sub nsw i32 %221, %220
  %223 = sub nsw i32 %222, %66
  %224 = getelementptr inbounds %struct.nalu_t, ptr %1, i64 0, i32 1
  store i32 %223, ptr %224, align 4, !tbaa !65
  %225 = getelementptr inbounds %struct.nalu_t, ptr %1, i64 0, i32 6
  %226 = load ptr, ptr %225, align 8, !tbaa !66
  %227 = load ptr, ptr %5, align 8, !tbaa !48
  %228 = zext nneg i32 %66 to i64
  %229 = getelementptr inbounds i8, ptr %227, i64 %228
  %230 = sext i32 %223 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %226, ptr align 1 %229, i64 %230, i1 false)
  %231 = load ptr, ptr %225, align 8, !tbaa !66
  %232 = load i8, ptr %231, align 1, !tbaa !53
  %233 = lshr i8 %232, 7
  %234 = zext nneg i8 %233 to i32
  %235 = getelementptr inbounds %struct.nalu_t, ptr %1, i64 0, i32 3
  store i32 %234, ptr %235, align 4, !tbaa !67
  %236 = load i8, ptr %231, align 1, !tbaa !53
  %237 = lshr i8 %236, 5
  %238 = and i8 %237, 3
  %239 = zext nneg i8 %238 to i32
  %240 = getelementptr inbounds %struct.nalu_t, ptr %1, i64 0, i32 5
  store i32 %239, ptr %240, align 4, !tbaa !68
  %241 = load i8, ptr %231, align 1, !tbaa !53
  %242 = and i8 %241, 31
  %243 = zext nneg i8 %242 to i32
  %244 = getelementptr inbounds %struct.nalu_t, ptr %1, i64 0, i32 4
  store i32 %243, ptr %244, align 8, !tbaa !69
  %245 = getelementptr inbounds %struct.nalu_t, ptr %1, i64 0, i32 7
  store i16 0, ptr %245, align 8, !tbaa !73
  br label %246

246:                                              ; preds = %71, %219, %217, %116, %91, %81, %73
  %247 = phi i32 [ -1, %73 ], [ -1, %81 ], [ -1, %91 ], [ %118, %116 ], [ %222, %219 ], [ -1, %217 ], [ 0, %71 ]
  ret i32 %247
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: nounwind uwtable
define dso_local void @OpenAnnexBFile(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 144
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.annex_b_struct, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !59
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @error(ptr noundef nonnull @.str.6, i32 noundef 500) #15
  br label %9

9:                                                ; preds = %8, %2
  %10 = tail call i32 (ptr, i32, ...) @open(ptr noundef %1, i32 noundef 0) #15
  store i32 %10, ptr %4, align 8, !tbaa !50
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.7, ptr noundef %1) #15
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 500) #15
  br label %14

14:                                               ; preds = %12, %9
  %15 = getelementptr inbounds %struct.annex_b_struct, ptr %4, i64 0, i32 5
  store i32 524288, ptr %15, align 8, !tbaa !60
  %16 = tail call noalias dereferenceable_or_null(524288) ptr @malloc(i64 noundef 524288) #16
  store ptr %16, ptr %5, align 8, !tbaa !59
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  tail call void @error(ptr noundef nonnull @.str.8, i32 noundef 500) #15
  br label %19

19:                                               ; preds = %18, %14
  %20 = getelementptr inbounds %struct.annex_b_struct, ptr %4, i64 0, i32 4
  store i32 0, ptr %20, align 4, !tbaa !57
  %21 = load i32, ptr %4, align 8, !tbaa !50
  %22 = load ptr, ptr %5, align 8, !tbaa !59
  %23 = load i32, ptr %15, align 8, !tbaa !60
  %24 = sext i32 %23 to i64
  %25 = tail call i64 @read(i32 noundef %21, ptr noundef %22, i64 noundef %24) #15
  %26 = trunc i64 %25 to i32
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  store i32 1, ptr %20, align 4, !tbaa !57
  br label %33

29:                                               ; preds = %19
  %30 = getelementptr inbounds %struct.annex_b_struct, ptr %4, i64 0, i32 3
  store i32 %26, ptr %30, align 8, !tbaa !58
  %31 = load ptr, ptr %5, align 8, !tbaa !59
  %32 = getelementptr inbounds %struct.annex_b_struct, ptr %4, i64 0, i32 2
  store ptr %31, ptr %32, align 8, !tbaa !61
  br label %33

33:                                               ; preds = %28, %29
  ret void
}

; Function Attrs: nofree
declare noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define dso_local void @CloseAnnexBFile(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 144
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = load i32, ptr %3, align 8, !tbaa !50
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @close(i32 noundef %4) #15
  store i32 -1, ptr %3, align 8, !tbaa !50
  br label %8

8:                                                ; preds = %6, %1
  %9 = getelementptr inbounds %struct.annex_b_struct, ptr %3, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !59
  tail call void @free(ptr noundef %10) #15
  store ptr null, ptr %9, align 8, !tbaa !59
  ret void
}

declare i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @ResetAnnexB(ptr nocapture noundef %0) local_unnamed_addr #11 {
  %2 = getelementptr inbounds %struct.annex_b_struct, ptr %0, i64 0, i32 4
  store i32 0, ptr %2, align 4, !tbaa !57
  %3 = getelementptr inbounds %struct.annex_b_struct, ptr %0, i64 0, i32 3
  store i32 0, ptr %3, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.annex_b_struct, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !59
  %6 = getelementptr inbounds %struct.annex_b_struct, ptr %0, i64 0, i32 2
  store ptr %5, ptr %6, align 8, !tbaa !61
  ret void
}

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #12

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { nounwind allocsize(0,1) }
attributes #15 = { nounwind }
attributes #16 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 11233431}
!8 = !{!"MaxCount", i64 921600}
!9 = !{!"MaxInternalCount", i64 921600}
!10 = !{!"MaxFunctionCount", i64 921600}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 921600, i32 8}
!18 = !{i32 100000, i64 921600, i32 8}
!19 = !{i32 200000, i64 921600, i32 8}
!20 = !{i32 300000, i64 921600, i32 8}
!21 = !{i32 400000, i64 921600, i32 8}
!22 = !{i32 500000, i64 921600, i32 8}
!23 = !{i32 600000, i64 921600, i32 8}
!24 = !{i32 700000, i64 915762, i32 9}
!25 = !{i32 800000, i64 908579, i32 10}
!26 = !{i32 900000, i64 460800, i32 13}
!27 = !{i32 950000, i64 460800, i32 13}
!28 = !{i32 990000, i64 115200, i32 14}
!29 = !{i32 999000, i64 12790, i32 20}
!30 = !{i32 999900, i64 536, i32 29}
!31 = !{i32 999990, i64 90, i32 32}
!32 = !{i32 999999, i64 1, i32 66}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !36, i64 856608}
!35 = !{!"video_par", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24, !37, i64 132120, !36, i64 699416, !37, i64 699424, !39, i64 848672, !39, i64 848676, !39, i64 848680, !39, i64 848684, !36, i64 848688, !36, i64 848696, !36, i64 848704, !39, i64 848712, !39, i64 848716, !39, i64 848720, !39, i64 848724, !39, i64 848728, !36, i64 848736, !36, i64 848744, !37, i64 848752, !39, i64 848776, !39, i64 848780, !39, i64 848784, !39, i64 848788, !39, i64 848792, !36, i64 848800, !37, i64 848808, !36, i64 848832, !36, i64 848840, !37, i64 848848, !39, i64 848872, !39, i64 848876, !36, i64 848880, !36, i64 848888, !37, i64 848896, !39, i64 848920, !36, i64 848928, !36, i64 848936, !39, i64 848944, !39, i64 848948, !39, i64 848952, !39, i64 848956, !39, i64 848960, !39, i64 848964, !39, i64 848968, !39, i64 848972, !39, i64 848976, !39, i64 848980, !39, i64 848984, !39, i64 848988, !39, i64 848992, !39, i64 848996, !39, i64 849000, !39, i64 849004, !39, i64 849008, !39, i64 849012, !39, i64 849016, !39, i64 849020, !39, i64 849024, !39, i64 849028, !39, i64 849032, !39, i64 849036, !40, i64 849040, !40, i64 849042, !37, i64 849044, !39, i64 849052, !39, i64 849056, !37, i64 849060, !37, i64 849072, !39, i64 849084, !39, i64 849088, !39, i64 849092, !39, i64 849096, !39, i64 849100, !39, i64 849104, !39, i64 849108, !39, i64 849112, !39, i64 849116, !39, i64 849120, !37, i64 849124, !37, i64 849148, !37, i64 849172, !39, i64 849196, !39, i64 849200, !39, i64 849204, !39, i64 849208, !39, i64 849212, !39, i64 849216, !39, i64 849220, !39, i64 849224, !39, i64 849228, !39, i64 849232, !39, i64 849236, !39, i64 849240, !39, i64 849244, !39, i64 849248, !39, i64 849252, !39, i64 849256, !39, i64 849260, !39, i64 849264, !39, i64 849268, !39, i64 849272, !39, i64 849276, !39, i64 849280, !39, i64 849284, !36, i64 849288, !36, i64 849296, !41, i64 849304, !41, i64 849624, !41, i64 849944, !41, i64 850264, !41, i64 850584, !41, i64 850904, !41, i64 851224, !41, i64 851544, !39, i64 851864, !39, i64 851868, !39, i64 851872, !44, i64 851880, !39, i64 851888, !37, i64 851892, !39, i64 855988, !39, i64 855992, !39, i64 855996, !39, i64 856000, !39, i64 856004, !39, i64 856008, !39, i64 856012, !36, i64 856016, !36, i64 856024, !36, i64 856032, !36, i64 856040, !36, i64 856048, !37, i64 856056, !36, i64 856456, !37, i64 856464, !36, i64 856488, !36, i64 856496, !36, i64 856504, !39, i64 856512, !36, i64 856520, !37, i64 856528, !36, i64 856608, !36, i64 856616, !36, i64 856624, !36, i64 856632, !39, i64 856640, !39, i64 856644, !39, i64 856648, !36, i64 856656, !36, i64 856664, !37, i64 856672, !37, i64 856688, !36, i64 856704, !36, i64 856712, !39, i64 856720, !36, i64 856728, !36, i64 856736, !36, i64 856744, !36, i64 856752, !36, i64 856760, !36, i64 856768, !36, i64 856776, !36, i64 856784, !36, i64 856792, !36, i64 856800, !36, i64 856808, !36, i64 856816, !39, i64 856824, !36, i64 856832, !39, i64 856840, !39, i64 856844, !39, i64 856848, !39, i64 856852, !39, i64 856856, !39, i64 856860, !39, i64 856864, !36, i64 856872}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!"short", !37, i64 0}
!41 = !{!"image_data", !42, i64 0, !37, i64 136, !37, i64 160, !37, i64 184, !37, i64 208, !37, i64 232, !37, i64 256, !37, i64 280, !37, i64 292, !37, i64 304}
!42 = !{!"frame_format", !39, i64 0, !39, i64 4, !43, i64 8, !37, i64 16, !37, i64 28, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !39, i64 64, !39, i64 68, !37, i64 72, !39, i64 84, !37, i64 88, !37, i64 100, !37, i64 112, !39, i64 124, !39, i64 128}
!43 = !{!"double", !37, i64 0}
!44 = !{!"long", !37, i64 0}
!45 = !{!35, !36, i64 856832}
!46 = !{!47, !39, i64 8}
!47 = !{!"nalu_t", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !36, i64 24, !40, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !39, i64 64}
!48 = !{!49, !36, i64 48}
!49 = !{!"annex_b_struct", !39, i64 0, !36, i64 8, !36, i64 16, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !39, i64 40, !36, i64 48}
!50 = !{!49, !39, i64 0}
!51 = !{!49, !39, i64 36}
!52 = !{!49, !39, i64 40}
!53 = !{!37, !37, i64 0}
!54 = distinct !{!54, !55, !56}
!55 = !{!"llvm.loop.mustprogress"}
!56 = !{!"llvm.loop.unroll.disable"}
!57 = !{!49, !39, i64 28}
!58 = !{!49, !39, i64 24}
!59 = !{!49, !36, i64 8}
!60 = !{!49, !39, i64 32}
!61 = !{!49, !36, i64 16}
!62 = distinct !{!62, !55, !56}
!63 = !{!47, !39, i64 0}
!64 = distinct !{!64, !55, !56}
!65 = !{!47, !39, i64 4}
!66 = !{!47, !36, i64 24}
!67 = !{!47, !39, i64 12}
!68 = !{!47, !39, i64 20}
!69 = !{!47, !39, i64 16}
!70 = distinct !{!70, !55, !56}
!71 = distinct !{!71, !55, !56}
!72 = distinct !{!72, !55, !56}
!73 = !{!47, !40, i64 32}
