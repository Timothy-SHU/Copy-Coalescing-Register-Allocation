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
@str.9 = private unnamed_addr constant [110 x i8] c"GetAnnexbNALU: The leading_zero_8bits syntax can only be present in the first byte stream NAL unit, return -1\00", align 1
@str.10 = private unnamed_addr constant [69 x i8] c"GetAnnexbNALU: no Start Code at the beginning of the NALU, return -1\00", align 1
@str.11 = private unnamed_addr constant [36 x i8] c"GetAnnexbNALU can't read start code\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @malloc_annex_b(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = tail call noalias dereferenceable_or_null(56) ptr @calloc(i64 noundef 1, i64 noundef 56) #15
  %3 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 144
  store ptr %2, ptr %3, align 8, !tbaa !5
  %4 = icmp eq ptr %2, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(42) @errortext, ptr noundef nonnull align 1 dereferenceable(42) @.str, i64 42, i1 false)
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #16
  %6 = load ptr, ptr %3, align 8, !tbaa !5
  br label %7

7:                                                ; preds = %5, %1
  %8 = phi ptr [ %6, %5 ], [ %2, %1 ]
  %9 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 171
  %10 = load ptr, ptr %9, align 8, !tbaa !16
  %11 = getelementptr inbounds %struct.nalu_t, ptr %10, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !17
  %13 = zext i32 %12 to i64
  %14 = tail call noalias ptr @malloc(i64 noundef %13) #17
  %15 = getelementptr inbounds %struct.annex_b_struct, ptr %8, i64 0, i32 8
  store ptr %14, ptr %15, align 8, !tbaa !19
  %16 = icmp eq ptr %14, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %7
  tail call void @error(ptr noundef nonnull @.str.1, i32 noundef 101) #16
  br label %18

18:                                               ; preds = %17, %7
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i64 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @error(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @init_annex_b(ptr nocapture noundef writeonly %0) local_unnamed_addr #5 {
  store i32 -1, ptr %0, align 8, !tbaa !21
  %2 = getelementptr inbounds %struct.annex_b_struct, ptr %0, i64 0, i32 1
  %3 = getelementptr inbounds %struct.annex_b_struct, ptr %0, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  store i32 1, ptr %3, align 4, !tbaa !22
  %4 = getelementptr inbounds %struct.annex_b_struct, ptr %0, i64 0, i32 7
  store i32 0, ptr %4, align 8, !tbaa !23
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define dso_local void @free_annex_b(ptr nocapture noundef %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 144
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = getelementptr inbounds %struct.annex_b_struct, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !19
  tail call void @free(ptr noundef %5) #16
  %6 = load ptr, ptr %2, align 8, !tbaa !5
  tail call void @free(ptr noundef %6) #16
  store ptr null, ptr %2, align 8, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local i32 @GetAnnexbNALU(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 144
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.annex_b_struct, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !19
  %7 = getelementptr inbounds %struct.annex_b_struct, ptr %4, i64 0, i32 7
  %8 = load i32, ptr %7, align 8, !tbaa !23
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = icmp sgt i32 %8, 1
  br i1 %11, label %14, label %24

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.annex_b_struct, ptr %4, i64 0, i32 4
  br label %28

14:                                               ; preds = %10, %14
  %15 = phi ptr [ %17, %14 ], [ %6, %10 ]
  %16 = phi i32 [ %18, %14 ], [ 0, %10 ]
  %17 = getelementptr inbounds i8, ptr %15, i64 1
  store i8 0, ptr %15, align 1, !tbaa !24
  %18 = add nuw nsw i32 %16, 1
  %19 = load i32, ptr %7, align 8, !tbaa !23
  %20 = add nsw i32 %19, -1
  %21 = icmp slt i32 %18, %20
  br i1 %21, label %14, label %22, !llvm.loop !25

22:                                               ; preds = %14
  %23 = add nuw nsw i32 %16, 2
  br label %24

24:                                               ; preds = %22, %10
  %25 = phi i32 [ 1, %10 ], [ %23, %22 ]
  %26 = phi ptr [ %6, %10 ], [ %17, %22 ]
  %27 = getelementptr inbounds i8, ptr %26, i64 1
  store i8 1, ptr %26, align 1, !tbaa !24
  br label %38

28:                                               ; preds = %12, %33
  %29 = phi i32 [ %34, %33 ], [ 0, %12 ]
  %30 = phi ptr [ %36, %33 ], [ %6, %12 ]
  %31 = load i32, ptr %13, align 4, !tbaa !27
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = add nuw nsw i32 %29, 1
  %35 = tail call fastcc zeroext i8 @getfbyte(ptr noundef nonnull %4) #18
  %36 = getelementptr inbounds i8, ptr %30, i64 1
  store i8 %35, ptr %30, align 1, !tbaa !24
  %37 = icmp eq i8 %35, 0
  br i1 %37, label %28, label %38, !llvm.loop !28

38:                                               ; preds = %28, %33, %24
  %39 = phi i32 [ %25, %24 ], [ %29, %28 ], [ %34, %33 ]
  %40 = phi ptr [ %27, %24 ], [ %30, %28 ], [ %36, %33 ]
  %41 = getelementptr inbounds %struct.annex_b_struct, ptr %4, i64 0, i32 4
  %42 = load i32, ptr %41, align 4, !tbaa !27
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = icmp eq i32 %39, 0
  br i1 %45, label %156, label %46

46:                                               ; preds = %44
  %47 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.11)
  br label %156

48:                                               ; preds = %38
  %49 = getelementptr inbounds i8, ptr %40, i64 -1
  %50 = load i8, ptr %49, align 1, !tbaa !24
  %51 = icmp ne i8 %50, 1
  %52 = icmp slt i32 %39, 3
  %53 = select i1 %51, i1 true, i1 %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.10)
  br label %156

56:                                               ; preds = %48
  %57 = icmp eq i32 %39, 3
  %58 = icmp ugt i32 %39, 4
  %59 = select i1 %57, i32 3, i32 4
  store i32 %59, ptr %1, align 8, !tbaa !29
  %60 = getelementptr inbounds %struct.annex_b_struct, ptr %4, i64 0, i32 6
  %61 = load i32, ptr %60, align 4, !tbaa !22
  %62 = icmp eq i32 %61, 0
  %63 = select i1 %62, i1 %58, i1 false
  br i1 %63, label %64, label %66

64:                                               ; preds = %56
  %65 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.9)
  br label %156

