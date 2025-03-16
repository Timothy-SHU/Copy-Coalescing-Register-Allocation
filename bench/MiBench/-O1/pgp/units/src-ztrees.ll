; ModuleID = 'src/ztrees.c'
source_filename = "src/ztrees.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ct_data = type { %union.anon, %union.anon.0 }
%union.anon = type { i16 }
%union.anon.0 = type { i16 }
%struct.tree_desc = type { ptr, ptr, ptr, i32, i32, i32, i32 }

@file_type = internal unnamed_addr global ptr null, align 8
@file_method = internal unnamed_addr global ptr null, align 8
@input_len = internal unnamed_addr global i64 0, align 8
@compressed_len = internal unnamed_addr global i64 0, align 8
@static_dtree = internal global [30 x %struct.ct_data] zeroinitializer, align 16
@base_length = internal unnamed_addr global [29 x i32] zeroinitializer, align 16
@extra_lbits = internal global [29 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3, i32 4, i32 4, i32 4, i32 4, i32 5, i32 5, i32 5, i32 5, i32 0], align 16
@length_code = internal unnamed_addr global [256 x i8] zeroinitializer, align 16
@base_dist = internal unnamed_addr global [30 x i32] zeroinitializer, align 16
@extra_dbits = internal global [30 x i32] [i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7, i32 8, i32 8, i32 9, i32 9, i32 10, i32 10, i32 11, i32 11, i32 12, i32 12, i32 13, i32 13], align 16
@dist_code = internal unnamed_addr global [512 x i8] zeroinitializer, align 16
@bl_count = internal unnamed_addr global [16 x i16] zeroinitializer, align 16
@static_ltree = internal global [288 x %struct.ct_data] zeroinitializer, align 16
@flags = internal unnamed_addr global i8 0, align 1
@flag_buf = internal unnamed_addr global [4096 x i8] zeroinitializer, align 16
@last_flags = internal unnamed_addr global i32 0, align 4
@l_desc = internal global %struct.tree_desc { ptr @dyn_ltree, ptr @static_ltree, ptr @extra_lbits, i32 257, i32 286, i32 15, i32 0 }, align 8
@d_desc = internal global %struct.tree_desc { ptr @dyn_dtree, ptr @static_dtree, ptr @extra_dbits, i32 0, i32 30, i32 15, i32 0 }, align 8
@opt_len = internal unnamed_addr global i64 0, align 8
@static_len = internal unnamed_addr global i64 0, align 8
@dyn_ltree = internal global [573 x %struct.ct_data] zeroinitializer, align 16
@dyn_dtree = internal global [61 x %struct.ct_data] zeroinitializer, align 16
@slide = external local_unnamed_addr global [0 x i8], align 1
@l_buf = internal unnamed_addr global [32768 x i8] zeroinitializer, align 16
@last_lit = internal unnamed_addr global i32 0, align 4
@d_buf = internal unnamed_addr global [32768 x i16] zeroinitializer, align 16
@last_dist = internal unnamed_addr global i32 0, align 4
@flag_bit = internal unnamed_addr global i8 0, align 1
@level = external local_unnamed_addr global i32, align 4
@strstart = external local_unnamed_addr global i32, align 4
@block_start = external local_unnamed_addr global i64, align 8
@bl_tree = internal global [39 x %struct.ct_data] zeroinitializer, align 16
@heap_len = internal unnamed_addr global i32 0, align 4
@heap_max = internal unnamed_addr global i32 0, align 4
@heap = internal unnamed_addr global [573 x i32] zeroinitializer, align 16
@depth = internal unnamed_addr global [573 x i8] zeroinitializer, align 16
@bl_desc = internal global %struct.tree_desc { ptr @bl_tree, ptr null, ptr @extra_blbits, i32 0, i32 19, i32 7, i32 0 }, align 8
@bl_order = internal unnamed_addr constant [19 x i8] c"\10\11\12\00\08\07\09\06\0A\05\0B\04\0C\03\0D\02\0E\01\0F", align 16
@extra_blbits = internal global [19 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 3, i32 7], align 16

; Function Attrs: nounwind uwtable
define dso_local void @ct_init(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [16 x i16], align 16
  store ptr %0, ptr @file_type, align 8, !tbaa !5
  store ptr %1, ptr @file_method, align 8, !tbaa !5
  store i64 0, ptr @input_len, align 8, !tbaa !9
  store i64 0, ptr @compressed_len, align 8, !tbaa !9
  %4 = load i16, ptr getelementptr inbounds ([30 x %struct.ct_data], ptr @static_dtree, i64 0, i64 0, i32 1), align 2, !tbaa !11
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %6, label %190

6:                                                ; preds = %2, %30
  %7 = phi i64 [ %32, %30 ], [ 0, %2 ]
  %8 = phi i32 [ %31, %30 ], [ 0, %2 ]
  %9 = getelementptr inbounds [29 x i32], ptr @base_length, i64 0, i64 %7
  store i32 %8, ptr %9, align 4, !tbaa !12
  %10 = getelementptr inbounds [29 x i32], ptr @extra_lbits, i64 0, i64 %7
  %11 = load i32, ptr %10, align 4, !tbaa !12
  %12 = icmp eq i32 %11, 31
  br i1 %12, label %30, label %13

13:                                               ; preds = %6
  %14 = shl nuw i32 1, %11
  %15 = trunc i64 %7 to i8
  %16 = sext i32 %8 to i64
  %17 = getelementptr i8, ptr @length_code, i64 %16
  %18 = tail call i32 @llvm.smax.i32(i32 %14, i32 1)
  %19 = zext nneg i32 %18 to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %17, i8 %15, i64 %19, i1 false), !tbaa !11
  %20 = zext i32 %8 to i64
  %21 = tail call i32 @llvm.smax.i32(i32 %14, i32 1)
  br label %22

22:                                               ; preds = %13, %22
  %23 = phi i64 [ %20, %13 ], [ %25, %22 ]
  %24 = phi i32 [ 0, %13 ], [ %26, %22 ]
  %25 = add i64 %23, 1
  %26 = add nuw nsw i32 %24, 1
  %27 = icmp eq i32 %26, %21
  br i1 %27, label %28, label %22, !llvm.loop !14

28:                                               ; preds = %22
  %29 = trunc i64 %25 to i32
  br label %30

30:                                               ; preds = %28, %6
  %31 = phi i32 [ %8, %6 ], [ %29, %28 ]
  %32 = add nuw nsw i64 %7, 1
  %33 = icmp eq i64 %32, 28
  br i1 %33, label %34, label %6, !llvm.loop !16

34:                                               ; preds = %30
  %35 = add nsw i32 %31, -1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [256 x i8], ptr @length_code, i64 0, i64 %36
  store i8 28, ptr %37, align 1, !tbaa !11
  br label %38

38:                                               ; preds = %34, %62
  %39 = phi i64 [ 0, %34 ], [ %64, %62 ]
  %40 = phi i32 [ 0, %34 ], [ %63, %62 ]
  %41 = getelementptr inbounds [30 x i32], ptr @base_dist, i64 0, i64 %39
  store i32 %40, ptr %41, align 4, !tbaa !12
  %42 = getelementptr inbounds [30 x i32], ptr @extra_dbits, i64 0, i64 %39
  %43 = load i32, ptr %42, align 4, !tbaa !12
  %44 = icmp eq i32 %43, 31
  br i1 %44, label %62, label %45

45:                                               ; preds = %38
  %46 = shl nuw i32 1, %43
  %47 = trunc i64 %39 to i8
  %48 = sext i32 %40 to i64
  %49 = getelementptr i8, ptr @dist_code, i64 %48
  %50 = tail call i32 @llvm.smax.i32(i32 %46, i32 1)
  %51 = zext nneg i32 %50 to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %49, i8 %47, i64 %51, i1 false), !tbaa !11
  %52 = zext i32 %40 to i64
  %53 = tail call i32 @llvm.smax.i32(i32 %46, i32 1)
  br label %54

54:                                               ; preds = %45, %54
  %55 = phi i64 [ %52, %45 ], [ %57, %54 ]
  %56 = phi i32 [ 0, %45 ], [ %58, %54 ]
  %57 = add i64 %55, 1
  %58 = add nuw nsw i32 %56, 1
  %59 = icmp eq i32 %58, %53
  br i1 %59, label %60, label %54, !llvm.loop !17

60:                                               ; preds = %54
  %61 = trunc i64 %57 to i32
  br label %62

62:                                               ; preds = %60, %38
  %63 = phi i32 [ %40, %38 ], [ %61, %60 ]
  %64 = add nuw nsw i64 %39, 1
  %65 = icmp eq i64 %64, 16
  br i1 %65, label %66, label %38, !llvm.loop !18

66:                                               ; preds = %62
  %67 = ashr i32 %63, 7
  br label %70

68:                                               ; preds = %97
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @bl_count, i8 0, i64 32, i1 false), !tbaa !19
  %69 = load i16, ptr getelementptr inbounds ([16 x i16], ptr @bl_count, i64 0, i64 8), align 16, !tbaa !19
  br label %104

70:                                               ; preds = %66, %97
  %71 = phi i64 [ 16, %66 ], [ %99, %97 ]
  %72 = phi i32 [ %67, %66 ], [ %98, %97 ]
  %73 = shl i32 %72, 7
  %74 = getelementptr inbounds [30 x i32], ptr @base_dist, i64 0, i64 %71
  store i32 %73, ptr %74, align 4, !tbaa !12
  %75 = getelementptr inbounds [30 x i32], ptr @extra_dbits, i64 0, i64 %71
  %76 = load i32, ptr %75, align 4, !tbaa !12
  %77 = add nsw i32 %76, -7
  %78 = icmp eq i32 %77, 31
  br i1 %78, label %97, label %79

79:                                               ; preds = %70
  %80 = shl nuw i32 1, %77
  %81 = trunc i64 %71 to i8
  %82 = add i32 %72, 256
  %83 = sext i32 %82 to i64
  %84 = getelementptr i8, ptr @dist_code, i64 %83
  %85 = tail call i32 @llvm.smax.i32(i32 %80, i32 1)
  %86 = zext nneg i32 %85 to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %84, i8 %81, i64 %86, i1 false), !tbaa !11
  %87 = zext i32 %72 to i64
  %88 = tail call i32 @llvm.smax.i32(i32 %80, i32 1)
  br label %89

89:                                               ; preds = %79, %89
  %90 = phi i64 [ %87, %79 ], [ %92, %89 ]
  %91 = phi i32 [ 0, %79 ], [ %93, %89 ]
  %92 = add i64 %90, 1
  %93 = add nuw nsw i32 %91, 1
  %94 = icmp eq i32 %93, %88
  br i1 %94, label %95, label %89, !llvm.loop !21

95:                                               ; preds = %89
  %96 = trunc i64 %92 to i32
  br label %97

97:                                               ; preds = %95, %70
  %98 = phi i32 [ %72, %70 ], [ %96, %95 ]
  %99 = add nuw nsw i64 %71, 1
  %100 = icmp eq i64 %99, 30
  br i1 %100, label %68, label %70, !llvm.loop !22

101:                                              ; preds = %104
  %102 = add i16 %69, 144
  store i16 %102, ptr getelementptr inbounds ([16 x i16], ptr @bl_count, i64 0, i64 8), align 16, !tbaa !19
  %103 = load i16, ptr getelementptr inbounds ([16 x i16], ptr @bl_count, i64 0, i64 9), align 2, !tbaa !19
  br label %112

104:                                              ; preds = %68, %104
  %105 = phi i64 [ 0, %68 ], [ %106, %104 ]
  %106 = add nuw nsw i64 %105, 1
  %107 = getelementptr inbounds [288 x %struct.ct_data], ptr @static_ltree, i64 0, i64 %105, i32 1
  store i16 8, ptr %107, align 2, !tbaa !11
  %108 = icmp eq i64 %106, 144
  br i1 %108, label %101, label %104, !llvm.loop !23

