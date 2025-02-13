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
  store ptr %2, ptr %3, align 8, !tbaa !35
  %4 = icmp eq ptr %2, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(42) @errortext, ptr noundef nonnull align 1 dereferenceable(42) @.str, i64 42, i1 false)
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #16
  %6 = load ptr, ptr %3, align 8, !tbaa !35
  br label %7

7:                                                ; preds = %5, %1
  %8 = phi ptr [ %6, %5 ], [ %2, %1 ]
  %9 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 171
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  %11 = getelementptr inbounds %struct.nalu_t, ptr %10, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !47
  %13 = zext i32 %12 to i64
  %14 = tail call noalias ptr @malloc(i64 noundef %13) #17
  %15 = getelementptr inbounds %struct.annex_b_struct, ptr %8, i64 0, i32 8
  store ptr %14, ptr %15, align 8, !tbaa !49
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
  store i32 -1, ptr %0, align 8, !tbaa !51
  %2 = getelementptr inbounds %struct.annex_b_struct, ptr %0, i64 0, i32 1
  %3 = getelementptr inbounds %struct.annex_b_struct, ptr %0, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  store i32 1, ptr %3, align 4, !tbaa !52
  %4 = getelementptr inbounds %struct.annex_b_struct, ptr %0, i64 0, i32 7
  store i32 0, ptr %4, align 8, !tbaa !53
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define dso_local void @free_annex_b(ptr nocapture noundef %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 144
  %3 = load ptr, ptr %2, align 8, !tbaa !35
  %4 = getelementptr inbounds %struct.annex_b_struct, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !49
  tail call void @free(ptr noundef %5) #16
  %6 = load ptr, ptr %2, align 8, !tbaa !35
  tail call void @free(ptr noundef %6) #16
  store ptr null, ptr %2, align 8, !tbaa !35
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local i32 @GetAnnexbNALU(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 144
  %4 = load ptr, ptr %3, align 8, !tbaa !35
  %5 = getelementptr inbounds %struct.annex_b_struct, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !49
  %7 = getelementptr inbounds %struct.annex_b_struct, ptr %4, i64 0, i32 7
  %8 = load i32, ptr %7, align 8, !tbaa !53
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
  store i8 0, ptr %15, align 1, !tbaa !54
  %18 = add nuw nsw i32 %16, 1
  %19 = load i32, ptr %7, align 8, !tbaa !53
  %20 = add nsw i32 %19, -1
  %21 = icmp slt i32 %18, %20
  br i1 %21, label %14, label %22, !llvm.loop !55

22:                                               ; preds = %14
  %23 = add nuw nsw i32 %16, 2
  br label %24

24:                                               ; preds = %22, %10
  %25 = phi i32 [ 1, %10 ], [ %23, %22 ]
  %26 = phi ptr [ %6, %10 ], [ %17, %22 ]
  %27 = getelementptr inbounds i8, ptr %26, i64 1
  store i8 1, ptr %26, align 1, !tbaa !54
  br label %38

28:                                               ; preds = %12, %33
  %29 = phi i32 [ %34, %33 ], [ 0, %12 ]
  %30 = phi ptr [ %36, %33 ], [ %6, %12 ]
  %31 = load i32, ptr %13, align 4, !tbaa !57
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = add nuw nsw i32 %29, 1
  %35 = tail call fastcc zeroext i8 @getfbyte(ptr noundef nonnull %4) #18
  %36 = getelementptr inbounds i8, ptr %30, i64 1
  store i8 %35, ptr %30, align 1, !tbaa !54
  %37 = icmp eq i8 %35, 0
  br i1 %37, label %28, label %38, !llvm.loop !58

38:                                               ; preds = %28, %33, %24
  %39 = phi i32 [ %25, %24 ], [ %29, %28 ], [ %34, %33 ]
  %40 = phi ptr [ %27, %24 ], [ %30, %28 ], [ %36, %33 ]
  %41 = getelementptr inbounds %struct.annex_b_struct, ptr %4, i64 0, i32 4
  %42 = load i32, ptr %41, align 4, !tbaa !57
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
  %50 = load i8, ptr %49, align 1, !tbaa !54
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
  store i32 %59, ptr %1, align 8, !tbaa !59
  %60 = getelementptr inbounds %struct.annex_b_struct, ptr %4, i64 0, i32 6
  %61 = load i32, ptr %60, align 4, !tbaa !52
  %62 = icmp eq i32 %61, 0
  %63 = select i1 %62, i1 %58, i1 false
  br i1 %63, label %64, label %66

64:                                               ; preds = %56
  %65 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.9)
  br label %156

66:                                               ; preds = %56
  store i32 0, ptr %60, align 4, !tbaa !52
  br label %67

67:                                               ; preds = %66, %114
  %68 = phi ptr [ %40, %66 ], [ %115, %114 ]
  %69 = phi i32 [ %39, %66 ], [ %109, %114 ]
  %70 = load i32, ptr %41, align 4, !tbaa !57
  %71 = icmp eq i32 %70, 1
  br i1 %71, label %72, label %108

72:                                               ; preds = %67
  %73 = getelementptr inbounds i8, ptr %68, i64 -2
  %74 = load i8, ptr %73, align 1, !tbaa !54
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %72, %76
  %77 = phi ptr [ %79, %76 ], [ %73, %72 ]
  %78 = phi i32 [ %80, %76 ], [ %69, %72 ]
  %79 = getelementptr inbounds i8, ptr %77, i64 -1
  %80 = add nsw i32 %78, -1
  %81 = load i8, ptr %79, align 1, !tbaa !54
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %76, label %83, !llvm.loop !60

83:                                               ; preds = %76, %72
  %84 = phi i32 [ %69, %72 ], [ %80, %76 ]
  %85 = add nsw i32 %84, -1
  %86 = sub nsw i32 %85, %39
  %87 = getelementptr inbounds %struct.nalu_t, ptr %1, i64 0, i32 1
  store i32 %86, ptr %87, align 4, !tbaa !61
  %88 = getelementptr inbounds %struct.nalu_t, ptr %1, i64 0, i32 6
  %89 = load ptr, ptr %88, align 8, !tbaa !62
  %90 = load ptr, ptr %5, align 8, !tbaa !49
  %91 = zext nneg i32 %39 to i64
  %92 = getelementptr inbounds i8, ptr %90, i64 %91
  %93 = zext i32 %86 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %89, ptr align 1 %92, i64 %93, i1 false)
  %94 = load ptr, ptr %88, align 8, !tbaa !62
  %95 = load i8, ptr %94, align 1, !tbaa !54
  %96 = lshr i8 %95, 7
  %97 = zext nneg i8 %96 to i32
  %98 = getelementptr inbounds %struct.nalu_t, ptr %1, i64 0, i32 3
  store i32 %97, ptr %98, align 4, !tbaa !63
  %99 = load i8, ptr %94, align 1, !tbaa !54
  %100 = lshr i8 %99, 5
  %101 = and i8 %100, 3
  %102 = zext nneg i8 %101 to i32
  %103 = getelementptr inbounds %struct.nalu_t, ptr %1, i64 0, i32 5
  store i32 %102, ptr %103, align 4, !tbaa !64
  %104 = load i8, ptr %94, align 1, !tbaa !54
  %105 = and i8 %104, 31
  %106 = zext nneg i8 %105 to i32
  %107 = getelementptr inbounds %struct.nalu_t, ptr %1, i64 0, i32 4
  store i32 %106, ptr %107, align 8, !tbaa !65
  store i32 0, ptr %7, align 8, !tbaa !53
  br label %156