66:                                               ; preds = %56
  store i32 0, ptr %60, align 4, !tbaa !22
  br label %67

67:                                               ; preds = %66, %114
  %68 = phi ptr [ %40, %66 ], [ %115, %114 ]
  %69 = phi i32 [ %39, %66 ], [ %109, %114 ]
  %70 = load i32, ptr %41, align 4, !tbaa !27
  %71 = icmp eq i32 %70, 1
  br i1 %71, label %72, label %108

72:                                               ; preds = %67
  %73 = getelementptr inbounds i8, ptr %68, i64 -2
  %74 = load i8, ptr %73, align 1, !tbaa !24
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %72, %76
  %77 = phi ptr [ %79, %76 ], [ %73, %72 ]
  %78 = phi i32 [ %80, %76 ], [ %69, %72 ]
  %79 = getelementptr inbounds i8, ptr %77, i64 -1
  %80 = add nsw i32 %78, -1
  %81 = load i8, ptr %79, align 1, !tbaa !24
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %76, label %83, !llvm.loop !30

83:                                               ; preds = %76, %72
  %84 = phi i32 [ %69, %72 ], [ %80, %76 ]
  %85 = add nsw i32 %84, -1
  %86 = sub nsw i32 %85, %39
  %87 = getelementptr inbounds %struct.nalu_t, ptr %1, i64 0, i32 1
  store i32 %86, ptr %87, align 4, !tbaa !31
  %88 = getelementptr inbounds %struct.nalu_t, ptr %1, i64 0, i32 6
  %89 = load ptr, ptr %88, align 8, !tbaa !32
  %90 = load ptr, ptr %5, align 8, !tbaa !19
  %91 = zext nneg i32 %39 to i64
  %92 = getelementptr inbounds i8, ptr %90, i64 %91
  %93 = zext i32 %86 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %89, ptr align 1 %92, i64 %93, i1 false)
  %94 = load ptr, ptr %88, align 8, !tbaa !32
  %95 = load i8, ptr %94, align 1, !tbaa !24
  %96 = lshr i8 %95, 7
  %97 = zext nneg i8 %96 to i32
  %98 = getelementptr inbounds %struct.nalu_t, ptr %1, i64 0, i32 3
  store i32 %97, ptr %98, align 4, !tbaa !33
  %99 = load i8, ptr %94, align 1, !tbaa !24
  %100 = lshr i8 %99, 5
  %101 = and i8 %100, 3
  %102 = zext nneg i8 %101 to i32
  %103 = getelementptr inbounds %struct.nalu_t, ptr %1, i64 0, i32 5
  store i32 %102, ptr %103, align 4, !tbaa !34
  %104 = load i8, ptr %94, align 1, !tbaa !24
  %105 = and i8 %104, 31
  %106 = zext nneg i8 %105 to i32
  %107 = getelementptr inbounds %struct.nalu_t, ptr %1, i64 0, i32 4
  store i32 %106, ptr %107, align 8, !tbaa !35
  store i32 0, ptr %7, align 8, !tbaa !23
  br label %156