109:                                              ; preds = %112
  %110 = add i16 %103, 112
  store i16 %110, ptr getelementptr inbounds ([16 x i16], ptr @bl_count, i64 0, i64 9), align 2, !tbaa !19
  %111 = load i16, ptr getelementptr inbounds ([16 x i16], ptr @bl_count, i64 0, i64 7), align 2, !tbaa !19
  br label %120

112:                                              ; preds = %101, %112
  %113 = phi i64 [ 144, %101 ], [ %114, %112 ]
  %114 = add nuw nsw i64 %113, 1
  %115 = getelementptr inbounds [288 x %struct.ct_data], ptr @static_ltree, i64 0, i64 %113, i32 1
  store i16 9, ptr %115, align 2, !tbaa !11
  %116 = icmp eq i64 %114, 256
  br i1 %116, label %109, label %112, !llvm.loop !24

117:                                              ; preds = %120
  %118 = add i16 %111, 24
  store i16 %118, ptr getelementptr inbounds ([16 x i16], ptr @bl_count, i64 0, i64 7), align 2, !tbaa !19
  %119 = load i16, ptr getelementptr inbounds ([16 x i16], ptr @bl_count, i64 0, i64 8), align 16, !tbaa !19
  br label %125

120:                                              ; preds = %109, %120
  %121 = phi i64 [ 256, %109 ], [ %122, %120 ]
  %122 = add nuw nsw i64 %121, 1
  %123 = getelementptr inbounds [288 x %struct.ct_data], ptr @static_ltree, i64 0, i64 %121, i32 1
  store i16 7, ptr %123, align 2, !tbaa !11
  %124 = icmp eq i64 %122, 280
  br i1 %124, label %117, label %120, !llvm.loop !25

125:                                              ; preds = %117, %125
  %126 = phi i64 [ 280, %117 ], [ %127, %125 ]
  %127 = add nuw nsw i64 %126, 1
  %128 = getelementptr inbounds [288 x %struct.ct_data], ptr @static_ltree, i64 0, i64 %126, i32 1
  store i16 8, ptr %128, align 2, !tbaa !11
  %129 = icmp eq i64 %127, 288
  br i1 %129, label %130, label %125, !llvm.loop !26

130:                                              ; preds = %125
  %131 = add i16 %119, 8
  store i16 %131, ptr getelementptr inbounds ([16 x i16], ptr @bl_count, i64 0, i64 8), align 16, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #7
  br label %132

132:                                              ; preds = %132, %130
  %133 = phi i64 [ 1, %130 ], [ %144, %132 ]
  %134 = phi i32 [ 0, %130 ], [ %141, %132 ]
  %135 = and i32 %134, 65534
  %136 = add nsw i64 %133, -1
  %137 = getelementptr inbounds [16 x i16], ptr @bl_count, i64 0, i64 %136
  %138 = load i16, ptr %137, align 2, !tbaa !19
  %139 = zext i16 %138 to i32
  %140 = add nuw nsw i32 %135, %139
  %141 = shl nuw nsw i32 %140, 1
  %142 = trunc i32 %141 to i16
  %143 = getelementptr inbounds [16 x i16], ptr %3, i64 0, i64 %133
  store i16 %142, ptr %143, align 2, !tbaa !19
  %144 = add nuw nsw i64 %133, 1
  %145 = icmp eq i64 %144, 16
  br i1 %145, label %146, label %132, !llvm.loop !27

146:                                              ; preds = %132, %161
  %147 = phi i64 [ %162, %161 ], [ 0, %132 ]
  %148 = getelementptr inbounds %struct.ct_data, ptr @static_ltree, i64 %147, i32 1
  %149 = load i16, ptr %148, align 2, !tbaa !11
  %150 = icmp eq i16 %149, 0
  br i1 %150, label %161, label %151

151:                                              ; preds = %146
  %152 = zext i16 %149 to i32
  %153 = getelementptr inbounds %struct.ct_data, ptr @static_ltree, i64 %147
  %154 = zext i16 %149 to i64
  %155 = getelementptr inbounds [16 x i16], ptr %3, i64 0, i64 %154
  %156 = load i16, ptr %155, align 2, !tbaa !19
  %157 = add i16 %156, 1
  store i16 %157, ptr %155, align 2, !tbaa !19
  %158 = zext i16 %156 to i32
  %159 = tail call i32 @bi_reverse(i32 noundef %158, i32 noundef %152) #7
  %160 = trunc i32 %159 to i16
  store i16 %160, ptr %153, align 4, !tbaa !11
  br label %161

161:                                              ; preds = %151, %146
  %162 = add nuw nsw i64 %147, 1
  %163 = icmp eq i64 %162, 288
  br i1 %163, label %164, label %146, !llvm.loop !28

164:                                              ; preds = %161
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #7
  br label %165

165:                                              ; preds = %164, %165
  %166 = phi i64 [ 0, %164 ], [ %172, %165 ]
  %167 = getelementptr inbounds [30 x %struct.ct_data], ptr @static_dtree, i64 0, i64 %166
  %168 = getelementptr inbounds [30 x %struct.ct_data], ptr @static_dtree, i64 0, i64 %166, i32 1
  store i16 5, ptr %168, align 2, !tbaa !11
  %169 = trunc i64 %166 to i32
  %170 = tail call i32 @bi_reverse(i32 noundef %169, i32 noundef 5) #7
  %171 = trunc i32 %170 to i16
  store i16 %171, ptr %167, align 4, !tbaa !11
  %172 = add nuw nsw i64 %166, 1
  %173 = icmp eq i64 %172, 30
  br i1 %173, label %174, label %165, !llvm.loop !29

174:                                              ; preds = %165, %174
  %175 = phi i64 [ %177, %174 ], [ 0, %165 ]
  %176 = getelementptr inbounds [573 x %struct.ct_data], ptr @dyn_ltree, i64 0, i64 %175
  store i16 0, ptr %176, align 4, !tbaa !11
  %177 = add nuw nsw i64 %175, 1
  %178 = icmp eq i64 %177, 286
  br i1 %178, label %179, label %174, !llvm.loop !30

179:                                              ; preds = %174, %179
  %180 = phi i64 [ %182, %179 ], [ 0, %174 ]
  %181 = getelementptr inbounds [61 x %struct.ct_data], ptr @dyn_dtree, i64 0, i64 %180
  store i16 0, ptr %181, align 4, !tbaa !11
  %182 = add nuw nsw i64 %180, 1
  %183 = icmp eq i64 %182, 30
  br i1 %183, label %184, label %179, !llvm.loop !31

184:                                              ; preds = %179, %184
  %185 = phi i64 [ %187, %184 ], [ 0, %179 ]
  %186 = getelementptr inbounds [39 x %struct.ct_data], ptr @bl_tree, i64 0, i64 %185
  store i16 0, ptr %186, align 4, !tbaa !11
  %187 = add nuw nsw i64 %185, 1
  %188 = icmp eq i64 %187, 19
  br i1 %188, label %189, label %184, !llvm.loop !32

189:                                              ; preds = %184
  store i16 1, ptr getelementptr inbounds ([573 x %struct.ct_data], ptr @dyn_ltree, i64 0, i64 256), align 16, !tbaa !11
  store i64 0, ptr @static_len, align 8, !tbaa !9
  store i64 0, ptr @opt_len, align 8, !tbaa !9
  store i32 0, ptr @last_flags, align 4, !tbaa !12
  store i32 0, ptr @last_dist, align 4, !tbaa !12
  store i32 0, ptr @last_lit, align 4, !tbaa !12
  store i8 0, ptr @flags, align 1, !tbaa !11
  store i8 1, ptr @flag_bit, align 1, !tbaa !11
  br label %190