108:                                              ; preds = %67
  %109 = add nsw i32 %69, 1
  %110 = tail call fastcc zeroext i8 @getfbyte(ptr noundef nonnull %4) #18
  store i8 %110, ptr %68, align 1, !tbaa !54
  %111 = getelementptr inbounds i8, ptr %68, i64 -3
  %112 = tail call fastcc i32 @FindStartCode(ptr noundef nonnull %111, i32 noundef 3) #18, !range !66
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %108
  %115 = getelementptr inbounds i8, ptr %68, i64 1
  %116 = getelementptr inbounds i8, ptr %68, i64 -2
  %117 = tail call fastcc i32 @FindStartCode(ptr noundef nonnull %116, i32 noundef 2) #18, !range !66
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %67, label %130, !llvm.loop !67

119:                                              ; preds = %108
  %120 = getelementptr inbounds i8, ptr %68, i64 -4
  %121 = load i8, ptr %120, align 1, !tbaa !54
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %123, label %130

123:                                              ; preds = %119, %123
  %124 = phi ptr [ %126, %123 ], [ %120, %119 ]
  %125 = phi i32 [ %127, %123 ], [ %109, %119 ]
  %126 = getelementptr inbounds i8, ptr %124, i64 -1
  %127 = add nsw i32 %125, -1
  %128 = load i8, ptr %126, align 1, !tbaa !54
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %123, label %130, !llvm.loop !68