108:                                              ; preds = %67
  %109 = add nsw i32 %69, 1
  %110 = tail call fastcc zeroext i8 @getfbyte(ptr noundef nonnull %4) #18
  store i8 %110, ptr %68, align 1, !tbaa !24
  %111 = getelementptr inbounds i8, ptr %68, i64 -3
  %112 = tail call fastcc i32 @FindStartCode(ptr noundef nonnull %111, i32 noundef 3) #18, !range !36
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %108
  %115 = getelementptr inbounds i8, ptr %68, i64 1
  %116 = getelementptr inbounds i8, ptr %68, i64 -2
  %117 = tail call fastcc i32 @FindStartCode(ptr noundef nonnull %116, i32 noundef 2) #18, !range !36
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %67, label %130, !llvm.loop !37

119:                                              ; preds = %108
  %120 = getelementptr inbounds i8, ptr %68, i64 -4
  %121 = load i8, ptr %120, align 1, !tbaa !24
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %123, label %130

123:                                              ; preds = %119, %123
  %124 = phi ptr [ %126, %123 ], [ %120, %119 ]
  %125 = phi i32 [ %127, %123 ], [ %109, %119 ]
  %126 = getelementptr inbounds i8, ptr %124, i64 -1
  %127 = add nsw i32 %125, -1
  %128 = load i8, ptr %126, align 1, !tbaa !24
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %123, label %130, !llvm.loop !38

130:                                              ; preds = %114, %123, %119
  %131 = phi i32 [ 4, %119 ], [ 4, %123 ], [ 3, %114 ]
  %132 = phi i32 [ %109, %119 ], [ %127, %123 ], [ %109, %114 ]
  store i32 %131, ptr %7, align 8, !tbaa !23
  %133 = sub nsw i32 %132, %131
  %134 = sub nsw i32 %133, %39
  %135 = getelementptr inbounds %struct.nalu_t, ptr %1, i64 0, i32 1
  store i32 %134, ptr %135, align 4, !tbaa !31
  %136 = getelementptr inbounds %struct.nalu_t, ptr %1, i64 0, i32 6
  %137 = load ptr, ptr %136, align 8, !tbaa !32
  %138 = load ptr, ptr %5, align 8, !tbaa !19
  %139 = zext nneg i32 %39 to i64
  %140 = getelementptr inbounds i8, ptr %138, i64 %139
  tail call fastcc void @fast_memcpy(ptr noundef %137, ptr noundef %140, i32 noundef %134) #18
  %141 = load ptr, ptr %136, align 8, !tbaa !32
  %142 = load i8, ptr %141, align 1, !tbaa !24
  %143 = lshr i8 %142, 7
  %144 = zext nneg i8 %143 to i32
  %145 = getelementptr inbounds %struct.nalu_t, ptr %1, i64 0, i32 3
  store i32 %144, ptr %145, align 4, !tbaa !33
  %146 = load i8, ptr %141, align 1, !tbaa !24
  %147 = lshr i8 %146, 5
  %148 = and i8 %147, 3
  %149 = zext nneg i8 %148 to i32
  %150 = getelementptr inbounds %struct.nalu_t, ptr %1, i64 0, i32 5
  store i32 %149, ptr %150, align 4, !tbaa !34
  %151 = load i8, ptr %141, align 1, !tbaa !24
  %152 = and i8 %151, 31
  %153 = zext nneg i8 %152 to i32
  %154 = getelementptr inbounds %struct.nalu_t, ptr %1, i64 0, i32 4
  store i32 %153, ptr %154, align 8, !tbaa !35
  %155 = getelementptr inbounds %struct.nalu_t, ptr %1, i64 0, i32 7
  store i16 0, ptr %155, align 8, !tbaa !39
  br label %156