190:                                              ; preds = %2, %189
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @bi_reverse(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @ct_free() local_unnamed_addr #3 {
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i64 @flush_block(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load i8, ptr @flags, align 1, !tbaa !11
  %5 = load i32, ptr @last_flags, align 4, !tbaa !12
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds [4096 x i8], ptr @flag_buf, i64 0, i64 %6
  store i8 %4, ptr %7, align 1, !tbaa !11
  %8 = load ptr, ptr @file_type, align 8, !tbaa !5
  %9 = load i16, ptr %8, align 2, !tbaa !19
  %10 = icmp eq i16 %9, -1
  br i1 %10, label %11, label %42

11:                                               ; preds = %3, %11
  %12 = phi i64 [ %14, %11 ], [ 0, %3 ]
  %13 = phi i32 [ %18, %11 ], [ 0, %3 ]
  %14 = add nuw nsw i64 %12, 1
  %15 = getelementptr inbounds [573 x %struct.ct_data], ptr @dyn_ltree, i64 0, i64 %12
  %16 = load i16, ptr %15, align 4, !tbaa !11
  %17 = zext i16 %16 to i32
  %18 = add i32 %13, %17
  %19 = icmp eq i64 %14, 7
  br i1 %19, label %20, label %11, !llvm.loop !33

20:                                               ; preds = %11, %20
  %21 = phi i64 [ %23, %20 ], [ 7, %11 ]
  %22 = phi i32 [ %27, %20 ], [ 0, %11 ]
  %23 = add nuw nsw i64 %21, 1
  %24 = getelementptr inbounds [573 x %struct.ct_data], ptr @dyn_ltree, i64 0, i64 %21
  %25 = load i16, ptr %24, align 4, !tbaa !11
  %26 = zext i16 %25 to i32
  %27 = add i32 %22, %26
  %28 = icmp eq i64 %23, 128
  br i1 %28, label %29, label %20, !llvm.loop !34

29:                                               ; preds = %20, %29
  %30 = phi i64 [ %32, %29 ], [ 128, %20 ]
  %31 = phi i32 [ %36, %29 ], [ %18, %20 ]
  %32 = add nuw nsw i64 %30, 1
  %33 = getelementptr inbounds [573 x %struct.ct_data], ptr @dyn_ltree, i64 0, i64 %30
  %34 = load i16, ptr %33, align 4, !tbaa !11
  %35 = zext i16 %34 to i32
  %36 = add i32 %31, %35
  %37 = icmp eq i64 %32, 256
  br i1 %37, label %38, label %29, !llvm.loop !35

38:                                               ; preds = %29
  %39 = lshr i32 %27, 2
  %40 = icmp ule i32 %36, %39
  %41 = zext i1 %40 to i16
  store i16 %41, ptr %8, align 2, !tbaa !19
  br label %42

42:                                               ; preds = %38, %3
  tail call fastcc void @build_tree(ptr noundef nonnull @l_desc)
  tail call fastcc void @build_tree(ptr noundef nonnull @d_desc)
  %43 = load i32, ptr getelementptr inbounds (%struct.tree_desc, ptr @l_desc, i64 0, i32 6), align 4, !tbaa !36
  %44 = load i16, ptr getelementptr inbounds ([573 x %struct.ct_data], ptr @dyn_ltree, i64 0, i64 0, i32 1), align 2, !tbaa !11
  %45 = sext i32 %43 to i64
  %46 = getelementptr %struct.ct_data, ptr @dyn_ltree, i64 %45
  %47 = getelementptr %struct.ct_data, ptr %46, i64 1, i32 1
  store i16 -1, ptr %47, align 2, !tbaa !11
  %48 = icmp slt i32 %43, 0
  br i1 %48, label %110, label %49

49:                                               ; preds = %42
  %50 = icmp eq i16 %44, 0
  %51 = select i1 %50, i32 3, i32 4
  %52 = select i1 %50, i32 138, i32 7
  %53 = zext i16 %44 to i32
  %54 = add nuw i32 %43, 1
  %55 = zext i32 %54 to i64
  br label %56

56:                                               ; preds = %104, %49
  %57 = phi i64 [ 0, %49 ], [ %63, %104 ]
  %58 = phi i32 [ %51, %49 ], [ %108, %104 ]
  %59 = phi i32 [ %52, %49 ], [ %107, %104 ]
  %60 = phi i32 [ 0, %49 ], [ %106, %104 ]
  %61 = phi i32 [ %53, %49 ], [ %66, %104 ]
  %62 = phi i32 [ -1, %49 ], [ %105, %104 ]
  %63 = add nuw nsw i64 %57, 1
  %64 = getelementptr inbounds %struct.ct_data, ptr @dyn_ltree, i64 %63, i32 1
  %65 = load i16, ptr %64, align 2, !tbaa !11
  %66 = zext i16 %65 to i32
  %67 = add nsw i32 %60, 1
  %68 = icmp slt i32 %67, %59
  %69 = icmp eq i32 %61, %66
  %70 = select i1 %68, i1 %69, i1 false
  br i1 %70, label %104, label %71

71:                                               ; preds = %56
  %72 = icmp slt i32 %67, %58
  br i1 %72, label %73, label %79

73:                                               ; preds = %71
  %74 = zext nneg i32 %61 to i64
  %75 = getelementptr inbounds [39 x %struct.ct_data], ptr @bl_tree, i64 0, i64 %74
  %76 = load i16, ptr %75, align 4, !tbaa !11
  %77 = trunc i32 %67 to i16
  %78 = add i16 %76, %77
  store i16 %78, ptr %75, align 4, !tbaa !11
  br label %99

79:                                               ; preds = %71
  %80 = icmp eq i32 %61, 0
  br i1 %80, label %91, label %81

81:                                               ; preds = %79
  %82 = icmp eq i32 %61, %62
  br i1 %82, label %88, label %83

83:                                               ; preds = %81
  %84 = zext nneg i32 %61 to i64
  %85 = getelementptr inbounds [39 x %struct.ct_data], ptr @bl_tree, i64 0, i64 %84
  %86 = load i16, ptr %85, align 4, !tbaa !11
  %87 = add i16 %86, 1
  store i16 %87, ptr %85, align 4, !tbaa !11
  br label %88

88:                                               ; preds = %83, %81
  %89 = load i16, ptr getelementptr inbounds ([39 x %struct.ct_data], ptr @bl_tree, i64 0, i64 16), align 16, !tbaa !11
  %90 = add i16 %89, 1
  store i16 %90, ptr getelementptr inbounds ([39 x %struct.ct_data], ptr @bl_tree, i64 0, i64 16), align 16, !tbaa !11
  br label %99

91:                                               ; preds = %79
  %92 = icmp slt i32 %60, 10
  br i1 %92, label %93, label %96

93:                                               ; preds = %91
  %94 = load i16, ptr getelementptr inbounds ([39 x %struct.ct_data], ptr @bl_tree, i64 0, i64 17), align 4, !tbaa !11
  %95 = add i16 %94, 1
  store i16 %95, ptr getelementptr inbounds ([39 x %struct.ct_data], ptr @bl_tree, i64 0, i64 17), align 4, !tbaa !11
  br label %99

96:                                               ; preds = %91
  %97 = load i16, ptr getelementptr inbounds ([39 x %struct.ct_data], ptr @bl_tree, i64 0, i64 18), align 8, !tbaa !11
  %98 = add i16 %97, 1
  store i16 %98, ptr getelementptr inbounds ([39 x %struct.ct_data], ptr @bl_tree, i64 0, i64 18), align 8, !tbaa !11
  br label %99

99:                                               ; preds = %96, %93, %88, %73
  %100 = icmp eq i16 %65, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %99
  %102 = select i1 %69, i32 6, i32 7
  %103 = select i1 %69, i32 3, i32 4
  br label %104

104:                                              ; preds = %101, %99, %56
  %105 = phi i32 [ %62, %56 ], [ %61, %99 ], [ %61, %101 ]
  %106 = phi i32 [ %67, %56 ], [ 0, %99 ], [ 0, %101 ]
  %107 = phi i32 [ %59, %56 ], [ 138, %99 ], [ %102, %101 ]
  %108 = phi i32 [ %58, %56 ], [ 3, %99 ], [ %103, %101 ]
  %109 = icmp eq i64 %63, %55
  br i1 %109, label %110, label %56, !llvm.loop !38

110:                                              ; preds = %104, %42
  %111 = load i32, ptr getelementptr inbounds (%struct.tree_desc, ptr @d_desc, i64 0, i32 6), align 4, !tbaa !36
  %112 = load i16, ptr getelementptr inbounds ([61 x %struct.ct_data], ptr @dyn_dtree, i64 0, i64 0, i32 1), align 2, !tbaa !11
  %113 = sext i32 %111 to i64
  %114 = getelementptr %struct.ct_data, ptr @dyn_dtree, i64 %113
  %115 = getelementptr %struct.ct_data, ptr %114, i64 1, i32 1
  store i16 -1, ptr %115, align 2, !tbaa !11
  %116 = icmp slt i32 %111, 0
  br i1 %116, label %178, label %117

117:                                              ; preds = %110
  %118 = icmp eq i16 %112, 0
  %119 = select i1 %118, i32 3, i32 4
  %120 = select i1 %118, i32 138, i32 7
  %121 = zext i16 %112 to i32
  %122 = add nuw i32 %111, 1
  %123 = zext i32 %122 to i64
  br label %124

124:                                              ; preds = %172, %117
  %125 = phi i64 [ 0, %117 ], [ %131, %172 ]
  %126 = phi i32 [ %119, %117 ], [ %176, %172 ]
  %127 = phi i32 [ %120, %117 ], [ %175, %172 ]
  %128 = phi i32 [ 0, %117 ], [ %174, %172 ]
  %129 = phi i32 [ %121, %117 ], [ %134, %172 ]
  %130 = phi i32 [ -1, %117 ], [ %173, %172 ]
  %131 = add nuw nsw i64 %125, 1
  %132 = getelementptr inbounds %struct.ct_data, ptr @dyn_dtree, i64 %131, i32 1
  %133 = load i16, ptr %132, align 2, !tbaa !11
  %134 = zext i16 %133 to i32
  %135 = add nsw i32 %128, 1
  %136 = icmp slt i32 %135, %127
  %137 = icmp eq i32 %129, %134
  %138 = select i1 %136, i1 %137, i1 false
  br i1 %138, label %172, label %139

139:                                              ; preds = %124
  %140 = icmp slt i32 %135, %126
  br i1 %140, label %141, label %147

141:                                              ; preds = %139
  %142 = zext nneg i32 %129 to i64
  %143 = getelementptr inbounds [39 x %struct.ct_data], ptr @bl_tree, i64 0, i64 %142
  %144 = load i16, ptr %143, align 4, !tbaa !11
  %145 = trunc i32 %135 to i16
  %146 = add i16 %144, %145
  store i16 %146, ptr %143, align 4, !tbaa !11
  br label %167

147:                                              ; preds = %139
  %148 = icmp eq i32 %129, 0
  br i1 %148, label %159, label %149

149:                                              ; preds = %147
  %150 = icmp eq i32 %129, %130
  br i1 %150, label %156, label %151

151:                                              ; preds = %149
  %152 = zext nneg i32 %129 to i64
  %153 = getelementptr inbounds [39 x %struct.ct_data], ptr @bl_tree, i64 0, i64 %152
  %154 = load i16, ptr %153, align 4, !tbaa !11
  %155 = add i16 %154, 1
  store i16 %155, ptr %153, align 4, !tbaa !11
  br label %156

156:                                              ; preds = %151, %149
  %157 = load i16, ptr getelementptr inbounds ([39 x %struct.ct_data], ptr @bl_tree, i64 0, i64 16), align 16, !tbaa !11
  %158 = add i16 %157, 1
  store i16 %158, ptr getelementptr inbounds ([39 x %struct.ct_data], ptr @bl_tree, i64 0, i64 16), align 16, !tbaa !11
  br label %167

159:                                              ; preds = %147
  %160 = icmp slt i32 %128, 10
  br i1 %160, label %161, label %164

161:                                              ; preds = %159
  %162 = load i16, ptr getelementptr inbounds ([39 x %struct.ct_data], ptr @bl_tree, i64 0, i64 17), align 4, !tbaa !11
  %163 = add i16 %162, 1
  store i16 %163, ptr getelementptr inbounds ([39 x %struct.ct_data], ptr @bl_tree, i64 0, i64 17), align 4, !tbaa !11
  br label %167

164:                                              ; preds = %159
  %165 = load i16, ptr getelementptr inbounds ([39 x %struct.ct_data], ptr @bl_tree, i64 0, i64 18), align 8, !tbaa !11
  %166 = add i16 %165, 1
  store i16 %166, ptr getelementptr inbounds ([39 x %struct.ct_data], ptr @bl_tree, i64 0, i64 18), align 8, !tbaa !11
  br label %167

167:                                              ; preds = %164, %161, %156, %141
  %168 = icmp eq i16 %133, 0
  br i1 %168, label %172, label %169

169:                                              ; preds = %167
  %170 = select i1 %137, i32 6, i32 7
  %171 = select i1 %137, i32 3, i32 4
  br label %172

172:                                              ; preds = %169, %167, %124
  %173 = phi i32 [ %130, %124 ], [ %129, %167 ], [ %129, %169 ]
  %174 = phi i32 [ %135, %124 ], [ 0, %167 ], [ 0, %169 ]
  %175 = phi i32 [ %127, %124 ], [ 138, %167 ], [ %170, %169 ]
  %176 = phi i32 [ %126, %124 ], [ 3, %167 ], [ %171, %169 ]
  %177 = icmp eq i64 %131, %123
  br i1 %177, label %178, label %124, !llvm.loop !38

178:                                              ; preds = %172, %110
  tail call fastcc void @build_tree(ptr noundef nonnull @bl_desc)
  br label %179

179:                                              ; preds = %188, %178
  %180 = phi i32 [ 18, %178 ], [ %189, %188 ]
  %181 = zext nneg i32 %180 to i64
  %182 = getelementptr inbounds [19 x i8], ptr @bl_order, i64 0, i64 %181
  %183 = load i8, ptr %182, align 1, !tbaa !11
  %184 = zext i8 %183 to i64
  %185 = getelementptr inbounds [39 x %struct.ct_data], ptr @bl_tree, i64 0, i64 %184, i32 1
  %186 = load i16, ptr %185, align 2, !tbaa !11
  %187 = icmp eq i16 %186, 0
  br i1 %187, label %188, label %191

188:                                              ; preds = %179
  %189 = add nsw i32 %180, -1
  %190 = icmp ugt i32 %180, 3
  br i1 %190, label %179, label %191, !llvm.loop !39

191:                                              ; preds = %179, %188
  %192 = phi i32 [ %180, %179 ], [ 2, %188 ]
  %193 = mul i32 %192, 3
  %194 = add i32 %193, 17
  %195 = sext i32 %194 to i64
  %196 = load i64, ptr @opt_len, align 8, !tbaa !9
  %197 = add i64 %196, %195
  store i64 %197, ptr @opt_len, align 8, !tbaa !9
  %198 = add i64 %197, 10
  %199 = lshr i64 %198, 3
  %200 = load i64, ptr @static_len, align 8, !tbaa !9
  %201 = add i64 %200, 10
  %202 = lshr i64 %201, 3
  %203 = load i64, ptr @input_len, align 8, !tbaa !9
  %204 = add i64 %203, %1
  store i64 %204, ptr @input_len, align 8, !tbaa !9
  %205 = tail call i64 @llvm.umin.i64(i64 %202, i64 %199)
  %206 = add i64 %1, 4
  %207 = icmp ule i64 %206, %205
  %208 = icmp ne ptr %0, null
  %209 = and i1 %208, %207
  br i1 %209, label %210, label %217

210:                                              ; preds = %191
  tail call void @send_bits(i32 noundef %2, i32 noundef 3) #7
  %211 = load i64, ptr @compressed_len, align 8, !tbaa !9
  %212 = add i64 %211, 10
  %213 = and i64 %212, -8
  %214 = shl i64 %206, 3
  %215 = add i64 %213, %214
  store i64 %215, ptr @compressed_len, align 8, !tbaa !9
  %216 = trunc i64 %1 to i32
  tail call void @copy_block(ptr noundef nonnull %0, i32 noundef %216, i32 noundef 1) #7
  br label %250

217:                                              ; preds = %191
  %218 = icmp ugt i64 %202, %199
  br i1 %218, label %225, label %219

219:                                              ; preds = %217
  %220 = add nsw i32 %2, 2
  tail call void @send_bits(i32 noundef %220, i32 noundef 3) #7
  tail call fastcc void @compress_block(ptr noundef nonnull @static_ltree, ptr noundef nonnull @static_dtree)
  %221 = load i64, ptr @static_len, align 8, !tbaa !9
  %222 = add i64 %221, 3
  %223 = load i64, ptr @compressed_len, align 8, !tbaa !9
  %224 = add i64 %222, %223
  store i64 %224, ptr @compressed_len, align 8, !tbaa !9
  br label %250

225:                                              ; preds = %217
  %226 = add nsw i32 %2, 4
  tail call void @send_bits(i32 noundef %226, i32 noundef 3) #7
  %227 = load i32, ptr getelementptr inbounds (%struct.tree_desc, ptr @l_desc, i64 0, i32 6), align 4, !tbaa !36
  %228 = load i32, ptr getelementptr inbounds (%struct.tree_desc, ptr @d_desc, i64 0, i32 6), align 4, !tbaa !36
  %229 = add nsw i32 %227, -256
  tail call void @send_bits(i32 noundef %229, i32 noundef 5) #7
  tail call void @send_bits(i32 noundef %228, i32 noundef 5) #7
  %230 = add nsw i32 %192, -3
  tail call void @send_bits(i32 noundef %230, i32 noundef 4) #7
  %231 = icmp sgt i32 %192, -1
  br i1 %231, label %232, label %245

232:                                              ; preds = %225
  %233 = add nuw nsw i32 %192, 1
  %234 = zext nneg i32 %233 to i64
  br label %235

235:                                              ; preds = %235, %232
  %236 = phi i64 [ 0, %232 ], [ %243, %235 ]
  %237 = getelementptr inbounds [19 x i8], ptr @bl_order, i64 0, i64 %236
  %238 = load i8, ptr %237, align 1, !tbaa !11
  %239 = zext i8 %238 to i64
  %240 = getelementptr inbounds [39 x %struct.ct_data], ptr @bl_tree, i64 0, i64 %239, i32 1
  %241 = load i16, ptr %240, align 2, !tbaa !11
  %242 = zext i16 %241 to i32
  tail call void @send_bits(i32 noundef %242, i32 noundef 3) #7
  %243 = add nuw nsw i64 %236, 1
  %244 = icmp eq i64 %243, %234
  br i1 %244, label %245, label %235, !llvm.loop !40

245:                                              ; preds = %235, %225
  tail call fastcc void @send_tree(ptr noundef nonnull @dyn_ltree, i32 noundef %227)
  tail call fastcc void @send_tree(ptr noundef nonnull @dyn_dtree, i32 noundef %228)
  tail call fastcc void @compress_block(ptr noundef nonnull @dyn_ltree, ptr noundef nonnull @dyn_dtree)
  %246 = load i64, ptr @opt_len, align 8, !tbaa !9
  %247 = add i64 %246, 3
  %248 = load i64, ptr @compressed_len, align 8, !tbaa !9
  %249 = add i64 %247, %248
  store i64 %249, ptr @compressed_len, align 8, !tbaa !9
  br label %250

250:                                              ; preds = %219, %245, %210
  br label %251

251:                                              ; preds = %250, %251
  %252 = phi i64 [ %254, %251 ], [ 0, %250 ]
  %253 = getelementptr inbounds [573 x %struct.ct_data], ptr @dyn_ltree, i64 0, i64 %252
  store i16 0, ptr %253, align 4, !tbaa !11
  %254 = add nuw nsw i64 %252, 1
  %255 = icmp eq i64 %254, 286
  br i1 %255, label %256, label %251, !llvm.loop !30

256:                                              ; preds = %251, %256
  %257 = phi i64 [ %259, %256 ], [ 0, %251 ]
  %258 = getelementptr inbounds [61 x %struct.ct_data], ptr @dyn_dtree, i64 0, i64 %257
  store i16 0, ptr %258, align 4, !tbaa !11
  %259 = add nuw nsw i64 %257, 1
  %260 = icmp eq i64 %259, 30
  br i1 %260, label %261, label %256, !llvm.loop !31

261:                                              ; preds = %256, %261
  %262 = phi i64 [ %264, %261 ], [ 0, %256 ]
  %263 = getelementptr inbounds [39 x %struct.ct_data], ptr @bl_tree, i64 0, i64 %262
  store i16 0, ptr %263, align 4, !tbaa !11
  %264 = add nuw nsw i64 %262, 1
  %265 = icmp eq i64 %264, 19
  br i1 %265, label %266, label %261, !llvm.loop !32

266:                                              ; preds = %261
  store i16 1, ptr getelementptr inbounds ([573 x %struct.ct_data], ptr @dyn_ltree, i64 0, i64 256), align 16, !tbaa !11
  store i64 0, ptr @static_len, align 8, !tbaa !9
  store i64 0, ptr @opt_len, align 8, !tbaa !9
  store i32 0, ptr @last_flags, align 4, !tbaa !12
  store i32 0, ptr @last_dist, align 4, !tbaa !12
  store i32 0, ptr @last_lit, align 4, !tbaa !12
  store i8 0, ptr @flags, align 1, !tbaa !11
  store i8 1, ptr @flag_bit, align 1, !tbaa !11
  %267 = icmp eq i32 %2, 0
  br i1 %267, label %271, label %268

268:                                              ; preds = %266
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16383) @slide, i8 0, i64 16383, i1 false)
  tail call void @bi_windup() #7
  %269 = load i64, ptr @compressed_len, align 8, !tbaa !9
  %270 = add i64 %269, 7
  store i64 %270, ptr @compressed_len, align 8, !tbaa !9
  br label %271