130:                                              ; preds = %114, %123, %119
  %131 = phi i32 [ 4, %119 ], [ 4, %123 ], [ 3, %114 ]
  %132 = phi i32 [ %109, %119 ], [ %127, %123 ], [ %109, %114 ]
  store i32 %131, ptr %7, align 8, !tbaa !53
  %133 = sub nsw i32 %132, %131
  %134 = sub nsw i32 %133, %39
  %135 = getelementptr inbounds %struct.nalu_t, ptr %1, i64 0, i32 1
  store i32 %134, ptr %135, align 4, !tbaa !61
  %136 = getelementptr inbounds %struct.nalu_t, ptr %1, i64 0, i32 6
  %137 = load ptr, ptr %136, align 8, !tbaa !62
  %138 = load ptr, ptr %5, align 8, !tbaa !49
  %139 = zext nneg i32 %39 to i64
  %140 = getelementptr inbounds i8, ptr %138, i64 %139
  tail call fastcc void @fast_memcpy(ptr noundef %137, ptr noundef %140, i32 noundef %134) #18
  %141 = load ptr, ptr %136, align 8, !tbaa !62
  %142 = load i8, ptr %141, align 1, !tbaa !54
  %143 = lshr i8 %142, 7
  %144 = zext nneg i8 %143 to i32
  %145 = getelementptr inbounds %struct.nalu_t, ptr %1, i64 0, i32 3
  store i32 %144, ptr %145, align 4, !tbaa !63
  %146 = load i8, ptr %141, align 1, !tbaa !54
  %147 = lshr i8 %146, 5
  %148 = and i8 %147, 3
  %149 = zext nneg i8 %148 to i32
  %150 = getelementptr inbounds %struct.nalu_t, ptr %1, i64 0, i32 5
  store i32 %149, ptr %150, align 4, !tbaa !64
  %151 = load i8, ptr %141, align 1, !tbaa !54
  %152 = and i8 %151, 31
  %153 = zext nneg i8 %152 to i32
  %154 = getelementptr inbounds %struct.nalu_t, ptr %1, i64 0, i32 4
  store i32 %153, ptr %154, align 8, !tbaa !65
  %155 = getelementptr inbounds %struct.nalu_t, ptr %1, i64 0, i32 7
  store i16 0, ptr %155, align 8, !tbaa !69
  br label %156

156:                                              ; preds = %44, %130, %83, %64, %54, %46
  %157 = phi i32 [ -1, %46 ], [ -1, %54 ], [ -1, %64 ], [ %85, %83 ], [ %133, %130 ], [ 0, %44 ]
  ret i32 %157
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @getfbyte(ptr nocapture noundef %0) unnamed_addr #8 !PGOFuncName !70 {
  %2 = getelementptr inbounds %struct.annex_b_struct, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !71
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @getChunk(ptr noundef nonnull %0) #18
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %5
  %9 = load i32, ptr %2, align 8, !tbaa !71
  br label %10

10:                                               ; preds = %8, %1
  %11 = phi i32 [ %9, %8 ], [ %3, %1 ]
  %12 = add nsw i32 %11, -1
  store i32 %12, ptr %2, align 8, !tbaa !71
  %13 = getelementptr inbounds %struct.annex_b_struct, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !72
  %15 = getelementptr inbounds i8, ptr %14, i64 1
  store ptr %15, ptr %13, align 8, !tbaa !72
  %16 = load i8, ptr %14, align 1, !tbaa !54
  br label %17