156:                                              ; preds = %44, %130, %83, %64, %54, %46
  %157 = phi i32 [ -1, %46 ], [ -1, %54 ], [ -1, %64 ], [ %85, %83 ], [ %133, %130 ], [ 0, %44 ]
  ret i32 %157
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @getfbyte(ptr nocapture noundef %0) unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.annex_b_struct, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !40
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @getChunk(ptr noundef nonnull %0) #18
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %5
  %9 = load i32, ptr %2, align 8, !tbaa !40
  br label %10

10:                                               ; preds = %8, %1
  %11 = phi i32 [ %9, %8 ], [ %3, %1 ]
  %12 = add nsw i32 %11, -1
  store i32 %12, ptr %2, align 8, !tbaa !40
  %13 = getelementptr inbounds %struct.annex_b_struct, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !41
  %15 = getelementptr inbounds i8, ptr %14, i64 1
  store ptr %15, ptr %13, align 8, !tbaa !41
  %16 = load i8, ptr %14, align 1, !tbaa !24
  br label %17

17:                                               ; preds = %5, %10
  %18 = phi i8 [ %16, %10 ], [ 0, %5 ]
  ret i8 %18
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @FindStartCode(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #10 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %16

4:                                                ; preds = %2
  %5 = zext nneg i32 %1 to i64
  %6 = getelementptr i8, ptr %0, i64 %5
  br label %7

7:                                                ; preds = %4, %12
  %8 = phi i32 [ %14, %12 ], [ 0, %4 ]
  %9 = phi ptr [ %13, %12 ], [ %0, %4 ]
  %10 = load i8, ptr %9, align 1, !tbaa !24
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %7
  %13 = getelementptr inbounds i8, ptr %9, i64 1
  %14 = add nuw nsw i32 %8, 1
  %15 = icmp eq i32 %14, %1
  br i1 %15, label %16, label %7, !llvm.loop !42

16:                                               ; preds = %12, %2
  %17 = phi ptr [ %0, %2 ], [ %6, %12 ]
  %18 = load i8, ptr %17, align 1, !tbaa !24
  %19 = icmp eq i8 %18, 1
  %20 = zext i1 %19 to i32
  br label %21

21:                                               ; preds = %7, %16
  %22 = phi i32 [ %20, %16 ], [ 0, %7 ]
  ret i32 %22
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @fast_memcpy(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #11 {
  %4 = sext i32 %2 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr align 1 %1, i64 %4, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @OpenAnnexBFile(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 144
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.annex_b_struct, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !43
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @error(ptr noundef nonnull @.str.6, i32 noundef 500) #16
  br label %9

9:                                                ; preds = %8, %2
  %10 = tail call i32 (ptr, i32, ...) @open(ptr noundef %1, i32 noundef 0) #16
  store i32 %10, ptr %4, align 8, !tbaa !21
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.7, ptr noundef %1) #16
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 500) #16
  br label %14

14:                                               ; preds = %12, %9
  %15 = getelementptr inbounds %struct.annex_b_struct, ptr %4, i64 0, i32 5
  store i32 524288, ptr %15, align 8, !tbaa !44
  %16 = tail call noalias dereferenceable_or_null(524288) ptr @malloc(i64 noundef 524288) #17
  store ptr %16, ptr %5, align 8, !tbaa !43
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  tail call void @error(ptr noundef nonnull @.str.8, i32 noundef 500) #16
  br label %19

19:                                               ; preds = %18, %14
  %20 = getelementptr inbounds %struct.annex_b_struct, ptr %4, i64 0, i32 4
  store i32 0, ptr %20, align 4, !tbaa !27
  %21 = tail call fastcc i32 @getChunk(ptr noundef nonnull %4) #18
  ret void
}