271:                                              ; preds = %268, %266
  %272 = load i64, ptr @compressed_len, align 8, !tbaa !9
  %273 = lshr i64 %272, 3
  ret i64 %273
}

; Function Attrs: nounwind uwtable
define internal fastcc void @build_tree(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = alloca [16 x i16], align 16
  %3 = load ptr, ptr %0, align 8, !tbaa !41
  %4 = getelementptr inbounds %struct.tree_desc, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !42
  %6 = getelementptr inbounds %struct.tree_desc, ptr %0, i64 0, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !43
  store i32 0, ptr @heap_len, align 4, !tbaa !12
  store i32 573, ptr @heap_max, align 4, !tbaa !12
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = zext nneg i32 %7 to i64
  br label %20

11:                                               ; preds = %36, %1
  %12 = phi i32 [ -1, %1 ], [ %38, %36 ]
  %13 = load i32, ptr @heap_len, align 4, !tbaa !12
  %14 = icmp slt i32 %13, 2
  br i1 %14, label %15, label %65

15:                                               ; preds = %11
  %16 = load i64, ptr @static_len, align 8, !tbaa !9
  %17 = load i64, ptr @opt_len, align 8, !tbaa !9
  %18 = icmp eq ptr %5, null
  %19 = sext i32 %13 to i64
  br label %41

20:                                               ; preds = %9, %36
  %21 = phi i64 [ 0, %9 ], [ %39, %36 ]
  %22 = phi i32 [ -1, %9 ], [ %38, %36 ]
  %23 = phi i32 [ 0, %9 ], [ %37, %36 ]
  %24 = getelementptr inbounds %struct.ct_data, ptr %3, i64 %21
  %25 = load i16, ptr %24, align 2, !tbaa !11
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %20
  %28 = add nsw i32 %23, 1
  store i32 %28, ptr @heap_len, align 4, !tbaa !12
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [573 x i32], ptr @heap, i64 0, i64 %29
  %31 = trunc i64 %21 to i32
  store i32 %31, ptr %30, align 4, !tbaa !12
  %32 = getelementptr inbounds [573 x i8], ptr @depth, i64 0, i64 %21
  store i8 0, ptr %32, align 1, !tbaa !11
  %33 = trunc i64 %21 to i32
  br label %36

34:                                               ; preds = %20
  %35 = getelementptr inbounds %struct.ct_data, ptr %3, i64 %21, i32 1
  store i16 0, ptr %35, align 2, !tbaa !11
  br label %36

36:                                               ; preds = %27, %34
  %37 = phi i32 [ %28, %27 ], [ %23, %34 ]
  %38 = phi i32 [ %33, %27 ], [ %22, %34 ]
  %39 = add nuw nsw i64 %21, 1
  %40 = icmp eq i64 %39, %10
  br i1 %40, label %11, label %20, !llvm.loop !44

41:                                               ; preds = %15, %61
  %42 = phi i64 [ %19, %15 ], [ %50, %61 ]
  %43 = phi i32 [ %12, %15 ], [ %48, %61 ]
  %44 = phi i64 [ %17, %15 ], [ %55, %61 ]
  %45 = phi i64 [ %16, %15 ], [ %62, %61 ]
  %46 = icmp slt i32 %43, 2
  %47 = add nsw i32 %43, 1
  %48 = select i1 %46, i32 %47, i32 %43
  %49 = select i1 %46, i32 %47, i32 0
  %50 = add nsw i64 %42, 1
  %51 = getelementptr inbounds [573 x i32], ptr @heap, i64 0, i64 %50
  store i32 %49, ptr %51, align 4, !tbaa !12
  %52 = sext i32 %49 to i64
  %53 = getelementptr inbounds %struct.ct_data, ptr %3, i64 %52
  store i16 1, ptr %53, align 2, !tbaa !11
  %54 = getelementptr inbounds [573 x i8], ptr @depth, i64 0, i64 %52
  store i8 0, ptr %54, align 1, !tbaa !11
  %55 = add i64 %44, -1
  br i1 %18, label %61, label %56

56:                                               ; preds = %41
  %57 = getelementptr inbounds %struct.ct_data, ptr %5, i64 %52, i32 1
  %58 = load i16, ptr %57, align 2, !tbaa !11
  %59 = zext i16 %58 to i64
  %60 = sub i64 %45, %59
  store i64 %60, ptr @static_len, align 8, !tbaa !9
  br label %61

61:                                               ; preds = %56, %41
  %62 = phi i64 [ %60, %56 ], [ %45, %41 ]
  %63 = icmp eq i64 %50, 2
  br i1 %63, label %64, label %41, !llvm.loop !45

64:                                               ; preds = %61
  store i32 2, ptr @heap_len, align 4, !tbaa !12
  store i64 %55, ptr @opt_len, align 8, !tbaa !9
  br label %65

65:                                               ; preds = %64, %11
  %66 = phi i32 [ %48, %64 ], [ %12, %11 ]
  %67 = phi i32 [ 2, %64 ], [ %13, %11 ]
  %68 = getelementptr inbounds %struct.tree_desc, ptr %0, i64 0, i32 6
  store i32 %66, ptr %68, align 4, !tbaa !36
  %69 = icmp ult i32 %67, 2
  br i1 %69, label %73, label %70

70:                                               ; preds = %65
  %71 = lshr i32 %67, 1
  %72 = zext nneg i32 %71 to i64
  br label %79

73:                                               ; preds = %142, %65
  %74 = load i32, ptr @heap_len, align 4, !tbaa !12
  %75 = load i32, ptr @heap_max, align 4, !tbaa !12
  %76 = sext i32 %75 to i64
  %77 = sext i32 %74 to i64
  %78 = sext i32 %7 to i64
  br label %148

79:                                               ; preds = %70, %142
  %80 = phi i64 [ %72, %70 ], [ %146, %142 ]
  %81 = getelementptr inbounds [573 x i32], ptr @heap, i64 0, i64 %80
  %82 = load i32, ptr %81, align 4, !tbaa !12
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [573 x i8], ptr @depth, i64 0, i64 %83
  %85 = trunc i64 %80 to i32
  %86 = shl nuw i32 %85, 1
  %87 = icmp sgt i32 %86, %67
  %88 = trunc i64 %80 to i32
  br i1 %87, label %142, label %89

89:                                               ; preds = %79
  %90 = getelementptr inbounds %struct.ct_data, ptr %3, i64 %83
  %91 = load i16, ptr %90, align 2, !tbaa !11
  %92 = trunc i64 %80 to i32
  br label %93

93:                                               ; preds = %137, %89
  %94 = phi i32 [ %86, %89 ], [ %140, %137 ]
  %95 = phi i32 [ %92, %89 ], [ %122, %137 ]
  %96 = icmp slt i32 %94, %67
  br i1 %96, label %97, label %121

97:                                               ; preds = %93
  %98 = or disjoint i32 %94, 1
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [573 x i32], ptr @heap, i64 0, i64 %99
  %101 = load i32, ptr %100, align 4, !tbaa !12
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.ct_data, ptr %3, i64 %102
  %104 = load i16, ptr %103, align 2, !tbaa !11
  %105 = sext i32 %94 to i64
  %106 = getelementptr inbounds [573 x i32], ptr @heap, i64 0, i64 %105
  %107 = load i32, ptr %106, align 8, !tbaa !12
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.ct_data, ptr %3, i64 %108
  %110 = load i16, ptr %109, align 2, !tbaa !11
  %111 = icmp ult i16 %104, %110
  br i1 %111, label %120, label %112

112:                                              ; preds = %97
  %113 = icmp eq i16 %104, %110
  br i1 %113, label %114, label %121

114:                                              ; preds = %112
  %115 = getelementptr inbounds [573 x i8], ptr @depth, i64 0, i64 %102
  %116 = load i8, ptr %115, align 1, !tbaa !11
  %117 = getelementptr inbounds [573 x i8], ptr @depth, i64 0, i64 %108
  %118 = load i8, ptr %117, align 1, !tbaa !11
  %119 = icmp ugt i8 %116, %118
  br i1 %119, label %121, label %120

120:                                              ; preds = %114, %97
  br label %121

121:                                              ; preds = %120, %114, %112, %93
  %122 = phi i32 [ %98, %120 ], [ %94, %114 ], [ %94, %112 ], [ %94, %93 ]
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [573 x i32], ptr @heap, i64 0, i64 %123
  %125 = load i32, ptr %124, align 4, !tbaa !12
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.ct_data, ptr %3, i64 %126
  %128 = load i16, ptr %127, align 2, !tbaa !11
  %129 = icmp ult i16 %91, %128
  br i1 %129, label %142, label %130

130:                                              ; preds = %121
  %131 = icmp eq i16 %91, %128
  br i1 %131, label %132, label %137

132:                                              ; preds = %130
  %133 = load i8, ptr %84, align 1, !tbaa !11
  %134 = getelementptr inbounds [573 x i8], ptr @depth, i64 0, i64 %126
  %135 = load i8, ptr %134, align 1, !tbaa !11
  %136 = icmp ugt i8 %133, %135
  br i1 %136, label %137, label %142

137:                                              ; preds = %132, %130
  %138 = sext i32 %95 to i64
  %139 = getelementptr inbounds [573 x i32], ptr @heap, i64 0, i64 %138
  store i32 %125, ptr %139, align 4, !tbaa !12
  %140 = shl i32 %122, 1
  %141 = icmp sgt i32 %140, %67
  br i1 %141, label %142, label %93, !llvm.loop !46

142:                                              ; preds = %121, %132, %137, %79
  %143 = phi i32 [ %88, %79 ], [ %122, %137 ], [ %95, %132 ], [ %95, %121 ]
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds [573 x i32], ptr @heap, i64 0, i64 %144
  store i32 %82, ptr %145, align 4, !tbaa !12
  %146 = add nsw i64 %80, -1
  %147 = icmp sgt i64 %80, 1
  br i1 %147, label %79, label %73, !llvm.loop !47

148:                                              ; preds = %73, %292
  %149 = phi i64 [ %78, %73 ], [ %240, %292 ]
  %150 = phi i64 [ %77, %73 ], [ %153, %292 ]
  %151 = phi i64 [ %76, %73 ], [ %220, %292 ]
  %152 = load i32, ptr getelementptr inbounds ([573 x i32], ptr @heap, i64 0, i64 1), align 4, !tbaa !12
  %153 = add nsw i64 %150, -1
  %154 = getelementptr inbounds [573 x i32], ptr @heap, i64 0, i64 %150
  %155 = load i32, ptr %154, align 4, !tbaa !12
  store i32 %155, ptr getelementptr inbounds ([573 x i32], ptr @heap, i64 0, i64 1), align 4, !tbaa !12
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds [573 x i8], ptr @depth, i64 0, i64 %156
  %158 = icmp slt i64 %150, 3
  br i1 %158, label %213, label %159

159:                                              ; preds = %148
  %160 = getelementptr inbounds %struct.ct_data, ptr %3, i64 %156
  %161 = load i16, ptr %160, align 2, !tbaa !11
  br label %162

162:                                              ; preds = %207, %159
  %163 = phi i32 [ 2, %159 ], [ %210, %207 ]
  %164 = phi i32 [ 1, %159 ], [ %192, %207 ]
  %165 = sext i32 %163 to i64
  %166 = icmp sgt i64 %153, %165
  br i1 %166, label %167, label %191

167:                                              ; preds = %162
  %168 = or disjoint i32 %163, 1
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds [573 x i32], ptr @heap, i64 0, i64 %169
  %171 = load i32, ptr %170, align 4, !tbaa !12
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.ct_data, ptr %3, i64 %172
  %174 = load i16, ptr %173, align 2, !tbaa !11
  %175 = sext i32 %163 to i64
  %176 = getelementptr inbounds [573 x i32], ptr @heap, i64 0, i64 %175
  %177 = load i32, ptr %176, align 8, !tbaa !12
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.ct_data, ptr %3, i64 %178
  %180 = load i16, ptr %179, align 2, !tbaa !11
  %181 = icmp ult i16 %174, %180
  br i1 %181, label %190, label %182

182:                                              ; preds = %167
  %183 = icmp eq i16 %174, %180
  br i1 %183, label %184, label %191

184:                                              ; preds = %182
  %185 = getelementptr inbounds [573 x i8], ptr @depth, i64 0, i64 %172
  %186 = load i8, ptr %185, align 1, !tbaa !11
  %187 = getelementptr inbounds [573 x i8], ptr @depth, i64 0, i64 %178
  %188 = load i8, ptr %187, align 1, !tbaa !11
  %189 = icmp ugt i8 %186, %188
  br i1 %189, label %191, label %190

190:                                              ; preds = %184, %167
  br label %191

191:                                              ; preds = %190, %184, %182, %162
  %192 = phi i32 [ %168, %190 ], [ %163, %184 ], [ %163, %182 ], [ %163, %162 ]
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds [573 x i32], ptr @heap, i64 0, i64 %193
  %195 = load i32, ptr %194, align 4, !tbaa !12
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.ct_data, ptr %3, i64 %196
  %198 = load i16, ptr %197, align 2, !tbaa !11
  %199 = icmp ult i16 %161, %198
  br i1 %199, label %213, label %200

200:                                              ; preds = %191
  %201 = icmp eq i16 %161, %198
  br i1 %201, label %202, label %207

202:                                              ; preds = %200
  %203 = load i8, ptr %157, align 1, !tbaa !11
  %204 = getelementptr inbounds [573 x i8], ptr @depth, i64 0, i64 %196
  %205 = load i8, ptr %204, align 1, !tbaa !11
  %206 = icmp ugt i8 %203, %205
  br i1 %206, label %207, label %213

207:                                              ; preds = %202, %200
  %208 = sext i32 %164 to i64
  %209 = getelementptr inbounds [573 x i32], ptr @heap, i64 0, i64 %208
  store i32 %195, ptr %209, align 4, !tbaa !12
  %210 = shl i32 %192, 1
  %211 = sext i32 %210 to i64
  %212 = icmp sgt i64 %150, %211
  br i1 %212, label %162, label %213, !llvm.loop !46

213:                                              ; preds = %191, %202, %207, %148
  %214 = phi i32 [ 1, %148 ], [ %192, %207 ], [ %164, %202 ], [ %164, %191 ]
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds [573 x i32], ptr @heap, i64 0, i64 %215
  store i32 %155, ptr %216, align 4, !tbaa !12
  %217 = load i32, ptr getelementptr inbounds ([573 x i32], ptr @heap, i64 0, i64 1), align 4, !tbaa !12
  %218 = add nsw i64 %151, -1
  %219 = getelementptr inbounds [573 x i32], ptr @heap, i64 0, i64 %218
  store i32 %152, ptr %219, align 4, !tbaa !12
  %220 = add nsw i64 %151, -2
  %221 = getelementptr inbounds [573 x i32], ptr @heap, i64 0, i64 %220
  store i32 %217, ptr %221, align 4, !tbaa !12
  %222 = sext i32 %152 to i64
  %223 = getelementptr inbounds %struct.ct_data, ptr %3, i64 %222
  %224 = load i16, ptr %223, align 2, !tbaa !11
  %225 = sext i32 %217 to i64
  %226 = getelementptr inbounds %struct.ct_data, ptr %3, i64 %225
  %227 = load i16, ptr %226, align 2, !tbaa !11
  %228 = add i16 %227, %224
  %229 = getelementptr inbounds %struct.ct_data, ptr %3, i64 %149
  store i16 %228, ptr %229, align 2, !tbaa !11
  %230 = getelementptr inbounds [573 x i8], ptr @depth, i64 0, i64 %222
  %231 = load i8, ptr %230, align 1, !tbaa !11
  %232 = getelementptr inbounds [573 x i8], ptr @depth, i64 0, i64 %225
  %233 = load i8, ptr %232, align 1, !tbaa !11
  %234 = tail call i8 @llvm.umax.i8(i8 %231, i8 %233)
  %235 = add i8 %234, 1
  %236 = getelementptr inbounds [573 x i8], ptr @depth, i64 0, i64 %149
  store i8 %235, ptr %236, align 1, !tbaa !11
  %237 = trunc i64 %149 to i16
  %238 = getelementptr inbounds %struct.ct_data, ptr %3, i64 %225, i32 1
  store i16 %237, ptr %238, align 2, !tbaa !11
  %239 = getelementptr inbounds %struct.ct_data, ptr %3, i64 %222, i32 1
  store i16 %237, ptr %239, align 2, !tbaa !11
  %240 = add nsw i64 %149, 1
  %241 = trunc i64 %149 to i32
  store i32 %241, ptr getelementptr inbounds ([573 x i32], ptr @heap, i64 0, i64 1), align 4, !tbaa !12
  br i1 %158, label %292, label %242

242:                                              ; preds = %213, %286
  %243 = phi i32 [ %289, %286 ], [ 2, %213 ]
  %244 = phi i32 [ %272, %286 ], [ 1, %213 ]
  %245 = sext i32 %243 to i64
  %246 = icmp sgt i64 %153, %245
  br i1 %246, label %247, label %271

247:                                              ; preds = %242
  %248 = or disjoint i32 %243, 1
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds [573 x i32], ptr @heap, i64 0, i64 %249
  %251 = load i32, ptr %250, align 4, !tbaa !12
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds %struct.ct_data, ptr %3, i64 %252
  %254 = load i16, ptr %253, align 2, !tbaa !11
  %255 = sext i32 %243 to i64
  %256 = getelementptr inbounds [573 x i32], ptr @heap, i64 0, i64 %255
  %257 = load i32, ptr %256, align 8, !tbaa !12
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds %struct.ct_data, ptr %3, i64 %258
  %260 = load i16, ptr %259, align 2, !tbaa !11
  %261 = icmp ult i16 %254, %260
  br i1 %261, label %270, label %262

262:                                              ; preds = %247
  %263 = icmp eq i16 %254, %260
  br i1 %263, label %264, label %271

264:                                              ; preds = %262
  %265 = getelementptr inbounds [573 x i8], ptr @depth, i64 0, i64 %252
  %266 = load i8, ptr %265, align 1, !tbaa !11
  %267 = getelementptr inbounds [573 x i8], ptr @depth, i64 0, i64 %258
  %268 = load i8, ptr %267, align 1, !tbaa !11
  %269 = icmp ugt i8 %266, %268
  br i1 %269, label %271, label %270

270:                                              ; preds = %264, %247
  br label %271

271:                                              ; preds = %270, %264, %262, %242
  %272 = phi i32 [ %248, %270 ], [ %243, %264 ], [ %243, %262 ], [ %243, %242 ]
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds [573 x i32], ptr @heap, i64 0, i64 %273
  %275 = load i32, ptr %274, align 4, !tbaa !12
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds %struct.ct_data, ptr %3, i64 %276
  %278 = load i16, ptr %277, align 2, !tbaa !11
  %279 = icmp ult i16 %228, %278
  br i1 %279, label %292, label %280

280:                                              ; preds = %271
  %281 = icmp eq i16 %228, %278
  br i1 %281, label %282, label %286

282:                                              ; preds = %280
  %283 = getelementptr inbounds [573 x i8], ptr @depth, i64 0, i64 %276
  %284 = load i8, ptr %283, align 1, !tbaa !11
  %285 = icmp ugt i8 %235, %284
  br i1 %285, label %286, label %292

286:                                              ; preds = %282, %280
  %287 = sext i32 %244 to i64
  %288 = getelementptr inbounds [573 x i32], ptr @heap, i64 0, i64 %287
  store i32 %275, ptr %288, align 4, !tbaa !12
  %289 = shl i32 %272, 1
  %290 = sext i32 %289 to i64
  %291 = icmp sgt i64 %150, %290
  br i1 %291, label %242, label %292, !llvm.loop !46

292:                                              ; preds = %271, %282, %286, %213
  %293 = phi i32 [ 1, %213 ], [ %272, %286 ], [ %244, %282 ], [ %244, %271 ]
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds [573 x i32], ptr @heap, i64 0, i64 %294
  %296 = trunc i64 %149 to i32
  store i32 %296, ptr %295, align 4, !tbaa !12
  %297 = icmp sgt i64 %150, 2
  br i1 %297, label %148, label %298, !llvm.loop !48

298:                                              ; preds = %292
  %299 = trunc i64 %153 to i32
  %300 = trunc i64 %151 to i32
  %301 = trunc i64 %220 to i32
  store i32 %299, ptr @heap_len, align 4, !tbaa !12
  store i32 %301, ptr @heap_max, align 4, !tbaa !12
  %302 = load i32, ptr getelementptr inbounds ([573 x i32], ptr @heap, i64 0, i64 1), align 4, !tbaa !12
  %303 = add nsw i32 %300, -3
  store i32 %303, ptr @heap_max, align 4, !tbaa !12
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds [573 x i32], ptr @heap, i64 0, i64 %304
  store i32 %302, ptr %305, align 4, !tbaa !12
  %306 = load ptr, ptr %0, align 8, !tbaa !41
  %307 = getelementptr inbounds %struct.tree_desc, ptr %0, i64 0, i32 2
  %308 = load ptr, ptr %307, align 8, !tbaa !49
  %309 = getelementptr inbounds %struct.tree_desc, ptr %0, i64 0, i32 3
  %310 = load i32, ptr %309, align 8, !tbaa !50
  %311 = load i32, ptr %68, align 4, !tbaa !36
  %312 = getelementptr inbounds %struct.tree_desc, ptr %0, i64 0, i32 5
  %313 = load i32, ptr %312, align 8, !tbaa !51
  %314 = load ptr, ptr %4, align 8, !tbaa !42
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @bl_count, i8 0, i64 32, i1 false), !tbaa !19
  %315 = sext i32 %302 to i64
  %316 = getelementptr inbounds %struct.ct_data, ptr %306, i64 %315, i32 1
  store i16 0, ptr %316, align 2, !tbaa !11
  %317 = icmp slt i32 %300, 575
  br i1 %317, label %318, label %378