17:                                               ; preds = %5, %10
  %18 = phi i8 [ %16, %10 ], [ 0, %5 ]
  ret i8 %18
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @FindStartCode(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #10 !PGOFuncName !73 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %16

4:                                                ; preds = %2
  %5 = zext nneg i32 %1 to i64
  %6 = getelementptr i8, ptr %0, i64 %5
  br label %7

7:                                                ; preds = %4, %12
  %8 = phi i32 [ %14, %12 ], [ 0, %4 ]
  %9 = phi ptr [ %13, %12 ], [ %0, %4 ]
  %10 = load i8, ptr %9, align 1, !tbaa !54
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %7
  %13 = getelementptr inbounds i8, ptr %9, i64 1
  %14 = add nuw nsw i32 %8, 1
  %15 = icmp eq i32 %14, %1
  br i1 %15, label %16, label %7, !llvm.loop !74

16:                                               ; preds = %12, %2
  %17 = phi ptr [ %0, %2 ], [ %6, %12 ]
  %18 = load i8, ptr %17, align 1, !tbaa !54
  %19 = icmp eq i8 %18, 1
  %20 = zext i1 %19 to i32
  br label %21

21:                                               ; preds = %7, %16
  %22 = phi i32 [ %20, %16 ], [ 0, %7 ]
  ret i32 %22
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @fast_memcpy(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #11 !PGOFuncName !75 {
  %4 = sext i32 %2 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr align 1 %1, i64 %4, i1 false)
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc noundef i32 @getChunk(ptr nocapture noundef %0) unnamed_addr #8 !PGOFuncName !76 {
  %2 = load i32, ptr %0, align 8, !tbaa !51
  %3 = getelementptr inbounds %struct.annex_b_struct, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !77
  %5 = getelementptr inbounds %struct.annex_b_struct, ptr %0, i64 0, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !78
  %7 = sext i32 %6 to i64
  %8 = tail call i64 @read(i32 noundef %2, ptr noundef %4, i64 noundef %7) #16
  %9 = trunc i64 %8 to i32
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.annex_b_struct, ptr %0, i64 0, i32 4
  store i32 1, ptr %12, align 4, !tbaa !57
  br label %17

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.annex_b_struct, ptr %0, i64 0, i32 3
  store i32 %9, ptr %14, align 8, !tbaa !71
  %15 = load ptr, ptr %3, align 8, !tbaa !77
  %16 = getelementptr inbounds %struct.annex_b_struct, ptr %0, i64 0, i32 2
  store ptr %15, ptr %16, align 8, !tbaa !72
  br label %17

17:                                               ; preds = %13, %11
  ret i32 %9
}

; Function Attrs: nofree optsize
declare noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @OpenAnnexBFile(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 144
  %4 = load ptr, ptr %3, align 8, !tbaa !35
  %5 = getelementptr inbounds %struct.annex_b_struct, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !77
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @error(ptr noundef nonnull @.str.6, i32 noundef 500) #16
  br label %9

9:                                                ; preds = %8, %2
  %10 = tail call i32 (ptr, i32, ...) @open(ptr noundef %1, i32 noundef 0) #16
  store i32 %10, ptr %4, align 8, !tbaa !51
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.7, ptr noundef %1) #16
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 500) #16
  br label %14

14:                                               ; preds = %12, %9
  %15 = getelementptr inbounds %struct.annex_b_struct, ptr %4, i64 0, i32 5
  store i32 524288, ptr %15, align 8, !tbaa !78
  %16 = tail call noalias dereferenceable_or_null(524288) ptr @malloc(i64 noundef 524288) #17
  store ptr %16, ptr %5, align 8, !tbaa !77
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  tail call void @error(ptr noundef nonnull @.str.8, i32 noundef 500) #16
  br label %19

19:                                               ; preds = %18, %14
  %20 = getelementptr inbounds %struct.annex_b_struct, ptr %4, i64 0, i32 4
  store i32 0, ptr %20, align 4, !tbaa !57
  %21 = tail call fastcc i32 @getChunk(ptr noundef nonnull %4) #18
  ret void
}

; Function Attrs: nofree optsize
declare noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #12

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CloseAnnexBFile(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 144
  %3 = load ptr, ptr %2, align 8, !tbaa !35
  %4 = load i32, ptr %3, align 8, !tbaa !51
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @close(i32 noundef %4) #16
  store i32 -1, ptr %3, align 8, !tbaa !51
  br label %8

8:                                                ; preds = %6, %1
  %9 = getelementptr inbounds %struct.annex_b_struct, ptr %3, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !77
  tail call void @free(ptr noundef %10) #16
  store ptr null, ptr %9, align 8, !tbaa !77
  ret void
}