; Function Attrs: nofree optsize
declare noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #12

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc noundef i32 @getChunk(ptr nocapture noundef %0) unnamed_addr #8 {
  %2 = load i32, ptr %0, align 8, !tbaa !21
  %3 = getelementptr inbounds %struct.annex_b_struct, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !43
  %5 = getelementptr inbounds %struct.annex_b_struct, ptr %0, i64 0, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !44
  %7 = sext i32 %6 to i64
  %8 = tail call i64 @read(i32 noundef %2, ptr noundef %4, i64 noundef %7) #16
  %9 = trunc i64 %8 to i32
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.annex_b_struct, ptr %0, i64 0, i32 4
  store i32 1, ptr %12, align 4, !tbaa !27
  br label %17

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.annex_b_struct, ptr %0, i64 0, i32 3
  store i32 %9, ptr %14, align 8, !tbaa !40
  %15 = load ptr, ptr %3, align 8, !tbaa !43
  %16 = getelementptr inbounds %struct.annex_b_struct, ptr %0, i64 0, i32 2
  store ptr %15, ptr %16, align 8, !tbaa !41
  br label %17

17:                                               ; preds = %13, %11
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CloseAnnexBFile(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 144
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = load i32, ptr %3, align 8, !tbaa !21
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @close(i32 noundef %4) #16
  store i32 -1, ptr %3, align 8, !tbaa !21
  br label %8

8:                                                ; preds = %6, %1
  %9 = getelementptr inbounds %struct.annex_b_struct, ptr %3, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !43
  tail call void @free(ptr noundef %10) #16
  store ptr null, ptr %9, align 8, !tbaa !43
  ret void
}

; Function Attrs: optsize
declare i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @ResetAnnexB(ptr nocapture noundef %0) local_unnamed_addr #11 {
  %2 = getelementptr inbounds %struct.annex_b_struct, ptr %0, i64 0, i32 4
  store i32 0, ptr %2, align 4, !tbaa !27
  %3 = getelementptr inbounds %struct.annex_b_struct, ptr %0, i64 0, i32 3
  store i32 0, ptr %3, align 8, !tbaa !40
  %4 = getelementptr inbounds %struct.annex_b_struct, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !43
  %6 = getelementptr inbounds %struct.annex_b_struct, ptr %0, i64 0, i32 2
  store ptr %5, ptr %6, align 8, !tbaa !41
  ret void
}