318:                                              ; preds = %298
  %319 = load i64, ptr @static_len, align 8, !tbaa !9
  %320 = load i64, ptr @opt_len, align 8, !tbaa !9
  %321 = icmp eq ptr %314, null
  %322 = add nsw i64 %304, 1
  br label %323

323:                                              ; preds = %372, %318
  %324 = phi i64 [ %322, %318 ], [ %375, %372 ]
  %325 = phi i32 [ 0, %318 ], [ %342, %372 ]
  %326 = phi i64 [ %320, %318 ], [ %374, %372 ]
  %327 = phi i64 [ %319, %318 ], [ %373, %372 ]
  %328 = getelementptr inbounds [573 x i32], ptr @heap, i64 0, i64 %324
  %329 = load i32, ptr %328, align 4, !tbaa !12
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds %struct.ct_data, ptr %306, i64 %330
  %332 = getelementptr inbounds %struct.ct_data, ptr %306, i64 %330, i32 1
  %333 = load i16, ptr %332, align 2, !tbaa !11
  %334 = zext i16 %333 to i64
  %335 = getelementptr inbounds %struct.ct_data, ptr %306, i64 %334, i32 1
  %336 = load i16, ptr %335, align 2, !tbaa !11
  %337 = zext i16 %336 to i32
  %338 = add nuw nsw i32 %337, 1
  %339 = icmp sle i32 %313, %337
  %340 = select i1 %339, i32 %313, i32 %338
  %341 = zext i1 %339 to i32
  %342 = add nuw nsw i32 %325, %341
  %343 = trunc i32 %340 to i16
  store i16 %343, ptr %332, align 2, !tbaa !11
  %344 = icmp sgt i32 %329, %311
  br i1 %344, label %372, label %345