; Function Attrs: optsize
declare i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @ResetAnnexB(ptr nocapture noundef %0) local_unnamed_addr #11 {
  %2 = getelementptr inbounds %struct.annex_b_struct, ptr %0, i64 0, i32 4
  store i32 0, ptr %2, align 4, !tbaa !57
  %3 = getelementptr inbounds %struct.annex_b_struct, ptr %0, i64 0, i32 3
  store i32 0, ptr %3, align 8, !tbaa !71
  %4 = getelementptr inbounds %struct.annex_b_struct, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !77
  %6 = getelementptr inbounds %struct.annex_b_struct, ptr %0, i64 0, i32 2
  store ptr %5, ptr %6, align 8, !tbaa !72
  ret void
}

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

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 5602379}
!4 = !{!"MaxCount", i64 1843200}
!5 = !{!"MaxInternalCount", i64 1843200}
!6 = !{!"MaxFunctionCount", i64 28800}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1843200, i32 2}
!14 = !{i32 100000, i64 1843200, i32 2}
!15 = !{i32 200000, i64 1843200, i32 2}
!16 = !{i32 300000, i64 1843200, i32 2}
!17 = !{i32 400000, i64 1843200, i32 2}
!18 = !{i32 500000, i64 1843200, i32 2}
!19 = !{i32 600000, i64 1843200, i32 2}
!20 = !{i32 700000, i64 921600, i32 4}
!21 = !{i32 800000, i64 921600, i32 4}
!22 = !{i32 900000, i64 921600, i32 4}
!23 = !{i32 950000, i64 921600, i32 4}
!24 = !{i32 990000, i64 28800, i32 6}
!25 = !{i32 999000, i64 14400, i32 7}
!26 = !{i32 999900, i64 720, i32 8}
!27 = !{i32 999990, i64 21, i32 9}
!28 = !{i32 999999, i64 1, i32 36}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!35 = !{!36, !37, i64 856608}
!36 = !{!"video_par", !37, i64 0, !37, i64 8, !37, i64 16, !38, i64 24, !38, i64 132120, !37, i64 699416, !38, i64 699424, !40, i64 848672, !40, i64 848676, !40, i64 848680, !40, i64 848684, !37, i64 848688, !37, i64 848696, !37, i64 848704, !40, i64 848712, !40, i64 848716, !40, i64 848720, !40, i64 848724, !40, i64 848728, !37, i64 848736, !37, i64 848744, !38, i64 848752, !40, i64 848776, !40, i64 848780, !40, i64 848784, !40, i64 848788, !40, i64 848792, !37, i64 848800, !38, i64 848808, !37, i64 848832, !37, i64 848840, !38, i64 848848, !40, i64 848872, !40, i64 848876, !37, i64 848880, !37, i64 848888, !38, i64 848896, !40, i64 848920, !37, i64 848928, !37, i64 848936, !40, i64 848944, !40, i64 848948, !40, i64 848952, !40, i64 848956, !40, i64 848960, !40, i64 848964, !40, i64 848968, !40, i64 848972, !40, i64 848976, !40, i64 848980, !40, i64 848984, !40, i64 848988, !40, i64 848992, !40, i64 848996, !40, i64 849000, !40, i64 849004, !40, i64 849008, !40, i64 849012, !40, i64 849016, !40, i64 849020, !40, i64 849024, !40, i64 849028, !40, i64 849032, !40, i64 849036, !41, i64 849040, !41, i64 849042, !38, i64 849044, !40, i64 849052, !40, i64 849056, !38, i64 849060, !38, i64 849072, !40, i64 849084, !40, i64 849088, !40, i64 849092, !40, i64 849096, !40, i64 849100, !40, i64 849104, !40, i64 849108, !40, i64 849112, !40, i64 849116, !40, i64 849120, !38, i64 849124, !38, i64 849148, !38, i64 849172, !40, i64 849196, !40, i64 849200, !40, i64 849204, !40, i64 849208, !40, i64 849212, !40, i64 849216, !40, i64 849220, !40, i64 849224, !40, i64 849228, !40, i64 849232, !40, i64 849236, !40, i64 849240, !40, i64 849244, !40, i64 849248, !40, i64 849252, !40, i64 849256, !40, i64 849260, !40, i64 849264, !40, i64 849268, !40, i64 849272, !40, i64 849276, !40, i64 849280, !40, i64 849284, !37, i64 849288, !37, i64 849296, !42, i64 849304, !42, i64 849624, !42, i64 849944, !42, i64 850264, !42, i64 850584, !42, i64 850904, !42, i64 851224, !42, i64 851544, !40, i64 851864, !40, i64 851868, !40, i64 851872, !45, i64 851880, !40, i64 851888, !38, i64 851892, !40, i64 855988, !40, i64 855992, !40, i64 855996, !40, i64 856000, !40, i64 856004, !40, i64 856008, !40, i64 856012, !37, i64 856016, !37, i64 856024, !37, i64 856032, !37, i64 856040, !37, i64 856048, !38, i64 856056, !37, i64 856456, !38, i64 856464, !37, i64 856488, !37, i64 856496, !37, i64 856504, !40, i64 856512, !37, i64 856520, !38, i64 856528, !37, i64 856608, !37, i64 856616, !37, i64 856624, !37, i64 856632, !40, i64 856640, !40, i64 856644, !40, i64 856648, !37, i64 856656, !37, i64 856664, !38, i64 856672, !38, i64 856688, !37, i64 856704, !37, i64 856712, !40, i64 856720, !37, i64 856728, !37, i64 856736, !37, i64 856744, !37, i64 856752, !37, i64 856760, !37, i64 856768, !37, i64 856776, !37, i64 856784, !37, i64 856792, !37, i64 856800, !37, i64 856808, !37, i64 856816, !40, i64 856824, !37, i64 856832, !40, i64 856840, !40, i64 856844, !40, i64 856848, !40, i64 856852, !40, i64 856856, !40, i64 856860, !40, i64 856864, !37, i64 856872}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"int", !38, i64 0}
!41 = !{!"short", !38, i64 0}
!42 = !{!"image_data", !43, i64 0, !38, i64 136, !38, i64 160, !38, i64 184, !38, i64 208, !38, i64 232, !38, i64 256, !38, i64 280, !38, i64 292, !38, i64 304}
!43 = !{!"frame_format", !40, i64 0, !40, i64 4, !44, i64 8, !38, i64 16, !38, i64 28, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !40, i64 64, !40, i64 68, !38, i64 72, !40, i64 84, !38, i64 88, !38, i64 100, !38, i64 112, !40, i64 124, !40, i64 128}
!44 = !{!"double", !38, i64 0}
!45 = !{!"long", !38, i64 0}
!46 = !{!36, !37, i64 856832}
!47 = !{!48, !40, i64 8}
!48 = !{!"nalu_t", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !37, i64 24, !41, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !40, i64 64}
!49 = !{!50, !37, i64 48}
!50 = !{!"annex_b_struct", !40, i64 0, !37, i64 8, !37, i64 16, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !40, i64 40, !37, i64 48}
!51 = !{!50, !40, i64 0}
!52 = !{!50, !40, i64 36}
!53 = !{!50, !40, i64 40}
!54 = !{!38, !38, i64 0}
!55 = distinct !{!55, !56}
!56 = !{!"llvm.loop.mustprogress"}
!57 = !{!50, !40, i64 28}
!58 = distinct !{!58, !56}
!59 = !{!48, !40, i64 0}
!60 = distinct !{!60, !56}
!61 = !{!48, !40, i64 4}
!62 = !{!48, !37, i64 24}
!63 = !{!48, !40, i64 12}
!64 = !{!48, !40, i64 20}
!65 = !{!48, !40, i64 16}
!66 = !{i32 0, i32 2}
!67 = distinct !{!67, !56}
!68 = distinct !{!68, !56}
!69 = !{!48, !41, i64 32}
!70 = !{!"annexb.c:getfbyte"}
!71 = !{!50, !40, i64 24}
!72 = !{!50, !37, i64 16}
!73 = !{!"annexb.c:FindStartCode"}
!74 = distinct !{!74, !56}
!75 = !{!"annexb.c:fast_memcpy"}
!76 = !{!"annexb.c:getChunk"}
!77 = !{!50, !37, i64 8}
!78 = !{!50, !40, i64 32}