; Function Attrs: nofree optsize
declare noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #13

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { nounwind optsize allocsize(0,1) }
attributes #16 = { nounwind optsize }
attributes #17 = { nounwind optsize allocsize(0) }
attributes #18 = { optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 856608}
!6 = !{!"video_par", !7, i64 0, !7, i64 8, !7, i64 16, !8, i64 24, !8, i64 132120, !7, i64 699416, !8, i64 699424, !10, i64 848672, !10, i64 848676, !10, i64 848680, !10, i64 848684, !7, i64 848688, !7, i64 848696, !7, i64 848704, !10, i64 848712, !10, i64 848716, !10, i64 848720, !10, i64 848724, !10, i64 848728, !7, i64 848736, !7, i64 848744, !8, i64 848752, !10, i64 848776, !10, i64 848780, !10, i64 848784, !10, i64 848788, !10, i64 848792, !7, i64 848800, !8, i64 848808, !7, i64 848832, !7, i64 848840, !8, i64 848848, !10, i64 848872, !10, i64 848876, !7, i64 848880, !7, i64 848888, !8, i64 848896, !10, i64 848920, !7, i64 848928, !7, i64 848936, !10, i64 848944, !10, i64 848948, !10, i64 848952, !10, i64 848956, !10, i64 848960, !10, i64 848964, !10, i64 848968, !10, i64 848972, !10, i64 848976, !10, i64 848980, !10, i64 848984, !10, i64 848988, !10, i64 848992, !10, i64 848996, !10, i64 849000, !10, i64 849004, !10, i64 849008, !10, i64 849012, !10, i64 849016, !10, i64 849020, !10, i64 849024, !10, i64 849028, !10, i64 849032, !10, i64 849036, !11, i64 849040, !11, i64 849042, !8, i64 849044, !10, i64 849052, !10, i64 849056, !8, i64 849060, !8, i64 849072, !10, i64 849084, !10, i64 849088, !10, i64 849092, !10, i64 849096, !10, i64 849100, !10, i64 849104, !10, i64 849108, !10, i64 849112, !10, i64 849116, !10, i64 849120, !8, i64 849124, !8, i64 849148, !8, i64 849172, !10, i64 849196, !10, i64 849200, !10, i64 849204, !10, i64 849208, !10, i64 849212, !10, i64 849216, !10, i64 849220, !10, i64 849224, !10, i64 849228, !10, i64 849232, !10, i64 849236, !10, i64 849240, !10, i64 849244, !10, i64 849248, !10, i64 849252, !10, i64 849256, !10, i64 849260, !10, i64 849264, !10, i64 849268, !10, i64 849272, !10, i64 849276, !10, i64 849280, !10, i64 849284, !7, i64 849288, !7, i64 849296, !12, i64 849304, !12, i64 849624, !12, i64 849944, !12, i64 850264, !12, i64 850584, !12, i64 850904, !12, i64 851224, !12, i64 851544, !10, i64 851864, !10, i64 851868, !10, i64 851872, !15, i64 851880, !10, i64 851888, !8, i64 851892, !10, i64 855988, !10, i64 855992, !10, i64 855996, !10, i64 856000, !10, i64 856004, !10, i64 856008, !10, i64 856012, !7, i64 856016, !7, i64 856024, !7, i64 856032, !7, i64 856040, !7, i64 856048, !8, i64 856056, !7, i64 856456, !8, i64 856464, !7, i64 856488, !7, i64 856496, !7, i64 856504, !10, i64 856512, !7, i64 856520, !8, i64 856528, !7, i64 856608, !7, i64 856616, !7, i64 856624, !7, i64 856632, !10, i64 856640, !10, i64 856644, !10, i64 856648, !7, i64 856656, !7, i64 856664, !8, i64 856672, !8, i64 856688, !7, i64 856704, !7, i64 856712, !10, i64 856720, !7, i64 856728, !7, i64 856736, !7, i64 856744, !7, i64 856752, !7, i64 856760, !7, i64 856768, !7, i64 856776, !7, i64 856784, !7, i64 856792, !7, i64 856800, !7, i64 856808, !7, i64 856816, !10, i64 856824, !7, i64 856832, !10, i64 856840, !10, i64 856844, !10, i64 856848, !10, i64 856852, !10, i64 856856, !10, i64 856860, !10, i64 856864, !7, i64 856872}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!"short", !8, i64 0}
!12 = !{!"image_data", !13, i64 0, !8, i64 136, !8, i64 160, !8, i64 184, !8, i64 208, !8, i64 232, !8, i64 256, !8, i64 280, !8, i64 292, !8, i64 304}
!13 = !{!"frame_format", !10, i64 0, !10, i64 4, !14, i64 8, !8, i64 16, !8, i64 28, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !8, i64 72, !10, i64 84, !8, i64 88, !8, i64 100, !8, i64 112, !10, i64 124, !10, i64 128}
!14 = !{!"double", !8, i64 0}
!15 = !{!"long", !8, i64 0}
!16 = !{!6, !7, i64 856832}
!17 = !{!18, !10, i64 8}
!18 = !{!"nalu_t", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !7, i64 24, !11, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64}
!19 = !{!20, !7, i64 48}
!20 = !{!"annex_b_struct", !10, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !7, i64 48}
!21 = !{!20, !10, i64 0}
!22 = !{!20, !10, i64 36}
!23 = !{!20, !10, i64 40}
!24 = !{!8, !8, i64 0}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.mustprogress"}
!27 = !{!20, !10, i64 28}
!28 = distinct !{!28, !26}
!29 = !{!18, !10, i64 0}
!30 = distinct !{!30, !26}
!31 = !{!18, !10, i64 4}
!32 = !{!18, !7, i64 24}
!33 = !{!18, !10, i64 12}
!34 = !{!18, !10, i64 20}
!35 = !{!18, !10, i64 16}
!36 = !{i32 0, i32 2}
!37 = distinct !{!37, !26}
!38 = distinct !{!38, !26}
!39 = !{!18, !11, i64 32}
!40 = !{!20, !10, i64 24}
!41 = !{!20, !7, i64 16}
!42 = distinct !{!42, !26}
!43 = !{!20, !7, i64 8}
!44 = !{!20, !10, i64 32}