345:                                              ; preds = %323
  %346 = sext i32 %340 to i64
  %347 = getelementptr inbounds [16 x i16], ptr @bl_count, i64 0, i64 %346
  %348 = load i16, ptr %347, align 2, !tbaa !19
  %349 = add i16 %348, 1
  store i16 %349, ptr %347, align 2, !tbaa !19
  %350 = icmp slt i32 %329, %310
  br i1 %350, label %356, label %351

351:                                              ; preds = %345
  %352 = sub nsw i32 %329, %310
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds i32, ptr %308, i64 %353
  %355 = load i32, ptr %354, align 4, !tbaa !12
  br label %356

356:                                              ; preds = %351, %345
  %357 = phi i32 [ %355, %351 ], [ 0, %345 ]
  %358 = load i16, ptr %331, align 2, !tbaa !11
  %359 = zext i16 %358 to i64
  %360 = add nsw i32 %357, %340
  %361 = sext i32 %360 to i64
  %362 = mul nsw i64 %359, %361
  %363 = add i64 %362, %326
  store i64 %363, ptr @opt_len, align 8, !tbaa !9
  br i1 %321, label %372, label %364

364:                                              ; preds = %356
  %365 = getelementptr inbounds %struct.ct_data, ptr %314, i64 %330, i32 1
  %366 = load i16, ptr %365, align 2, !tbaa !11
  %367 = zext i16 %366 to i32
  %368 = add nsw i32 %357, %367
  %369 = sext i32 %368 to i64
  %370 = mul nsw i64 %369, %359
  %371 = add i64 %370, %327
  store i64 %371, ptr @static_len, align 8, !tbaa !9
  br label %372

372:                                              ; preds = %364, %356, %323
  %373 = phi i64 [ %327, %356 ], [ %371, %364 ], [ %327, %323 ]
  %374 = phi i64 [ %363, %356 ], [ %363, %364 ], [ %326, %323 ]
  %375 = add nsw i64 %324, 1
  %376 = and i64 %375, 4294967295
  %377 = icmp eq i64 %376, 573
  br i1 %377, label %378, label %323, !llvm.loop !52

378:                                              ; preds = %372, %298
  %379 = phi i32 [ 0, %298 ], [ %342, %372 ]
  %380 = phi i32 [ %301, %298 ], [ 573, %372 ]
  %381 = icmp eq i32 %379, 0
  br i1 %381, label %457, label %382

382:                                              ; preds = %378
  %383 = sext i32 %313 to i64
  %384 = getelementptr inbounds [16 x i16], ptr @bl_count, i64 0, i64 %383
  br label %385

385:                                              ; preds = %393, %382
  %386 = phi i32 [ %402, %393 ], [ %379, %382 ]
  br label %387

387:                                              ; preds = %387, %385
  %388 = phi i64 [ %389, %387 ], [ %383, %385 ]
  %389 = add i64 %388, -1
  %390 = getelementptr inbounds [16 x i16], ptr @bl_count, i64 0, i64 %389
  %391 = load i16, ptr %390, align 2, !tbaa !19
  %392 = icmp eq i16 %391, 0
  br i1 %392, label %387, label %393, !llvm.loop !53

393:                                              ; preds = %387
  %394 = add i16 %391, -1
  store i16 %394, ptr %390, align 2, !tbaa !19
  %395 = shl i64 %388, 32
  %396 = ashr exact i64 %395, 32
  %397 = getelementptr inbounds [16 x i16], ptr @bl_count, i64 0, i64 %396
  %398 = load i16, ptr %397, align 2, !tbaa !19
  %399 = add i16 %398, 2
  store i16 %399, ptr %397, align 2, !tbaa !19
  %400 = load i16, ptr %384, align 2, !tbaa !19
  %401 = add i16 %400, -1
  store i16 %401, ptr %384, align 2, !tbaa !19
  %402 = add nsw i32 %386, -2
  %403 = icmp sgt i32 %386, 2
  br i1 %403, label %385, label %404, !llvm.loop !54

404:                                              ; preds = %393
  %405 = icmp eq i32 %313, 0
  br i1 %405, label %457, label %406

406:                                              ; preds = %404
  %407 = load i64, ptr @opt_len, align 8, !tbaa !9
  br label %408

408:                                              ; preds = %451, %406
  %409 = phi i64 [ %383, %406 ], [ %454, %451 ]
  %410 = phi i32 [ %380, %406 ], [ %453, %451 ]
  %411 = phi i64 [ %407, %406 ], [ %452, %451 ]
  %412 = getelementptr inbounds [16 x i16], ptr @bl_count, i64 0, i64 %409
  %413 = load i16, ptr %412, align 2, !tbaa !19
  %414 = trunc i64 %409 to i16
  %415 = icmp eq i16 %413, 0
  br i1 %415, label %451, label %416

416:                                              ; preds = %408
  %417 = zext i16 %413 to i32
  %418 = trunc i64 %409 to i32
  br label %419

419:                                              ; preds = %416, %446
  %420 = phi i32 [ %410, %416 ], [ %432, %446 ]
  %421 = phi i32 [ %417, %416 ], [ %449, %446 ]
  %422 = phi i64 [ %411, %416 ], [ %448, %446 ]
  %423 = phi i64 [ %411, %416 ], [ %447, %446 ]
  %424 = sext i32 %420 to i64
  br label %425

425:                                              ; preds = %425, %419
  %426 = phi i64 [ %424, %419 ], [ %427, %425 ]
  %427 = add i64 %426, -1
  %428 = getelementptr inbounds [573 x i32], ptr @heap, i64 0, i64 %427
  %429 = load i32, ptr %428, align 4, !tbaa !12
  %430 = icmp sgt i32 %429, %311
  br i1 %430, label %425, label %431, !llvm.loop !55

431:                                              ; preds = %425
  %432 = trunc i64 %427 to i32
  %433 = sext i32 %429 to i64
  %434 = getelementptr inbounds %struct.ct_data, ptr %306, i64 %433, i32 1
  %435 = load i16, ptr %434, align 2, !tbaa !11
  %436 = zext i16 %435 to i32
  %437 = icmp eq i32 %418, %436
  br i1 %437, label %446, label %438

438:                                              ; preds = %431
  %439 = getelementptr inbounds %struct.ct_data, ptr %306, i64 %433
  %440 = zext i16 %435 to i64
  %441 = sub nsw i64 %409, %440
  %442 = load i16, ptr %439, align 2, !tbaa !11
  %443 = zext i16 %442 to i64
  %444 = mul nsw i64 %441, %443
  %445 = add i64 %444, %422
  store i64 %445, ptr @opt_len, align 8, !tbaa !9
  store i16 %414, ptr %434, align 2, !tbaa !11
  br label %446

446:                                              ; preds = %438, %431
  %447 = phi i64 [ %445, %438 ], [ %423, %431 ]
  %448 = phi i64 [ %445, %438 ], [ %422, %431 ]
  %449 = add nsw i32 %421, -1
  %450 = icmp eq i32 %449, 0
  br i1 %450, label %451, label %419, !llvm.loop !55

451:                                              ; preds = %446, %408
  %452 = phi i64 [ %411, %408 ], [ %447, %446 ]
  %453 = phi i32 [ %410, %408 ], [ %432, %446 ]
  %454 = add nsw i64 %409, -1
  %455 = and i64 %454, 4294967295
  %456 = icmp eq i64 %455, 0
  br i1 %456, label %457, label %408, !llvm.loop !56

457:                                              ; preds = %451, %378, %404
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #7
  br label %463

458:                                              ; preds = %463
  %459 = icmp slt i32 %66, 0
  br i1 %459, label %495, label %460

460:                                              ; preds = %458
  %461 = add nuw i32 %66, 1
  %462 = zext i32 %461 to i64
  br label %477

463:                                              ; preds = %463, %457
  %464 = phi i64 [ 1, %457 ], [ %475, %463 ]
  %465 = phi i32 [ 0, %457 ], [ %472, %463 ]
  %466 = and i32 %465, 65534
  %467 = add nsw i64 %464, -1
  %468 = getelementptr inbounds [16 x i16], ptr @bl_count, i64 0, i64 %467
  %469 = load i16, ptr %468, align 2, !tbaa !19
  %470 = zext i16 %469 to i32
  %471 = add nuw nsw i32 %466, %470
  %472 = shl nuw nsw i32 %471, 1
  %473 = trunc i32 %472 to i16
  %474 = getelementptr inbounds [16 x i16], ptr %2, i64 0, i64 %464
  store i16 %473, ptr %474, align 2, !tbaa !19
  %475 = add nuw nsw i64 %464, 1
  %476 = icmp eq i64 %475, 16
  br i1 %476, label %458, label %463, !llvm.loop !27

477:                                              ; preds = %492, %460
  %478 = phi i64 [ 0, %460 ], [ %493, %492 ]
  %479 = getelementptr inbounds %struct.ct_data, ptr %3, i64 %478, i32 1
  %480 = load i16, ptr %479, align 2, !tbaa !11
  %481 = icmp eq i16 %480, 0
  br i1 %481, label %492, label %482

482:                                              ; preds = %477
  %483 = zext i16 %480 to i32
  %484 = getelementptr inbounds %struct.ct_data, ptr %3, i64 %478
  %485 = zext i16 %480 to i64
  %486 = getelementptr inbounds [16 x i16], ptr %2, i64 0, i64 %485
  %487 = load i16, ptr %486, align 2, !tbaa !19
  %488 = add i16 %487, 1
  store i16 %488, ptr %486, align 2, !tbaa !19
  %489 = zext i16 %487 to i32
  %490 = tail call i32 @bi_reverse(i32 noundef %489, i32 noundef %483) #7
  %491 = trunc i32 %490 to i16
  store i16 %491, ptr %484, align 2, !tbaa !11
  br label %492

492:                                              ; preds = %482, %477
  %493 = add nuw nsw i64 %478, 1
  %494 = icmp eq i64 %493, %462
  br i1 %494, label %495, label %477, !llvm.loop !28

495:                                              ; preds = %492, %458
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #7
  ret void
}

declare void @send_bits(i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @copy_block(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @compress_block(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = load i32, ptr @last_lit, align 4, !tbaa !12
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %86, label %5

5:                                                ; preds = %2, %80
  %6 = phi i64 [ %20, %80 ], [ 0, %2 ]
  %7 = phi i32 [ %81, %80 ], [ 0, %2 ]
  %8 = phi i32 [ %18, %80 ], [ 0, %2 ]
  %9 = phi i8 [ %82, %80 ], [ 0, %2 ]
  %10 = and i64 %6, 7
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %5
  %13 = add i32 %8, 1
  %14 = zext i32 %8 to i64
  %15 = getelementptr inbounds [4096 x i8], ptr @flag_buf, i64 0, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !11
  br label %17

17:                                               ; preds = %12, %5
  %18 = phi i32 [ %13, %12 ], [ %8, %5 ]
  %19 = phi i8 [ %16, %12 ], [ %9, %5 ]
  %20 = add nuw nsw i64 %6, 1
  %21 = getelementptr inbounds [32768 x i8], ptr @l_buf, i64 0, i64 %6
  %22 = load i8, ptr %21, align 1, !tbaa !11
  %23 = zext i8 %22 to i32
  %24 = and i8 %19, 1
  %25 = icmp eq i8 %24, 0
  %26 = zext i8 %22 to i64
  br i1 %25, label %27, label %34

27:                                               ; preds = %17
  %28 = getelementptr inbounds %struct.ct_data, ptr %0, i64 %26
  %29 = load i16, ptr %28, align 2, !tbaa !11
  %30 = zext i16 %29 to i32
  %31 = getelementptr inbounds %struct.ct_data, ptr %0, i64 %26, i32 1
  %32 = load i16, ptr %31, align 2, !tbaa !11
  %33 = zext i16 %32 to i32
  tail call void @send_bits(i32 noundef %30, i32 noundef %33) #7
  br label %80

34:                                               ; preds = %17
  %35 = getelementptr inbounds [256 x i8], ptr @length_code, i64 0, i64 %26
  %36 = load i8, ptr %35, align 1, !tbaa !11
  %37 = zext i8 %36 to i64
  %38 = getelementptr %struct.ct_data, ptr %0, i64 %37
  %39 = getelementptr %struct.ct_data, ptr %38, i64 257
  %40 = load i16, ptr %39, align 2, !tbaa !11
  %41 = zext i16 %40 to i32
  %42 = getelementptr %struct.ct_data, ptr %38, i64 257, i32 1
  %43 = load i16, ptr %42, align 2, !tbaa !11
  %44 = zext i16 %43 to i32
  tail call void @send_bits(i32 noundef %41, i32 noundef %44) #7
  %45 = getelementptr inbounds [29 x i32], ptr @extra_lbits, i64 0, i64 %37
  %46 = load i32, ptr %45, align 4, !tbaa !12
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %34
  %49 = getelementptr inbounds [29 x i32], ptr @base_length, i64 0, i64 %37
  %50 = load i32, ptr %49, align 4, !tbaa !12
  %51 = sub nsw i32 %23, %50
  tail call void @send_bits(i32 noundef %51, i32 noundef %46) #7
  br label %52

52:                                               ; preds = %48, %34
  %53 = add i32 %7, 1
  %54 = zext i32 %7 to i64
  %55 = getelementptr inbounds [32768 x i16], ptr @d_buf, i64 0, i64 %54
  %56 = load i16, ptr %55, align 2, !tbaa !19
  %57 = zext i16 %56 to i32
  %58 = icmp ult i16 %56, 256
  %59 = zext nneg i16 %56 to i64
  %60 = lshr i32 %57, 7
  %61 = add nuw nsw i32 %60, 256
  %62 = zext nneg i32 %61 to i64
  %63 = select i1 %58, i64 %59, i64 %62
  %64 = getelementptr inbounds [512 x i8], ptr @dist_code, i64 0, i64 %63
  %65 = load i8, ptr %64, align 1, !tbaa !11
  %66 = zext i8 %65 to i64
  %67 = getelementptr inbounds %struct.ct_data, ptr %1, i64 %66
  %68 = load i16, ptr %67, align 2, !tbaa !11
  %69 = zext i16 %68 to i32
  %70 = getelementptr inbounds %struct.ct_data, ptr %1, i64 %66, i32 1
  %71 = load i16, ptr %70, align 2, !tbaa !11
  %72 = zext i16 %71 to i32
  tail call void @send_bits(i32 noundef %69, i32 noundef %72) #7
  %73 = getelementptr inbounds [30 x i32], ptr @extra_dbits, i64 0, i64 %66
  %74 = load i32, ptr %73, align 4, !tbaa !12
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %52
  %77 = getelementptr inbounds [30 x i32], ptr @base_dist, i64 0, i64 %66
  %78 = load i32, ptr %77, align 4, !tbaa !12
  %79 = sub i32 %57, %78
  tail call void @send_bits(i32 noundef %79, i32 noundef %74) #7
  br label %80

80:                                               ; preds = %52, %76, %27
  %81 = phi i32 [ %7, %27 ], [ %53, %76 ], [ %53, %52 ]
  %82 = lshr i8 %19, 1
  %83 = load i32, ptr @last_lit, align 4, !tbaa !12
  %84 = zext i32 %83 to i64
  %85 = icmp ult i64 %20, %84
  br i1 %85, label %5, label %86, !llvm.loop !57

86:                                               ; preds = %80, %2
  %87 = getelementptr inbounds %struct.ct_data, ptr %0, i64 256
  %88 = load i16, ptr %87, align 2, !tbaa !11
  %89 = zext i16 %88 to i32
  %90 = getelementptr inbounds %struct.ct_data, ptr %0, i64 256, i32 1
  %91 = load i16, ptr %90, align 2, !tbaa !11
  %92 = zext i16 %91 to i32
  tail call void @send_bits(i32 noundef %89, i32 noundef %92) #7
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

declare void @bi_windup() local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @ct_tally(i32 noundef %0, i32 noundef %1) local_unnamed_addr #5 {
  %3 = trunc i32 %1 to i8
  %4 = load i32, ptr @last_lit, align 4, !tbaa !12
  %5 = add i32 %4, 1
  store i32 %5, ptr @last_lit, align 4, !tbaa !12
  %6 = zext i32 %4 to i64
  %7 = getelementptr inbounds [32768 x i8], ptr @l_buf, i64 0, i64 %6
  store i8 %3, ptr %7, align 1, !tbaa !11
  %8 = icmp eq i32 %0, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = sext i32 %1 to i64
  %11 = getelementptr inbounds [573 x %struct.ct_data], ptr @dyn_ltree, i64 0, i64 %10
  %12 = load i16, ptr %11, align 4, !tbaa !11
  %13 = add i16 %12, 1
  store i16 %13, ptr %11, align 4, !tbaa !11
  br label %44

14:                                               ; preds = %2
  %15 = add nsw i32 %0, -1
  %16 = sext i32 %1 to i64
  %17 = getelementptr inbounds [256 x i8], ptr @length_code, i64 0, i64 %16
  %18 = load i8, ptr %17, align 1, !tbaa !11
  %19 = zext i8 %18 to i64
  %20 = add nuw nsw i64 %19, 257
  %21 = getelementptr inbounds [573 x %struct.ct_data], ptr @dyn_ltree, i64 0, i64 %20
  %22 = load i16, ptr %21, align 4, !tbaa !11
  %23 = add i16 %22, 1
  store i16 %23, ptr %21, align 4, !tbaa !11
  %24 = icmp slt i32 %0, 257
  %25 = sext i32 %15 to i64
  %26 = lshr i32 %15, 7
  %27 = add nuw nsw i32 %26, 256
  %28 = zext nneg i32 %27 to i64
  %29 = select i1 %24, i64 %25, i64 %28
  %30 = getelementptr inbounds [512 x i8], ptr @dist_code, i64 0, i64 %29
  %31 = load i8, ptr %30, align 1, !tbaa !11
  %32 = zext i8 %31 to i64
  %33 = getelementptr inbounds [61 x %struct.ct_data], ptr @dyn_dtree, i64 0, i64 %32
  %34 = load i16, ptr %33, align 4, !tbaa !11
  %35 = add i16 %34, 1
  store i16 %35, ptr %33, align 4, !tbaa !11
  %36 = trunc i32 %15 to i16
  %37 = load i32, ptr @last_dist, align 4, !tbaa !12
  %38 = add i32 %37, 1
  store i32 %38, ptr @last_dist, align 4, !tbaa !12
  %39 = zext i32 %37 to i64
  %40 = getelementptr inbounds [32768 x i16], ptr @d_buf, i64 0, i64 %39
  store i16 %36, ptr %40, align 2, !tbaa !19
  %41 = load i8, ptr @flag_bit, align 1, !tbaa !11
  %42 = load i8, ptr @flags, align 1, !tbaa !11
  %43 = or i8 %42, %41
  store i8 %43, ptr @flags, align 1, !tbaa !11
  br label %44

44:                                               ; preds = %14, %9
  %45 = load i8, ptr @flag_bit, align 1, !tbaa !11
  %46 = shl i8 %45, 1
  store i8 %46, ptr @flag_bit, align 1, !tbaa !11
  %47 = and i32 %5, 7
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load i8, ptr @flags, align 1, !tbaa !11
  %51 = load i32, ptr @last_flags, align 4, !tbaa !12
  %52 = add i32 %51, 1
  store i32 %52, ptr @last_flags, align 4, !tbaa !12
  %53 = zext i32 %51 to i64
  %54 = getelementptr inbounds [4096 x i8], ptr @flag_buf, i64 0, i64 %53
  store i8 %50, ptr %54, align 1, !tbaa !11
  store i8 0, ptr @flags, align 1, !tbaa !11
  store i8 1, ptr @flag_bit, align 1, !tbaa !11
  br label %55

55:                                               ; preds = %49, %44
  %56 = load i32, ptr @level, align 4, !tbaa !12
  %57 = icmp sgt i32 %56, 2
  %58 = and i32 %5, 4095
  %59 = icmp eq i32 %58, 0
  %60 = and i1 %59, %57
  br i1 %60, label %61, label %90

61:                                               ; preds = %55
  %62 = zext i32 %5 to i64
  %63 = shl nuw nsw i64 %62, 3
  %64 = load i32, ptr @strstart, align 4, !tbaa !12
  %65 = load i64, ptr @block_start, align 8, !tbaa !9
  br label %66

66:                                               ; preds = %61, %66
  %67 = phi i64 [ 0, %61 ], [ %78, %66 ]
  %68 = phi i64 [ %63, %61 ], [ %77, %66 ]
  %69 = getelementptr inbounds [61 x %struct.ct_data], ptr @dyn_dtree, i64 0, i64 %67
  %70 = load i16, ptr %69, align 4, !tbaa !11
  %71 = zext i16 %70 to i64
  %72 = getelementptr inbounds [30 x i32], ptr @extra_dbits, i64 0, i64 %67
  %73 = load i32, ptr %72, align 4, !tbaa !12
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %74, 5
  %76 = mul nsw i64 %75, %71
  %77 = add i64 %76, %68
  %78 = add nuw nsw i64 %67, 1
  %79 = icmp eq i64 %78, 30
  br i1 %79, label %80, label %66, !llvm.loop !58

80:                                               ; preds = %66
  %81 = load i32, ptr @last_dist, align 4, !tbaa !12
  %82 = lshr i32 %5, 1
  %83 = icmp ult i32 %81, %82
  br i1 %83, label %84, label %90

84:                                               ; preds = %80
  %85 = zext i32 %64 to i64
  %86 = sub i64 %85, %65
  %87 = lshr i64 %77, 3
  %88 = lshr i64 %86, 1
  %89 = icmp ult i64 %87, %88
  br i1 %89, label %96, label %90

90:                                               ; preds = %80, %84, %55
  %91 = icmp eq i32 %5, 32767
  %92 = load i32, ptr @last_dist, align 4
  %93 = icmp eq i32 %92, 32768
  %94 = select i1 %91, i1 true, i1 %93
  %95 = zext i1 %94 to i32
  br label %96

96:                                               ; preds = %84, %90
  %97 = phi i32 [ %95, %90 ], [ 1, %84 ]
  ret i32 %97
}

; Function Attrs: nounwind uwtable
define internal fastcc void @send_tree(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = icmp slt i32 %1, 0
  br i1 %3, label %86, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.ct_data, ptr %0, i64 0, i32 1
  %6 = load i16, ptr %5, align 2, !tbaa !11
  %7 = icmp eq i16 %6, 0
  %8 = select i1 %7, i32 3, i32 4
  %9 = select i1 %7, i32 138, i32 7
  %10 = zext i16 %6 to i32
  %11 = add nuw i32 %1, 1
  %12 = zext i32 %11 to i64
  br label %13

13:                                               ; preds = %4, %80
  %14 = phi i64 [ 0, %4 ], [ %20, %80 ]
  %15 = phi i32 [ %8, %4 ], [ %84, %80 ]
  %16 = phi i32 [ %9, %4 ], [ %83, %80 ]
  %17 = phi i32 [ 0, %4 ], [ %82, %80 ]
  %18 = phi i32 [ %10, %4 ], [ %23, %80 ]
  %19 = phi i32 [ -1, %4 ], [ %81, %80 ]
  %20 = add nuw nsw i64 %14, 1
  %21 = getelementptr inbounds %struct.ct_data, ptr %0, i64 %20, i32 1
  %22 = load i16, ptr %21, align 2, !tbaa !11
  %23 = zext i16 %22 to i32
  %24 = add nsw i32 %17, 1
  %25 = icmp slt i32 %24, %16
  %26 = icmp eq i32 %18, %23
  %27 = select i1 %25, i1 %26, i1 false
  br i1 %27, label %80, label %28

28:                                               ; preds = %13
  %29 = icmp slt i32 %24, %15
  br i1 %29, label %30, label %42

30:                                               ; preds = %28
  %31 = zext nneg i32 %18 to i64
  %32 = getelementptr inbounds [39 x %struct.ct_data], ptr @bl_tree, i64 0, i64 %31
  %33 = getelementptr inbounds [39 x %struct.ct_data], ptr @bl_tree, i64 0, i64 %31, i32 1
  br label %34

34:                                               ; preds = %30, %34
  %35 = phi i32 [ %40, %34 ], [ %24, %30 ]
  %36 = load i16, ptr %32, align 4, !tbaa !11
  %37 = zext i16 %36 to i32
  %38 = load i16, ptr %33, align 2, !tbaa !11
  %39 = zext i16 %38 to i32
  tail call void @send_bits(i32 noundef %37, i32 noundef %39) #7
  %40 = add nsw i32 %35, -1
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %75, label %34, !llvm.loop !59

42:                                               ; preds = %28
  %43 = icmp eq i32 %18, 0
  br i1 %43, label %61, label %44

44:                                               ; preds = %42
  %45 = icmp eq i32 %18, %19
  br i1 %45, label %54, label %46

46:                                               ; preds = %44
  %47 = zext nneg i32 %18 to i64
  %48 = getelementptr inbounds [39 x %struct.ct_data], ptr @bl_tree, i64 0, i64 %47
  %49 = load i16, ptr %48, align 4, !tbaa !11
  %50 = zext i16 %49 to i32
  %51 = getelementptr inbounds [39 x %struct.ct_data], ptr @bl_tree, i64 0, i64 %47, i32 1
  %52 = load i16, ptr %51, align 2, !tbaa !11
  %53 = zext i16 %52 to i32
  tail call void @send_bits(i32 noundef %50, i32 noundef %53) #7
  br label %54

54:                                               ; preds = %46, %44
  %55 = phi i32 [ %17, %46 ], [ %24, %44 ]
  %56 = load i16, ptr getelementptr inbounds ([39 x %struct.ct_data], ptr @bl_tree, i64 0, i64 16), align 16, !tbaa !11
  %57 = zext i16 %56 to i32
  %58 = load i16, ptr getelementptr inbounds ([39 x %struct.ct_data], ptr @bl_tree, i64 0, i64 16, i32 1), align 2, !tbaa !11
  %59 = zext i16 %58 to i32
  tail call void @send_bits(i32 noundef %57, i32 noundef %59) #7
  %60 = add nsw i32 %55, -3
  tail call void @send_bits(i32 noundef %60, i32 noundef 2) #7
  br label %75

61:                                               ; preds = %42
  %62 = icmp slt i32 %17, 10
  br i1 %62, label %63, label %69

63:                                               ; preds = %61
  %64 = load i16, ptr getelementptr inbounds ([39 x %struct.ct_data], ptr @bl_tree, i64 0, i64 17), align 4, !tbaa !11
  %65 = zext i16 %64 to i32
  %66 = load i16, ptr getelementptr inbounds ([39 x %struct.ct_data], ptr @bl_tree, i64 0, i64 17, i32 1), align 2, !tbaa !11
  %67 = zext i16 %66 to i32
  tail call void @send_bits(i32 noundef %65, i32 noundef %67) #7
  %68 = add nsw i32 %17, -2
  tail call void @send_bits(i32 noundef %68, i32 noundef 3) #7
  br label %75

69:                                               ; preds = %61
  %70 = load i16, ptr getelementptr inbounds ([39 x %struct.ct_data], ptr @bl_tree, i64 0, i64 18), align 8, !tbaa !11
  %71 = zext i16 %70 to i32
  %72 = load i16, ptr getelementptr inbounds ([39 x %struct.ct_data], ptr @bl_tree, i64 0, i64 18, i32 1), align 2, !tbaa !11
  %73 = zext i16 %72 to i32
  tail call void @send_bits(i32 noundef %71, i32 noundef %73) #7
  %74 = add nsw i32 %17, -10
  tail call void @send_bits(i32 noundef %74, i32 noundef 7) #7
  br label %75

75:                                               ; preds = %34, %63, %69, %54
  %76 = icmp eq i16 %22, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %75
  %78 = select i1 %26, i32 6, i32 7
  %79 = select i1 %26, i32 3, i32 4
  br label %80

80:                                               ; preds = %77, %75, %13
  %81 = phi i32 [ %19, %13 ], [ %18, %75 ], [ %18, %77 ]
  %82 = phi i32 [ %24, %13 ], [ 0, %75 ], [ 0, %77 ]
  %83 = phi i32 [ %16, %13 ], [ 138, %75 ], [ %78, %77 ]
  %84 = phi i32 [ %15, %13 ], [ 3, %75 ], [ %79, %77 ]
  %85 = icmp eq i64 %20, %12
  br i1 %85, label %86, label %13, !llvm.loop !60

86:                                               ; preds = %80, %2
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"long", !7, i64 0}
!11 = !{!7, !7, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !7, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.unroll.disable"}
!16 = distinct !{!16, !15}
!17 = distinct !{!17, !15}
!18 = distinct !{!18, !15}
!19 = !{!20, !20, i64 0}
!20 = !{!"short", !7, i64 0}
!21 = distinct !{!21, !15}
!22 = distinct !{!22, !15}
!23 = distinct !{!23, !15}
!24 = distinct !{!24, !15}
!25 = distinct !{!25, !15}
!26 = distinct !{!26, !15}
!27 = distinct !{!27, !15}
!28 = distinct !{!28, !15}
!29 = distinct !{!29, !15}
!30 = distinct !{!30, !15}
!31 = distinct !{!31, !15}
!32 = distinct !{!32, !15}
!33 = distinct !{!33, !15}
!34 = distinct !{!34, !15}
!35 = distinct !{!35, !15}
!36 = !{!37, !13, i64 36}
!37 = !{!"tree_desc", !6, i64 0, !6, i64 8, !6, i64 16, !13, i64 24, !13, i64 28, !13, i64 32, !13, i64 36}
!38 = distinct !{!38, !15}
!39 = distinct !{!39, !15}
!40 = distinct !{!40, !15}
!41 = !{!37, !6, i64 0}
!42 = !{!37, !6, i64 8}
!43 = !{!37, !13, i64 28}
!44 = distinct !{!44, !15}
!45 = distinct !{!45, !15}
!46 = distinct !{!46, !15}
!47 = distinct !{!47, !15}
!48 = distinct !{!48, !15}
!49 = !{!37, !6, i64 16}
!50 = !{!37, !13, i64 24}
!51 = !{!37, !13, i64 32}
!52 = distinct !{!52, !15}
!53 = distinct !{!53, !15}
!54 = distinct !{!54, !15}
!55 = distinct !{!55, !15}
!56 = distinct !{!56, !15}
!57 = distinct !{!57, !15}
!58 = distinct !{!58, !15}
!59 = distinct !{!59, !15}
!60 = distinct !{!60, !15}
