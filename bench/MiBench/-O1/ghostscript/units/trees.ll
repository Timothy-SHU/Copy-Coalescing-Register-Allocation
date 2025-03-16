; ModuleID = 'trees.c'
source_filename = "trees.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.static_tree_desc_s = type { ptr, ptr, i32, i32, i32 }
%struct.ct_data_s = type { %union.anon, %union.anon.0 }
%union.anon = type { i16 }
%union.anon.0 = type { i16 }
%struct.internal_state = type { ptr, i32, ptr, ptr, i32, i32, i8, i8, i32, i32, i32, i32, ptr, i64, ptr, ptr, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [573 x %struct.ct_data_s], [61 x %struct.ct_data_s], [39 x %struct.ct_data_s], %struct.tree_desc_s, %struct.tree_desc_s, %struct.tree_desc_s, [16 x i16], [573 x i32], i32, i32, [573 x i8], ptr, i32, i32, ptr, i64, i64, i64, i32, i32, i16, i32 }
%struct.tree_desc_s = type { ptr, i32, ptr }

@static_l_desc = internal global %struct.static_tree_desc_s { ptr @static_ltree, ptr @extra_lbits, i32 257, i32 286, i32 15 }, align 8
@static_d_desc = internal global %struct.static_tree_desc_s { ptr @static_dtree, ptr @extra_dbits, i32 0, i32 30, i32 15 }, align 8
@static_bl_desc = internal global %struct.static_tree_desc_s { ptr null, ptr @extra_blbits, i32 0, i32 19, i32 7 }, align 8
@static_ltree = internal global [288 x %struct.ct_data_s] zeroinitializer, align 16
@static_dtree = internal global [30 x %struct.ct_data_s] zeroinitializer, align 16
@length_code = internal unnamed_addr global [256 x i8] zeroinitializer, align 16
@dist_code = internal unnamed_addr global [512 x i8] zeroinitializer, align 16
@extra_dbits = internal global [30 x i32] [i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7, i32 8, i32 8, i32 9, i32 9, i32 10, i32 10, i32 11, i32 11, i32 12, i32 12, i32 13, i32 13], align 16
@tr_static_init.static_init_done = internal unnamed_addr global i1 false, align 4
@base_length = internal unnamed_addr global [29 x i32] zeroinitializer, align 16
@extra_lbits = internal global [29 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3, i32 4, i32 4, i32 4, i32 4, i32 5, i32 5, i32 5, i32 5, i32 0], align 16
@base_dist = internal unnamed_addr global [30 x i32] zeroinitializer, align 16
@extra_blbits = internal global [19 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 3, i32 7], align 16
@bl_order = internal unnamed_addr constant [19 x i8] c"\10\11\12\00\08\07\09\06\0A\05\0B\04\0C\03\0D\02\0E\01\0F", align 16

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: write, inaccessiblemem: none) uwtable
define dso_local void @_tr_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [16 x i16], align 16
  %3 = alloca [16 x i16], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #7
  %4 = load i1, ptr @tr_static_init.static_init_done, align 4
  br i1 %4, label %169, label %5

5:                                                ; preds = %1, %20
  %6 = phi i64 [ %22, %20 ], [ 0, %1 ]
  %7 = phi i32 [ %21, %20 ], [ 0, %1 ]
  %8 = getelementptr inbounds [29 x i32], ptr @base_length, i64 0, i64 %6
  store i32 %7, ptr %8, align 4, !tbaa !5
  %9 = getelementptr inbounds [29 x i32], ptr @extra_lbits, i64 0, i64 %6
  %10 = load i32, ptr %9, align 4, !tbaa !5
  %11 = icmp eq i32 %10, 31
  br i1 %11, label %20, label %12

12:                                               ; preds = %5
  %13 = shl nuw i32 1, %10
  %14 = trunc i64 %6 to i8
  %15 = sext i32 %7 to i64
  %16 = getelementptr i8, ptr @length_code, i64 %15
  %17 = tail call i32 @llvm.smax.i32(i32 %13, i32 1)
  %18 = zext nneg i32 %17 to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %16, i8 %14, i64 %18, i1 false), !tbaa !9
  %19 = add i32 %7, %17
  br label %20

20:                                               ; preds = %12, %5
  %21 = phi i32 [ %7, %5 ], [ %19, %12 ]
  %22 = add nuw nsw i64 %6, 1
  %23 = icmp eq i64 %22, 28
  br i1 %23, label %24, label %5, !llvm.loop !10

24:                                               ; preds = %20
  %25 = add nsw i32 %21, -1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [256 x i8], ptr @length_code, i64 0, i64 %26
  store i8 28, ptr %27, align 1, !tbaa !9
  br label %28

28:                                               ; preds = %43, %24
  %29 = phi i64 [ 0, %24 ], [ %45, %43 ]
  %30 = phi i32 [ 0, %24 ], [ %44, %43 ]
  %31 = getelementptr inbounds [30 x i32], ptr @base_dist, i64 0, i64 %29
  store i32 %30, ptr %31, align 4, !tbaa !5
  %32 = getelementptr inbounds [30 x i32], ptr @extra_dbits, i64 0, i64 %29
  %33 = load i32, ptr %32, align 4, !tbaa !5
  %34 = icmp eq i32 %33, 31
  br i1 %34, label %43, label %35

35:                                               ; preds = %28
  %36 = shl nuw i32 1, %33
  %37 = trunc i64 %29 to i8
  %38 = sext i32 %30 to i64
  %39 = getelementptr i8, ptr @dist_code, i64 %38
  %40 = tail call i32 @llvm.smax.i32(i32 %36, i32 1)
  %41 = zext nneg i32 %40 to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %39, i8 %37, i64 %41, i1 false), !tbaa !9
  %42 = add i32 %30, %40
  br label %43

43:                                               ; preds = %35, %28
  %44 = phi i32 [ %30, %28 ], [ %42, %35 ]
  %45 = add nuw nsw i64 %29, 1
  %46 = icmp eq i64 %45, 16
  br i1 %46, label %47, label %28, !llvm.loop !12

47:                                               ; preds = %43
  %48 = ashr i32 %44, 7
  br label %52

49:                                               ; preds = %70
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, i8 0, i64 32, i1 false), !tbaa !13
  %50 = getelementptr inbounds [16 x i16], ptr %3, i64 0, i64 8
  %51 = load i16, ptr %50, align 16, !tbaa !13
  br label %78

52:                                               ; preds = %70, %47
  %53 = phi i64 [ 16, %47 ], [ %72, %70 ]
  %54 = phi i32 [ %48, %47 ], [ %71, %70 ]
  %55 = shl i32 %54, 7
  %56 = getelementptr inbounds [30 x i32], ptr @base_dist, i64 0, i64 %53
  store i32 %55, ptr %56, align 4, !tbaa !5
  %57 = getelementptr inbounds [30 x i32], ptr @extra_dbits, i64 0, i64 %53
  %58 = load i32, ptr %57, align 4, !tbaa !5
  %59 = add nsw i32 %58, -7
  %60 = icmp eq i32 %59, 31
  br i1 %60, label %70, label %61

61:                                               ; preds = %52
  %62 = shl nuw i32 1, %59
  %63 = trunc i64 %53 to i8
  %64 = add i32 %54, 256
  %65 = sext i32 %64 to i64
  %66 = getelementptr i8, ptr @dist_code, i64 %65
  %67 = tail call i32 @llvm.smax.i32(i32 %62, i32 1)
  %68 = zext nneg i32 %67 to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %66, i8 %63, i64 %68, i1 false), !tbaa !9
  %69 = add i32 %54, %67
  br label %70

70:                                               ; preds = %61, %52
  %71 = phi i32 [ %54, %52 ], [ %69, %61 ]
  %72 = add nuw nsw i64 %53, 1
  %73 = icmp eq i64 %72, 30
  br i1 %73, label %49, label %52, !llvm.loop !15

74:                                               ; preds = %78
  %75 = add i16 %51, 144
  store i16 %75, ptr %50, align 16, !tbaa !13
  %76 = getelementptr inbounds [16 x i16], ptr %3, i64 0, i64 9
  %77 = load i16, ptr %76, align 2, !tbaa !13
  br label %87

78:                                               ; preds = %78, %49
  %79 = phi i64 [ 0, %49 ], [ %80, %78 ]
  %80 = add nuw nsw i64 %79, 1
  %81 = getelementptr inbounds [288 x %struct.ct_data_s], ptr @static_ltree, i64 0, i64 %79, i32 1
  store i16 8, ptr %81, align 2, !tbaa !9
  %82 = icmp eq i64 %80, 144
  br i1 %82, label %74, label %78, !llvm.loop !16

83:                                               ; preds = %87
  %84 = add i16 %77, 112
  store i16 %84, ptr %76, align 2, !tbaa !13
  %85 = getelementptr inbounds [16 x i16], ptr %3, i64 0, i64 7
  %86 = load i16, ptr %85, align 2, !tbaa !13
  br label %94

87:                                               ; preds = %87, %74
  %88 = phi i64 [ 144, %74 ], [ %89, %87 ]
  %89 = add nuw nsw i64 %88, 1
  %90 = getelementptr inbounds [288 x %struct.ct_data_s], ptr @static_ltree, i64 0, i64 %88, i32 1
  store i16 9, ptr %90, align 2, !tbaa !9
  %91 = icmp eq i64 %89, 256
  br i1 %91, label %83, label %87, !llvm.loop !17

92:                                               ; preds = %94
  %93 = add i16 %86, 24
  store i16 %93, ptr %85, align 2, !tbaa !13
  br label %99

94:                                               ; preds = %94, %83
  %95 = phi i64 [ 256, %83 ], [ %96, %94 ]
  %96 = add nuw nsw i64 %95, 1
  %97 = getelementptr inbounds [288 x %struct.ct_data_s], ptr @static_ltree, i64 0, i64 %95, i32 1
  store i16 7, ptr %97, align 2, !tbaa !9
  %98 = icmp eq i64 %96, 280
  br i1 %98, label %92, label %94, !llvm.loop !18

99:                                               ; preds = %99, %92
  %100 = phi i64 [ 280, %92 ], [ %101, %99 ]
  %101 = add nuw nsw i64 %100, 1
  %102 = getelementptr inbounds [288 x %struct.ct_data_s], ptr @static_ltree, i64 0, i64 %100, i32 1
  store i16 8, ptr %102, align 2, !tbaa !9
  %103 = icmp eq i64 %101, 288
  br i1 %103, label %104, label %99, !llvm.loop !19

104:                                              ; preds = %99
  %105 = add i16 %51, 152
  store i16 %105, ptr %50, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #7
  %106 = getelementptr i16, ptr %3, i64 -1
  br label %107

107:                                              ; preds = %107, %104
  %108 = phi i64 [ 1, %104 ], [ %118, %107 ]
  %109 = phi i32 [ 0, %104 ], [ %115, %107 ]
  %110 = and i32 %109, 65534
  %111 = getelementptr i16, ptr %106, i64 %108
  %112 = load i16, ptr %111, align 2, !tbaa !13
  %113 = zext i16 %112 to i32
  %114 = add nuw nsw i32 %110, %113
  %115 = shl nuw nsw i32 %114, 1
  %116 = trunc i32 %115 to i16
  %117 = getelementptr inbounds [16 x i16], ptr %2, i64 0, i64 %108
  store i16 %116, ptr %117, align 2, !tbaa !13
  %118 = add nuw nsw i64 %108, 1
  %119 = icmp eq i64 %118, 16
  br i1 %119, label %120, label %107, !llvm.loop !20

120:                                              ; preds = %107, %145
  %121 = phi i64 [ %146, %145 ], [ 0, %107 ]
  %122 = getelementptr inbounds %struct.ct_data_s, ptr @static_ltree, i64 %121, i32 1
  %123 = load i16, ptr %122, align 2, !tbaa !9
  %124 = icmp eq i16 %123, 0
  br i1 %124, label %145, label %125

125:                                              ; preds = %120
  %126 = zext i16 %123 to i32
  %127 = zext i16 %123 to i64
  %128 = getelementptr inbounds [16 x i16], ptr %2, i64 0, i64 %127
  %129 = load i16, ptr %128, align 2, !tbaa !13
  %130 = add i16 %129, 1
  store i16 %130, ptr %128, align 2, !tbaa !13
  %131 = zext i16 %129 to i32
  br label %132

132:                                              ; preds = %132, %125
  %133 = phi i32 [ %131, %125 ], [ %138, %132 ]
  %134 = phi i32 [ %126, %125 ], [ %140, %132 ]
  %135 = phi i32 [ 0, %125 ], [ %139, %132 ]
  %136 = and i32 %133, 1
  %137 = or disjoint i32 %135, %136
  %138 = lshr i32 %133, 1
  %139 = shl i32 %137, 1
  %140 = add nsw i32 %134, -1
  %141 = icmp sgt i32 %134, 1
  br i1 %141, label %132, label %142, !llvm.loop !21

142:                                              ; preds = %132
  %143 = getelementptr inbounds %struct.ct_data_s, ptr @static_ltree, i64 %121
  %144 = trunc i32 %137 to i16
  store i16 %144, ptr %143, align 4, !tbaa !9
  br label %145

145:                                              ; preds = %142, %120
  %146 = add nuw nsw i64 %121, 1
  %147 = icmp eq i64 %146, 288
  br i1 %147, label %148, label %120, !llvm.loop !22

148:                                              ; preds = %145
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #7
  br label %149

149:                                              ; preds = %163, %148
  %150 = phi i64 [ 0, %148 ], [ %166, %163 ]
  %151 = getelementptr inbounds [30 x %struct.ct_data_s], ptr @static_dtree, i64 0, i64 %150, i32 1
  store i16 5, ptr %151, align 2, !tbaa !9
  %152 = trunc i64 %150 to i32
  br label %153

153:                                              ; preds = %153, %149
  %154 = phi i32 [ %152, %149 ], [ %159, %153 ]
  %155 = phi i32 [ 5, %149 ], [ %161, %153 ]
  %156 = phi i32 [ 0, %149 ], [ %160, %153 ]
  %157 = and i32 %154, 1
  %158 = or disjoint i32 %156, %157
  %159 = lshr i32 %154, 1
  %160 = shl i32 %158, 1
  %161 = add nsw i32 %155, -1
  %162 = icmp ugt i32 %155, 1
  br i1 %162, label %153, label %163, !llvm.loop !21

163:                                              ; preds = %153
  %164 = getelementptr inbounds [30 x %struct.ct_data_s], ptr @static_dtree, i64 0, i64 %150
  %165 = trunc i32 %158 to i16
  store i16 %165, ptr %164, align 4, !tbaa !9
  %166 = add nuw nsw i64 %150, 1
  %167 = icmp eq i64 %166, 30
  br i1 %167, label %168, label %149, !llvm.loop !23

168:                                              ; preds = %163
  store i1 true, ptr @tr_static_init.static_init_done, align 4
  br label %169

169:                                              ; preds = %1, %168
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #7
  %170 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 52
  store i64 0, ptr %170, align 8, !tbaa !24
  %171 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 35
  %172 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38
  store ptr %171, ptr %172, align 8, !tbaa !29
  %173 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i32 2
  store ptr @static_l_desc, ptr %173, align 8, !tbaa !30
  %174 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 36
  %175 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39
  store ptr %174, ptr %175, align 8, !tbaa !31
  %176 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i32 2
  store ptr @static_d_desc, ptr %176, align 8, !tbaa !32
  %177 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37
  %178 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 40
  store ptr %177, ptr %178, align 8, !tbaa !33
  %179 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 40, i32 2
  store ptr @static_bl_desc, ptr %179, align 8, !tbaa !34
  %180 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 55
  store i16 0, ptr %180, align 8, !tbaa !35
  %181 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  store i32 0, ptr %181, align 4, !tbaa !36
  %182 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 54
  store i32 8, ptr %182, align 4, !tbaa !37
  br label %183

183:                                              ; preds = %183, %169
  %184 = phi i64 [ 0, %169 ], [ %186, %183 ]
  %185 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 35, i64 %184
  store i16 0, ptr %185, align 4, !tbaa !9
  %186 = add nuw nsw i64 %184, 1
  %187 = icmp eq i64 %186, 286
  br i1 %187, label %188, label %183, !llvm.loop !38

188:                                              ; preds = %183, %188
  %189 = phi i64 [ %191, %188 ], [ 0, %183 ]
  %190 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 36, i64 %189
  store i16 0, ptr %190, align 4, !tbaa !9
  %191 = add nuw nsw i64 %189, 1
  %192 = icmp eq i64 %191, 30
  br i1 %192, label %193, label %188, !llvm.loop !39

193:                                              ; preds = %188, %193
  %194 = phi i64 [ %196, %193 ], [ 0, %188 ]
  %195 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 %194
  store i16 0, ptr %195, align 4, !tbaa !9
  %196 = add nuw nsw i64 %194, 1
  %197 = icmp eq i64 %196, 19
  br i1 %197, label %198, label %193, !llvm.loop !40

198:                                              ; preds = %193
  %199 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 35, i64 256
  store i16 1, ptr %199, align 4, !tbaa !9
  %200 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 50
  %201 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 53
  store i32 0, ptr %201, align 8, !tbaa !41
  %202 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 48
  store i32 0, ptr %202, align 4, !tbaa !42
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %200, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @_tr_stored_block(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
  %5 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %6 = load i32, ptr %5, align 4, !tbaa !36
  %7 = icmp sgt i32 %6, 13
  %8 = shl i32 %3, %6
  %9 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 55
  %10 = load i16, ptr %9, align 8, !tbaa !35
  %11 = trunc i32 %8 to i16
  %12 = or i16 %10, %11
  store i16 %12, ptr %9, align 8, !tbaa !35
  br i1 %7, label %13, label %36

13:                                               ; preds = %4
  %14 = trunc i16 %12 to i8
  %15 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !43
  %17 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 4
  %18 = load i32, ptr %17, align 8, !tbaa !44
  %19 = add nsw i32 %18, 1
  store i32 %19, ptr %17, align 8, !tbaa !44
  %20 = sext i32 %18 to i64
  %21 = getelementptr inbounds i8, ptr %16, i64 %20
  store i8 %14, ptr %21, align 1, !tbaa !9
  %22 = load i16, ptr %9, align 8, !tbaa !35
  %23 = lshr i16 %22, 8
  %24 = trunc i16 %23 to i8
  %25 = load ptr, ptr %15, align 8, !tbaa !43
  %26 = load i32, ptr %17, align 8, !tbaa !44
  %27 = add nsw i32 %26, 1
  store i32 %27, ptr %17, align 8, !tbaa !44
  %28 = sext i32 %26 to i64
  %29 = getelementptr inbounds i8, ptr %25, i64 %28
  store i8 %24, ptr %29, align 1, !tbaa !9
  %30 = and i32 %3, 65535
  %31 = load i32, ptr %5, align 4, !tbaa !36
  %32 = sub i32 16, %31
  %33 = lshr i32 %30, %32
  %34 = trunc i32 %33 to i16
  store i16 %34, ptr %9, align 8, !tbaa !35
  %35 = add i32 %31, -13
  br label %38

36:                                               ; preds = %4
  %37 = add nsw i32 %6, 3
  br label %38

38:                                               ; preds = %36, %13
  %39 = phi i32 [ %37, %36 ], [ %35, %13 ]
  store i32 %39, ptr %5, align 4, !tbaa !36
  %40 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 52
  %41 = load i64, ptr %40, align 8, !tbaa !24
  %42 = add i64 %41, 10
  %43 = and i64 %42, -8
  %44 = shl i64 %2, 3
  %45 = add i64 %44, 32
  %46 = add i64 %45, %43
  store i64 %46, ptr %40, align 8, !tbaa !24
  %47 = trunc i64 %2 to i32
  %48 = icmp sgt i32 %39, 8
  br i1 %48, label %49, label %62

49:                                               ; preds = %38
  %50 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 55
  %51 = load i16, ptr %50, align 8, !tbaa !35
  %52 = trunc i16 %51 to i8
  %53 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !43
  %55 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 4
  %56 = load i32, ptr %55, align 8, !tbaa !44
  %57 = add nsw i32 %56, 1
  store i32 %57, ptr %55, align 8, !tbaa !44
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds i8, ptr %54, i64 %58
  store i8 %52, ptr %59, align 1, !tbaa !9
  %60 = load i16, ptr %50, align 8, !tbaa !35
  %61 = lshr i16 %60, 8
  br label %69

62:                                               ; preds = %38
  %63 = icmp sgt i32 %39, 0
  br i1 %63, label %64, label %79

64:                                               ; preds = %62
  %65 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 55
  %66 = load i16, ptr %65, align 8, !tbaa !35
  %67 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %68 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 4
  br label %69

69:                                               ; preds = %49, %64
  %70 = phi ptr [ %55, %49 ], [ %68, %64 ]
  %71 = phi ptr [ %53, %49 ], [ %67, %64 ]
  %72 = phi i16 [ %61, %49 ], [ %66, %64 ]
  %73 = trunc i16 %72 to i8
  %74 = load ptr, ptr %71, align 8, !tbaa !43
  %75 = load i32, ptr %70, align 8, !tbaa !44
  %76 = add nsw i32 %75, 1
  store i32 %76, ptr %70, align 8, !tbaa !44
  %77 = sext i32 %75 to i64
  %78 = getelementptr inbounds i8, ptr %74, i64 %77
  store i8 %73, ptr %78, align 1, !tbaa !9
  br label %79

79:                                               ; preds = %69, %62
  %80 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 55
  store i16 0, ptr %80, align 8, !tbaa !35
  store i32 0, ptr %5, align 4, !tbaa !36
  %81 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 54
  store i32 8, ptr %81, align 4, !tbaa !37
  %82 = trunc i64 %2 to i8
  %83 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !43
  %85 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 4
  %86 = load i32, ptr %85, align 8, !tbaa !44
  %87 = add nsw i32 %86, 1
  store i32 %87, ptr %85, align 8, !tbaa !44
  %88 = sext i32 %86 to i64
  %89 = getelementptr inbounds i8, ptr %84, i64 %88
  store i8 %82, ptr %89, align 1, !tbaa !9
  %90 = lshr i64 %2, 8
  %91 = trunc i64 %90 to i8
  %92 = load ptr, ptr %83, align 8, !tbaa !43
  %93 = load i32, ptr %85, align 8, !tbaa !44
  %94 = add nsw i32 %93, 1
  store i32 %94, ptr %85, align 8, !tbaa !44
  %95 = sext i32 %93 to i64
  %96 = getelementptr inbounds i8, ptr %92, i64 %95
  store i8 %91, ptr %96, align 1, !tbaa !9
  %97 = and i32 %47, 65535
  %98 = xor i32 %97, 65535
  %99 = trunc i32 %98 to i8
  %100 = load ptr, ptr %83, align 8, !tbaa !43
  %101 = load i32, ptr %85, align 8, !tbaa !44
  %102 = add nsw i32 %101, 1
  store i32 %102, ptr %85, align 8, !tbaa !44
  %103 = sext i32 %101 to i64
  %104 = getelementptr inbounds i8, ptr %100, i64 %103
  store i8 %99, ptr %104, align 1, !tbaa !9
  %105 = lshr i32 %98, 8
  %106 = trunc i32 %105 to i8
  %107 = load ptr, ptr %83, align 8, !tbaa !43
  %108 = load i32, ptr %85, align 8, !tbaa !44
  %109 = add nsw i32 %108, 1
  store i32 %109, ptr %85, align 8, !tbaa !44
  %110 = sext i32 %108 to i64
  %111 = getelementptr inbounds i8, ptr %107, i64 %110
  store i8 %106, ptr %111, align 1, !tbaa !9
  %112 = icmp eq i32 %47, 0
  br i1 %112, label %125, label %113

113:                                              ; preds = %79, %113
  %114 = phi ptr [ %117, %113 ], [ %1, %79 ]
  %115 = phi i32 [ %116, %113 ], [ %47, %79 ]
  %116 = add i32 %115, -1
  %117 = getelementptr inbounds i8, ptr %114, i64 1
  %118 = load i8, ptr %114, align 1, !tbaa !9
  %119 = load ptr, ptr %83, align 8, !tbaa !43
  %120 = load i32, ptr %85, align 8, !tbaa !44
  %121 = add nsw i32 %120, 1
  store i32 %121, ptr %85, align 8, !tbaa !44
  %122 = sext i32 %120 to i64
  %123 = getelementptr inbounds i8, ptr %119, i64 %122
  store i8 %118, ptr %123, align 1, !tbaa !9
  %124 = icmp eq i32 %116, 0
  br i1 %124, label %125, label %113, !llvm.loop !45

125:                                              ; preds = %113, %79
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @_tr_align(ptr noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %3 = load i32, ptr %2, align 4, !tbaa !36
  %4 = icmp sgt i32 %3, 13
  %5 = shl i32 2, %3
  %6 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 55
  %7 = load i16, ptr %6, align 8, !tbaa !35
  %8 = trunc i32 %5 to i16
  %9 = or i16 %7, %8
  store i16 %9, ptr %6, align 8, !tbaa !35
  br i1 %4, label %10, label %32

10:                                               ; preds = %1
  %11 = trunc i16 %9 to i8
  %12 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !43
  %14 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 4
  %15 = load i32, ptr %14, align 8, !tbaa !44
  %16 = add nsw i32 %15, 1
  store i32 %16, ptr %14, align 8, !tbaa !44
  %17 = sext i32 %15 to i64
  %18 = getelementptr inbounds i8, ptr %13, i64 %17
  store i8 %11, ptr %18, align 1, !tbaa !9
  %19 = load i16, ptr %6, align 8, !tbaa !35
  %20 = lshr i16 %19, 8
  %21 = trunc i16 %20 to i8
  %22 = load ptr, ptr %12, align 8, !tbaa !43
  %23 = load i32, ptr %14, align 8, !tbaa !44
  %24 = add nsw i32 %23, 1
  store i32 %24, ptr %14, align 8, !tbaa !44
  %25 = sext i32 %23 to i64
  %26 = getelementptr inbounds i8, ptr %22, i64 %25
  store i8 %21, ptr %26, align 1, !tbaa !9
  %27 = load i32, ptr %2, align 4, !tbaa !36
  %28 = sub i32 16, %27
  %29 = lshr i32 2, %28
  %30 = trunc i32 %29 to i16
  store i16 %30, ptr %6, align 8, !tbaa !35
  %31 = add i32 %27, -13
  br label %34

32:                                               ; preds = %1
  %33 = add nsw i32 %3, 3
  br label %34

34:                                               ; preds = %32, %10
  %35 = phi i32 [ %33, %32 ], [ %31, %10 ]
  store i32 %35, ptr %2, align 4, !tbaa !36
  %36 = load i16, ptr getelementptr inbounds ([288 x %struct.ct_data_s], ptr @static_ltree, i64 0, i64 256, i32 1), align 2, !tbaa !9
  %37 = zext i16 %36 to i32
  %38 = sub nsw i32 16, %37
  %39 = icmp sgt i32 %35, %38
  %40 = load i16, ptr getelementptr inbounds ([288 x %struct.ct_data_s], ptr @static_ltree, i64 0, i64 256), align 16, !tbaa !9
  %41 = zext i16 %40 to i32
  %42 = shl i32 %41, %35
  %43 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 55
  %44 = load i16, ptr %43, align 8, !tbaa !35
  %45 = trunc i32 %42 to i16
  %46 = or i16 %44, %45
  store i16 %46, ptr %43, align 8, !tbaa !35
  br i1 %39, label %47, label %70

47:                                               ; preds = %34
  %48 = trunc i16 %46 to i8
  %49 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !43
  %51 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 4
  %52 = load i32, ptr %51, align 8, !tbaa !44
  %53 = add nsw i32 %52, 1
  store i32 %53, ptr %51, align 8, !tbaa !44
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds i8, ptr %50, i64 %54
  store i8 %48, ptr %55, align 1, !tbaa !9
  %56 = load i16, ptr %43, align 8, !tbaa !35
  %57 = lshr i16 %56, 8
  %58 = trunc i16 %57 to i8
  %59 = load ptr, ptr %49, align 8, !tbaa !43
  %60 = load i32, ptr %51, align 8, !tbaa !44
  %61 = add nsw i32 %60, 1
  store i32 %61, ptr %51, align 8, !tbaa !44
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds i8, ptr %59, i64 %62
  store i8 %58, ptr %63, align 1, !tbaa !9
  %64 = load i32, ptr %2, align 4, !tbaa !36
  %65 = sub i32 16, %64
  %66 = lshr i32 %41, %65
  %67 = trunc i32 %66 to i16
  store i16 %67, ptr %43, align 8, !tbaa !35
  %68 = add nsw i32 %37, -16
  %69 = add i32 %68, %64
  br label %72

70:                                               ; preds = %34
  %71 = add nsw i32 %35, %37
  br label %72

72:                                               ; preds = %70, %47
  %73 = phi i32 [ %71, %70 ], [ %69, %47 ]
  store i32 %73, ptr %2, align 4, !tbaa !36
  %74 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 52
  %75 = load i64, ptr %74, align 8, !tbaa !24
  %76 = add i64 %75, 10
  store i64 %76, ptr %74, align 8, !tbaa !24
  %77 = icmp eq i32 %73, 16
  br i1 %77, label %78, label %97

78:                                               ; preds = %72
  %79 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 55
  %80 = load i16, ptr %79, align 8, !tbaa !35
  %81 = trunc i16 %80 to i8
  %82 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %83 = load ptr, ptr %82, align 8, !tbaa !43
  %84 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 4
  %85 = load i32, ptr %84, align 8, !tbaa !44
  %86 = add nsw i32 %85, 1
  store i32 %86, ptr %84, align 8, !tbaa !44
  %87 = sext i32 %85 to i64
  %88 = getelementptr inbounds i8, ptr %83, i64 %87
  store i8 %81, ptr %88, align 1, !tbaa !9
  %89 = load i16, ptr %79, align 8, !tbaa !35
  %90 = lshr i16 %89, 8
  %91 = trunc i16 %90 to i8
  %92 = load ptr, ptr %82, align 8, !tbaa !43
  %93 = load i32, ptr %84, align 8, !tbaa !44
  %94 = add nsw i32 %93, 1
  store i32 %94, ptr %84, align 8, !tbaa !44
  %95 = sext i32 %93 to i64
  %96 = getelementptr inbounds i8, ptr %92, i64 %95
  store i8 %91, ptr %96, align 1, !tbaa !9
  store i16 0, ptr %79, align 8, !tbaa !35
  br label %114

97:                                               ; preds = %72
  %98 = icmp sgt i32 %73, 7
  br i1 %98, label %99, label %116

99:                                               ; preds = %97
  %100 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 55
  %101 = load i16, ptr %100, align 8, !tbaa !35
  %102 = trunc i16 %101 to i8
  %103 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %104 = load ptr, ptr %103, align 8, !tbaa !43
  %105 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 4
  %106 = load i32, ptr %105, align 8, !tbaa !44
  %107 = add nsw i32 %106, 1
  store i32 %107, ptr %105, align 8, !tbaa !44
  %108 = sext i32 %106 to i64
  %109 = getelementptr inbounds i8, ptr %104, i64 %108
  store i8 %102, ptr %109, align 1, !tbaa !9
  %110 = load i16, ptr %100, align 8, !tbaa !35
  %111 = lshr i16 %110, 8
  store i16 %111, ptr %100, align 8, !tbaa !35
  %112 = load i32, ptr %2, align 4, !tbaa !36
  %113 = add nsw i32 %112, -8
  br label %114

114:                                              ; preds = %99, %78
  %115 = phi i32 [ 0, %78 ], [ %113, %99 ]
  store i32 %115, ptr %2, align 4, !tbaa !36
  br label %116

116:                                              ; preds = %114, %97
  %117 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 54
  %118 = load i32, ptr %117, align 4, !tbaa !37
  %119 = add nsw i32 %118, 11
  %120 = load i32, ptr %2, align 4, !tbaa !36
  %121 = sub i32 %119, %120
  %122 = icmp slt i32 %121, 9
  br i1 %122, label %123, label %235

123:                                              ; preds = %116
  %124 = icmp sgt i32 %120, 13
  %125 = shl i32 2, %120
  %126 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 55
  %127 = load i16, ptr %126, align 8, !tbaa !35
  %128 = trunc i32 %125 to i16
  %129 = or i16 %127, %128
  store i16 %129, ptr %126, align 8, !tbaa !35
  br i1 %124, label %130, label %152

130:                                              ; preds = %123
  %131 = trunc i16 %129 to i8
  %132 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %133 = load ptr, ptr %132, align 8, !tbaa !43
  %134 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 4
  %135 = load i32, ptr %134, align 8, !tbaa !44
  %136 = add nsw i32 %135, 1
  store i32 %136, ptr %134, align 8, !tbaa !44
  %137 = sext i32 %135 to i64
  %138 = getelementptr inbounds i8, ptr %133, i64 %137
  store i8 %131, ptr %138, align 1, !tbaa !9
  %139 = load i16, ptr %126, align 8, !tbaa !35
  %140 = lshr i16 %139, 8
  %141 = trunc i16 %140 to i8
  %142 = load ptr, ptr %132, align 8, !tbaa !43
  %143 = load i32, ptr %134, align 8, !tbaa !44
  %144 = add nsw i32 %143, 1
  store i32 %144, ptr %134, align 8, !tbaa !44
  %145 = sext i32 %143 to i64
  %146 = getelementptr inbounds i8, ptr %142, i64 %145
  store i8 %141, ptr %146, align 1, !tbaa !9
  %147 = load i32, ptr %2, align 4, !tbaa !36
  %148 = sub i32 16, %147
  %149 = lshr i32 2, %148
  %150 = trunc i32 %149 to i16
  store i16 %150, ptr %126, align 8, !tbaa !35
  %151 = add i32 %147, -13
  br label %154

152:                                              ; preds = %123
  %153 = add nsw i32 %120, 3
  br label %154

154:                                              ; preds = %152, %130
  %155 = phi i32 [ %153, %152 ], [ %151, %130 ]
  store i32 %155, ptr %2, align 4, !tbaa !36
  %156 = load i16, ptr getelementptr inbounds ([288 x %struct.ct_data_s], ptr @static_ltree, i64 0, i64 256, i32 1), align 2, !tbaa !9
  %157 = zext i16 %156 to i32
  %158 = sub nsw i32 16, %157
  %159 = icmp sgt i32 %155, %158
  %160 = load i16, ptr getelementptr inbounds ([288 x %struct.ct_data_s], ptr @static_ltree, i64 0, i64 256), align 16, !tbaa !9
  %161 = zext i16 %160 to i32
  %162 = shl i32 %161, %155
  %163 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 55
  %164 = load i16, ptr %163, align 8, !tbaa !35
  %165 = trunc i32 %162 to i16
  %166 = or i16 %164, %165
  store i16 %166, ptr %163, align 8, !tbaa !35
  br i1 %159, label %167, label %190

167:                                              ; preds = %154
  %168 = trunc i16 %166 to i8
  %169 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %170 = load ptr, ptr %169, align 8, !tbaa !43
  %171 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 4
  %172 = load i32, ptr %171, align 8, !tbaa !44
  %173 = add nsw i32 %172, 1
  store i32 %173, ptr %171, align 8, !tbaa !44
  %174 = sext i32 %172 to i64
  %175 = getelementptr inbounds i8, ptr %170, i64 %174
  store i8 %168, ptr %175, align 1, !tbaa !9
  %176 = load i16, ptr %163, align 8, !tbaa !35
  %177 = lshr i16 %176, 8
  %178 = trunc i16 %177 to i8
  %179 = load ptr, ptr %169, align 8, !tbaa !43
  %180 = load i32, ptr %171, align 8, !tbaa !44
  %181 = add nsw i32 %180, 1
  store i32 %181, ptr %171, align 8, !tbaa !44
  %182 = sext i32 %180 to i64
  %183 = getelementptr inbounds i8, ptr %179, i64 %182
  store i8 %178, ptr %183, align 1, !tbaa !9
  %184 = load i32, ptr %2, align 4, !tbaa !36
  %185 = sub i32 16, %184
  %186 = lshr i32 %161, %185
  %187 = trunc i32 %186 to i16
  store i16 %187, ptr %163, align 8, !tbaa !35
  %188 = add nsw i32 %157, -16
  %189 = add i32 %188, %184
  br label %192

190:                                              ; preds = %154
  %191 = add nsw i32 %155, %157
  br label %192

192:                                              ; preds = %190, %167
  %193 = phi i32 [ %191, %190 ], [ %189, %167 ]
  store i32 %193, ptr %2, align 4, !tbaa !36
  %194 = load i64, ptr %74, align 8, !tbaa !24
  %195 = add i64 %194, 10
  store i64 %195, ptr %74, align 8, !tbaa !24
  %196 = icmp eq i32 %193, 16
  br i1 %196, label %197, label %216

197:                                              ; preds = %192
  %198 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 55
  %199 = load i16, ptr %198, align 8, !tbaa !35
  %200 = trunc i16 %199 to i8
  %201 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %202 = load ptr, ptr %201, align 8, !tbaa !43
  %203 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 4
  %204 = load i32, ptr %203, align 8, !tbaa !44
  %205 = add nsw i32 %204, 1
  store i32 %205, ptr %203, align 8, !tbaa !44
  %206 = sext i32 %204 to i64
  %207 = getelementptr inbounds i8, ptr %202, i64 %206
  store i8 %200, ptr %207, align 1, !tbaa !9
  %208 = load i16, ptr %198, align 8, !tbaa !35
  %209 = lshr i16 %208, 8
  %210 = trunc i16 %209 to i8
  %211 = load ptr, ptr %201, align 8, !tbaa !43
  %212 = load i32, ptr %203, align 8, !tbaa !44
  %213 = add nsw i32 %212, 1
  store i32 %213, ptr %203, align 8, !tbaa !44
  %214 = sext i32 %212 to i64
  %215 = getelementptr inbounds i8, ptr %211, i64 %214
  store i8 %210, ptr %215, align 1, !tbaa !9
  store i16 0, ptr %198, align 8, !tbaa !35
  br label %233

216:                                              ; preds = %192
  %217 = icmp sgt i32 %193, 7
  br i1 %217, label %218, label %235

218:                                              ; preds = %216
  %219 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 55
  %220 = load i16, ptr %219, align 8, !tbaa !35
  %221 = trunc i16 %220 to i8
  %222 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %223 = load ptr, ptr %222, align 8, !tbaa !43
  %224 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 4
  %225 = load i32, ptr %224, align 8, !tbaa !44
  %226 = add nsw i32 %225, 1
  store i32 %226, ptr %224, align 8, !tbaa !44
  %227 = sext i32 %225 to i64
  %228 = getelementptr inbounds i8, ptr %223, i64 %227
  store i8 %221, ptr %228, align 1, !tbaa !9
  %229 = load i16, ptr %219, align 8, !tbaa !35
  %230 = lshr i16 %229, 8
  store i16 %230, ptr %219, align 8, !tbaa !35
  %231 = load i32, ptr %2, align 4, !tbaa !36
  %232 = add nsw i32 %231, -8
  br label %233

233:                                              ; preds = %197, %218
  %234 = phi i32 [ %232, %218 ], [ 0, %197 ]
  store i32 %234, ptr %2, align 4, !tbaa !36
  br label %235

235:                                              ; preds = %233, %216, %116
  store i32 7, ptr %117, align 4, !tbaa !37
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i64 @_tr_flush_block(ptr noundef %0, ptr noundef readonly %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
  %5 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 31
  %6 = load i32, ptr %5, align 4, !tbaa !46
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %222

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 6
  %10 = load i8, ptr %9, align 8, !tbaa !47
  %11 = icmp eq i8 %10, 2
  br i1 %11, label %12, label %43

12:                                               ; preds = %8, %12
  %13 = phi i64 [ %15, %12 ], [ 0, %8 ]
  %14 = phi i32 [ %19, %12 ], [ 0, %8 ]
  %15 = add nuw nsw i64 %13, 1
  %16 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 35, i64 %13
  %17 = load i16, ptr %16, align 4, !tbaa !9
  %18 = zext i16 %17 to i32
  %19 = add i32 %14, %18
  %20 = icmp eq i64 %15, 7
  br i1 %20, label %21, label %12, !llvm.loop !48

21:                                               ; preds = %12, %21
  %22 = phi i64 [ %24, %21 ], [ 7, %12 ]
  %23 = phi i32 [ %28, %21 ], [ 0, %12 ]
  %24 = add nuw nsw i64 %22, 1
  %25 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 35, i64 %22
  %26 = load i16, ptr %25, align 4, !tbaa !9
  %27 = zext i16 %26 to i32
  %28 = add i32 %23, %27
  %29 = icmp eq i64 %24, 128
  br i1 %29, label %30, label %21, !llvm.loop !49

30:                                               ; preds = %21, %30
  %31 = phi i64 [ %33, %30 ], [ 128, %21 ]
  %32 = phi i32 [ %37, %30 ], [ %19, %21 ]
  %33 = add nuw nsw i64 %31, 1
  %34 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 35, i64 %31
  %35 = load i16, ptr %34, align 4, !tbaa !9
  %36 = zext i16 %35 to i32
  %37 = add i32 %32, %36
  %38 = icmp eq i64 %33, 256
  br i1 %38, label %39, label %30, !llvm.loop !50

39:                                               ; preds = %30
  %40 = lshr i32 %28, 2
  %41 = icmp ule i32 %37, %40
  %42 = zext i1 %41 to i8
  store i8 %42, ptr %9, align 8, !tbaa !47
  br label %43

43:                                               ; preds = %39, %8
  %44 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38
  tail call fastcc void @build_tree(ptr noundef %0, ptr noundef nonnull %44)
  %45 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39
  tail call fastcc void @build_tree(ptr noundef %0, ptr noundef nonnull %45)
  %46 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 35
  %47 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i32 1
  %48 = load i32, ptr %47, align 8, !tbaa !51
  %49 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 35, i64 0, i32 1
  %50 = load i16, ptr %49, align 2, !tbaa !9
  %51 = sext i32 %48 to i64
  %52 = getelementptr %struct.ct_data_s, ptr %46, i64 %51
  %53 = getelementptr %struct.ct_data_s, ptr %52, i64 1, i32 1
  store i16 -1, ptr %53, align 2, !tbaa !9
  %54 = icmp slt i32 %48, 0
  br i1 %54, label %119, label %55

55:                                               ; preds = %43
  %56 = icmp eq i16 %50, 0
  %57 = select i1 %56, i32 3, i32 4
  %58 = select i1 %56, i32 138, i32 7
  %59 = zext i16 %50 to i32
  %60 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 16
  %61 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 18
  %62 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 17
  %63 = add nuw i32 %48, 1
  %64 = zext i32 %63 to i64
  br label %65

65:                                               ; preds = %113, %55
  %66 = phi i64 [ 0, %55 ], [ %72, %113 ]
  %67 = phi i32 [ %57, %55 ], [ %117, %113 ]
  %68 = phi i32 [ %58, %55 ], [ %116, %113 ]
  %69 = phi i32 [ 0, %55 ], [ %115, %113 ]
  %70 = phi i32 [ %59, %55 ], [ %75, %113 ]
  %71 = phi i32 [ -1, %55 ], [ %114, %113 ]
  %72 = add nuw nsw i64 %66, 1
  %73 = getelementptr inbounds %struct.ct_data_s, ptr %46, i64 %72, i32 1
  %74 = load i16, ptr %73, align 2, !tbaa !9
  %75 = zext i16 %74 to i32
  %76 = add nsw i32 %69, 1
  %77 = icmp slt i32 %76, %68
  %78 = icmp eq i32 %70, %75
  %79 = select i1 %77, i1 %78, i1 false
  br i1 %79, label %113, label %80

80:                                               ; preds = %65
  %81 = icmp slt i32 %76, %67
  br i1 %81, label %82, label %88

82:                                               ; preds = %80
  %83 = zext nneg i32 %70 to i64
  %84 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 %83
  %85 = load i16, ptr %84, align 4, !tbaa !9
  %86 = trunc i32 %76 to i16
  %87 = add i16 %85, %86
  store i16 %87, ptr %84, align 4, !tbaa !9
  br label %108

88:                                               ; preds = %80
  %89 = icmp eq i32 %70, 0
  br i1 %89, label %100, label %90

90:                                               ; preds = %88
  %91 = icmp eq i32 %70, %71
  br i1 %91, label %97, label %92

92:                                               ; preds = %90
  %93 = zext nneg i32 %70 to i64
  %94 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 %93
  %95 = load i16, ptr %94, align 4, !tbaa !9
  %96 = add i16 %95, 1
  store i16 %96, ptr %94, align 4, !tbaa !9
  br label %97

97:                                               ; preds = %92, %90
  %98 = load i16, ptr %60, align 4, !tbaa !9
  %99 = add i16 %98, 1
  store i16 %99, ptr %60, align 4, !tbaa !9
  br label %108

100:                                              ; preds = %88
  %101 = icmp slt i32 %69, 10
  br i1 %101, label %102, label %105

102:                                              ; preds = %100
  %103 = load i16, ptr %62, align 4, !tbaa !9
  %104 = add i16 %103, 1
  store i16 %104, ptr %62, align 4, !tbaa !9
  br label %108

105:                                              ; preds = %100
  %106 = load i16, ptr %61, align 4, !tbaa !9
  %107 = add i16 %106, 1
  store i16 %107, ptr %61, align 4, !tbaa !9
  br label %108

108:                                              ; preds = %105, %102, %97, %82
  %109 = icmp eq i16 %74, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %108
  %111 = select i1 %78, i32 6, i32 7
  %112 = select i1 %78, i32 3, i32 4
  br label %113

113:                                              ; preds = %110, %108, %65
  %114 = phi i32 [ %71, %65 ], [ %70, %108 ], [ %70, %110 ]
  %115 = phi i32 [ %76, %65 ], [ 0, %108 ], [ 0, %110 ]
  %116 = phi i32 [ %68, %65 ], [ 138, %108 ], [ %111, %110 ]
  %117 = phi i32 [ %67, %65 ], [ 3, %108 ], [ %112, %110 ]
  %118 = icmp eq i64 %72, %64
  br i1 %118, label %119, label %65, !llvm.loop !52

119:                                              ; preds = %113, %43
  %120 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 36
  %121 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i32 1
  %122 = load i32, ptr %121, align 8, !tbaa !53
  %123 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 36, i64 0, i32 1
  %124 = load i16, ptr %123, align 2, !tbaa !9
  %125 = sext i32 %122 to i64
  %126 = getelementptr %struct.ct_data_s, ptr %120, i64 %125
  %127 = getelementptr %struct.ct_data_s, ptr %126, i64 1, i32 1
  store i16 -1, ptr %127, align 2, !tbaa !9
  %128 = icmp slt i32 %122, 0
  br i1 %128, label %193, label %129

129:                                              ; preds = %119
  %130 = icmp eq i16 %124, 0
  %131 = select i1 %130, i32 3, i32 4
  %132 = select i1 %130, i32 138, i32 7
  %133 = zext i16 %124 to i32
  %134 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 16
  %135 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 18
  %136 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 17
  %137 = add nuw i32 %122, 1
  %138 = zext i32 %137 to i64
  br label %139

139:                                              ; preds = %187, %129
  %140 = phi i64 [ 0, %129 ], [ %146, %187 ]
  %141 = phi i32 [ %131, %129 ], [ %191, %187 ]
  %142 = phi i32 [ %132, %129 ], [ %190, %187 ]
  %143 = phi i32 [ 0, %129 ], [ %189, %187 ]
  %144 = phi i32 [ %133, %129 ], [ %149, %187 ]
  %145 = phi i32 [ -1, %129 ], [ %188, %187 ]
  %146 = add nuw nsw i64 %140, 1
  %147 = getelementptr inbounds %struct.ct_data_s, ptr %120, i64 %146, i32 1
  %148 = load i16, ptr %147, align 2, !tbaa !9
  %149 = zext i16 %148 to i32
  %150 = add nsw i32 %143, 1
  %151 = icmp slt i32 %150, %142
  %152 = icmp eq i32 %144, %149
  %153 = select i1 %151, i1 %152, i1 false
  br i1 %153, label %187, label %154

154:                                              ; preds = %139
  %155 = icmp slt i32 %150, %141
  br i1 %155, label %156, label %162

156:                                              ; preds = %154
  %157 = zext nneg i32 %144 to i64
  %158 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 %157
  %159 = load i16, ptr %158, align 4, !tbaa !9
  %160 = trunc i32 %150 to i16
  %161 = add i16 %159, %160
  store i16 %161, ptr %158, align 4, !tbaa !9
  br label %182

162:                                              ; preds = %154
  %163 = icmp eq i32 %144, 0
  br i1 %163, label %174, label %164

164:                                              ; preds = %162
  %165 = icmp eq i32 %144, %145
  br i1 %165, label %171, label %166

166:                                              ; preds = %164
  %167 = zext nneg i32 %144 to i64
  %168 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 %167
  %169 = load i16, ptr %168, align 4, !tbaa !9
  %170 = add i16 %169, 1
  store i16 %170, ptr %168, align 4, !tbaa !9
  br label %171

171:                                              ; preds = %166, %164
  %172 = load i16, ptr %134, align 4, !tbaa !9
  %173 = add i16 %172, 1
  store i16 %173, ptr %134, align 4, !tbaa !9
  br label %182

174:                                              ; preds = %162
  %175 = icmp slt i32 %143, 10
  br i1 %175, label %176, label %179

176:                                              ; preds = %174
  %177 = load i16, ptr %136, align 4, !tbaa !9
  %178 = add i16 %177, 1
  store i16 %178, ptr %136, align 4, !tbaa !9
  br label %182

179:                                              ; preds = %174
  %180 = load i16, ptr %135, align 4, !tbaa !9
  %181 = add i16 %180, 1
  store i16 %181, ptr %135, align 4, !tbaa !9
  br label %182

182:                                              ; preds = %179, %176, %171, %156
  %183 = icmp eq i16 %148, 0
  br i1 %183, label %187, label %184

184:                                              ; preds = %182
  %185 = select i1 %152, i32 6, i32 7
  %186 = select i1 %152, i32 3, i32 4
  br label %187

187:                                              ; preds = %184, %182, %139
  %188 = phi i32 [ %145, %139 ], [ %144, %182 ], [ %144, %184 ]
  %189 = phi i32 [ %150, %139 ], [ 0, %182 ], [ 0, %184 ]
  %190 = phi i32 [ %142, %139 ], [ 138, %182 ], [ %185, %184 ]
  %191 = phi i32 [ %141, %139 ], [ 3, %182 ], [ %186, %184 ]
  %192 = icmp eq i64 %146, %138
  br i1 %192, label %193, label %139, !llvm.loop !52

193:                                              ; preds = %187, %119
  %194 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 40
  tail call fastcc void @build_tree(ptr noundef %0, ptr noundef nonnull %194)
  br label %195

195:                                              ; preds = %204, %193
  %196 = phi i32 [ 18, %193 ], [ %205, %204 ]
  %197 = zext nneg i32 %196 to i64
  %198 = getelementptr inbounds [19 x i8], ptr @bl_order, i64 0, i64 %197
  %199 = load i8, ptr %198, align 1, !tbaa !9
  %200 = zext i8 %199 to i64
  %201 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 %200, i32 1
  %202 = load i16, ptr %201, align 2, !tbaa !9
  %203 = icmp eq i16 %202, 0
  br i1 %203, label %204, label %207

204:                                              ; preds = %195
  %205 = add nsw i32 %196, -1
  %206 = icmp ugt i32 %196, 3
  br i1 %206, label %195, label %207, !llvm.loop !54

207:                                              ; preds = %195, %204
  %208 = phi i32 [ %196, %195 ], [ 2, %204 ]
  %209 = mul i32 %208, 3
  %210 = add i32 %209, 17
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 50
  %213 = load i64, ptr %212, align 8, !tbaa !55
  %214 = add i64 %213, %211
  store i64 %214, ptr %212, align 8, !tbaa !55
  %215 = add i64 %214, 10
  %216 = lshr i64 %215, 3
  %217 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 51
  %218 = load i64, ptr %217, align 8, !tbaa !56
  %219 = add i64 %218, 10
  %220 = lshr i64 %219, 3
  %221 = tail call i64 @llvm.umin.i64(i64 %220, i64 %216)
  br label %224

222:                                              ; preds = %4
  %223 = add i64 %2, 5
  br label %224

224:                                              ; preds = %207, %222
  %225 = phi i32 [ 0, %222 ], [ %208, %207 ]
  %226 = phi i64 [ %223, %222 ], [ %220, %207 ]
  %227 = phi i64 [ %223, %222 ], [ %221, %207 ]
  %228 = add i64 %2, 4
  %229 = icmp ule i64 %228, %227
  %230 = icmp ne ptr %1, null
  %231 = and i1 %230, %229
  br i1 %231, label %232, label %233

232:                                              ; preds = %224
  tail call void @_tr_stored_block(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %2, i32 noundef %3)
  br label %479

233:                                              ; preds = %224
  %234 = icmp eq i64 %226, %227
  %235 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %236 = load i32, ptr %235, align 4, !tbaa !36
  %237 = icmp sgt i32 %236, 13
  %238 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 55
  %239 = load i16, ptr %238, align 8, !tbaa !35
  br i1 %234, label %240, label %278

240:                                              ; preds = %233
  %241 = add nsw i32 %3, 2
  %242 = shl i32 %241, %236
  %243 = trunc i32 %242 to i16
  %244 = or i16 %239, %243
  store i16 %244, ptr %238, align 8, !tbaa !35
  br i1 %237, label %245, label %268

245:                                              ; preds = %240
  %246 = trunc i16 %244 to i8
  %247 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %248 = load ptr, ptr %247, align 8, !tbaa !43
  %249 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 4
  %250 = load i32, ptr %249, align 8, !tbaa !44
  %251 = add nsw i32 %250, 1
  store i32 %251, ptr %249, align 8, !tbaa !44
  %252 = sext i32 %250 to i64
  %253 = getelementptr inbounds i8, ptr %248, i64 %252
  store i8 %246, ptr %253, align 1, !tbaa !9
  %254 = load i16, ptr %238, align 8, !tbaa !35
  %255 = lshr i16 %254, 8
  %256 = trunc i16 %255 to i8
  %257 = load ptr, ptr %247, align 8, !tbaa !43
  %258 = load i32, ptr %249, align 8, !tbaa !44
  %259 = add nsw i32 %258, 1
  store i32 %259, ptr %249, align 8, !tbaa !44
  %260 = sext i32 %258 to i64
  %261 = getelementptr inbounds i8, ptr %257, i64 %260
  store i8 %256, ptr %261, align 1, !tbaa !9
  %262 = and i32 %241, 65535
  %263 = load i32, ptr %235, align 4, !tbaa !36
  %264 = sub i32 16, %263
  %265 = lshr i32 %262, %264
  %266 = trunc i32 %265 to i16
  store i16 %266, ptr %238, align 8, !tbaa !35
  %267 = add i32 %263, -13
  br label %270

268:                                              ; preds = %240
  %269 = add nsw i32 %236, 3
  br label %270

270:                                              ; preds = %268, %245
  %271 = phi i32 [ %269, %268 ], [ %267, %245 ]
  store i32 %271, ptr %235, align 4, !tbaa !36
  tail call fastcc void @compress_block(ptr noundef %0, ptr noundef nonnull @static_ltree, ptr noundef nonnull @static_dtree)
  %272 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 51
  %273 = load i64, ptr %272, align 8, !tbaa !56
  %274 = add i64 %273, 3
  %275 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 52
  %276 = load i64, ptr %275, align 8, !tbaa !24
  %277 = add i64 %274, %276
  store i64 %277, ptr %275, align 8, !tbaa !24
  br label %479

278:                                              ; preds = %233
  %279 = add nsw i32 %3, 4
  %280 = shl i32 %279, %236
  %281 = trunc i32 %280 to i16
  %282 = or i16 %239, %281
  store i16 %282, ptr %238, align 8, !tbaa !35
  br i1 %237, label %283, label %306

283:                                              ; preds = %278
  %284 = trunc i16 %282 to i8
  %285 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %286 = load ptr, ptr %285, align 8, !tbaa !43
  %287 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 4
  %288 = load i32, ptr %287, align 8, !tbaa !44
  %289 = add nsw i32 %288, 1
  store i32 %289, ptr %287, align 8, !tbaa !44
  %290 = sext i32 %288 to i64
  %291 = getelementptr inbounds i8, ptr %286, i64 %290
  store i8 %284, ptr %291, align 1, !tbaa !9
  %292 = load i16, ptr %238, align 8, !tbaa !35
  %293 = lshr i16 %292, 8
  %294 = trunc i16 %293 to i8
  %295 = load ptr, ptr %285, align 8, !tbaa !43
  %296 = load i32, ptr %287, align 8, !tbaa !44
  %297 = add nsw i32 %296, 1
  store i32 %297, ptr %287, align 8, !tbaa !44
  %298 = sext i32 %296 to i64
  %299 = getelementptr inbounds i8, ptr %295, i64 %298
  store i8 %294, ptr %299, align 1, !tbaa !9
  %300 = and i32 %279, 65535
  %301 = load i32, ptr %235, align 4, !tbaa !36
  %302 = sub i32 16, %301
  %303 = lshr i32 %300, %302
  %304 = trunc i32 %303 to i16
  store i16 %304, ptr %238, align 8, !tbaa !35
  %305 = add i32 %301, -13
  br label %308

306:                                              ; preds = %278
  %307 = add nsw i32 %236, 3
  br label %308

308:                                              ; preds = %306, %283
  %309 = phi i32 [ %307, %306 ], [ %305, %283 ]
  store i32 %309, ptr %235, align 4, !tbaa !36
  %310 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i32 1
  %311 = load i32, ptr %310, align 8, !tbaa !51
  %312 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i32 1
  %313 = load i32, ptr %312, align 8, !tbaa !53
  %314 = add nsw i32 %225, 1
  %315 = icmp sgt i32 %309, 11
  %316 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 55
  %317 = load i16, ptr %316, align 8, !tbaa !35
  br i1 %315, label %318, label %345

318:                                              ; preds = %308
  %319 = add nsw i32 %311, -256
  %320 = shl i32 %319, %309
  %321 = trunc i32 %320 to i16
  %322 = or i16 %317, %321
  store i16 %322, ptr %316, align 8, !tbaa !35
  %323 = trunc i16 %322 to i8
  %324 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %325 = load ptr, ptr %324, align 8, !tbaa !43
  %326 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 4
  %327 = load i32, ptr %326, align 8, !tbaa !44
  %328 = add nsw i32 %327, 1
  store i32 %328, ptr %326, align 8, !tbaa !44
  %329 = sext i32 %327 to i64
  %330 = getelementptr inbounds i8, ptr %325, i64 %329
  store i8 %323, ptr %330, align 1, !tbaa !9
  %331 = load i16, ptr %316, align 8, !tbaa !35
  %332 = lshr i16 %331, 8
  %333 = trunc i16 %332 to i8
  %334 = load ptr, ptr %324, align 8, !tbaa !43
  %335 = load i32, ptr %326, align 8, !tbaa !44
  %336 = add nsw i32 %335, 1
  store i32 %336, ptr %326, align 8, !tbaa !44
  %337 = sext i32 %335 to i64
  %338 = getelementptr inbounds i8, ptr %334, i64 %337
  store i8 %333, ptr %338, align 1, !tbaa !9
  %339 = and i32 %319, 65535
  %340 = load i32, ptr %235, align 4, !tbaa !36
  %341 = sub i32 16, %340
  %342 = lshr i32 %339, %341
  %343 = trunc i32 %342 to i16
  store i16 %343, ptr %316, align 8, !tbaa !35
  %344 = add i32 %340, -11
  br label %351

345:                                              ; preds = %308
  %346 = add i32 %311, 65280
  %347 = shl i32 %346, %309
  %348 = trunc i32 %347 to i16
  %349 = or i16 %317, %348
  store i16 %349, ptr %316, align 8, !tbaa !35
  %350 = add nsw i32 %309, 5
  br label %351

351:                                              ; preds = %345, %318
  %352 = phi i32 [ %350, %345 ], [ %344, %318 ]
  store i32 %352, ptr %235, align 4, !tbaa !36
  %353 = icmp sgt i32 %352, 11
  %354 = shl i32 %313, %352
  %355 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 55
  %356 = load i16, ptr %355, align 8, !tbaa !35
  %357 = trunc i32 %354 to i16
  %358 = or i16 %356, %357
  store i16 %358, ptr %355, align 8, !tbaa !35
  br i1 %353, label %359, label %382

359:                                              ; preds = %351
  %360 = trunc i16 %358 to i8
  %361 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %362 = load ptr, ptr %361, align 8, !tbaa !43
  %363 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 4
  %364 = load i32, ptr %363, align 8, !tbaa !44
  %365 = add nsw i32 %364, 1
  store i32 %365, ptr %363, align 8, !tbaa !44
  %366 = sext i32 %364 to i64
  %367 = getelementptr inbounds i8, ptr %362, i64 %366
  store i8 %360, ptr %367, align 1, !tbaa !9
  %368 = load i16, ptr %355, align 8, !tbaa !35
  %369 = lshr i16 %368, 8
  %370 = trunc i16 %369 to i8
  %371 = load ptr, ptr %361, align 8, !tbaa !43
  %372 = load i32, ptr %363, align 8, !tbaa !44
  %373 = add nsw i32 %372, 1
  store i32 %373, ptr %363, align 8, !tbaa !44
  %374 = sext i32 %372 to i64
  %375 = getelementptr inbounds i8, ptr %371, i64 %374
  store i8 %370, ptr %375, align 1, !tbaa !9
  %376 = and i32 %313, 65535
  %377 = load i32, ptr %235, align 4, !tbaa !36
  %378 = sub i32 16, %377
  %379 = lshr i32 %376, %378
  %380 = trunc i32 %379 to i16
  store i16 %380, ptr %355, align 8, !tbaa !35
  %381 = add i32 %377, -11
  br label %384

382:                                              ; preds = %351
  %383 = add nsw i32 %352, 5
  br label %384

384:                                              ; preds = %382, %359
  %385 = phi i32 [ %383, %382 ], [ %381, %359 ]
  store i32 %385, ptr %235, align 4, !tbaa !36
  %386 = icmp sgt i32 %385, 12
  %387 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 55
  %388 = load i16, ptr %387, align 8, !tbaa !35
  br i1 %386, label %389, label %416

389:                                              ; preds = %384
  %390 = add nsw i32 %225, -3
  %391 = shl i32 %390, %385
  %392 = trunc i32 %391 to i16
  %393 = or i16 %388, %392
  store i16 %393, ptr %387, align 8, !tbaa !35
  %394 = trunc i16 %393 to i8
  %395 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %396 = load ptr, ptr %395, align 8, !tbaa !43
  %397 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 4
  %398 = load i32, ptr %397, align 8, !tbaa !44
  %399 = add nsw i32 %398, 1
  store i32 %399, ptr %397, align 8, !tbaa !44
  %400 = sext i32 %398 to i64
  %401 = getelementptr inbounds i8, ptr %396, i64 %400
  store i8 %394, ptr %401, align 1, !tbaa !9
  %402 = load i16, ptr %387, align 8, !tbaa !35
  %403 = lshr i16 %402, 8
  %404 = trunc i16 %403 to i8
  %405 = load ptr, ptr %395, align 8, !tbaa !43
  %406 = load i32, ptr %397, align 8, !tbaa !44
  %407 = add nsw i32 %406, 1
  store i32 %407, ptr %397, align 8, !tbaa !44
  %408 = sext i32 %406 to i64
  %409 = getelementptr inbounds i8, ptr %405, i64 %408
  store i8 %404, ptr %409, align 1, !tbaa !9
  %410 = and i32 %390, 65535
  %411 = load i32, ptr %235, align 4, !tbaa !36
  %412 = sub i32 16, %411
  %413 = lshr i32 %410, %412
  %414 = trunc i32 %413 to i16
  store i16 %414, ptr %387, align 8, !tbaa !35
  %415 = add i32 %411, -12
  br label %422

416:                                              ; preds = %384
  %417 = add i32 %225, 65533
  %418 = shl i32 %417, %385
  %419 = trunc i32 %418 to i16
  %420 = or i16 %388, %419
  store i16 %420, ptr %387, align 8, !tbaa !35
  %421 = add nsw i32 %385, 4
  br label %422

422:                                              ; preds = %416, %389
  %423 = phi i32 [ %421, %416 ], [ %415, %389 ]
  store i32 %423, ptr %235, align 4, !tbaa !36
  %424 = icmp sgt i32 %225, -1
  br i1 %424, label %425, label %470

425:                                              ; preds = %422
  %426 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 55
  %427 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %428 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 4
  %429 = zext nneg i32 %314 to i64
  br label %430

430:                                              ; preds = %466, %425
  %431 = phi i64 [ 0, %425 ], [ %468, %466 ]
  %432 = load i32, ptr %235, align 4, !tbaa !36
  %433 = icmp sgt i32 %432, 13
  %434 = getelementptr inbounds [19 x i8], ptr @bl_order, i64 0, i64 %431
  %435 = load i8, ptr %434, align 1, !tbaa !9
  %436 = zext i8 %435 to i64
  %437 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 %436, i32 1
  %438 = load i16, ptr %437, align 2, !tbaa !9
  %439 = zext i16 %438 to i32
  %440 = shl i32 %439, %432
  %441 = load i16, ptr %426, align 8, !tbaa !35
  %442 = trunc i32 %440 to i16
  %443 = or i16 %441, %442
  store i16 %443, ptr %426, align 8, !tbaa !35
  br i1 %433, label %444, label %464

444:                                              ; preds = %430
  %445 = trunc i16 %443 to i8
  %446 = load ptr, ptr %427, align 8, !tbaa !43
  %447 = load i32, ptr %428, align 8, !tbaa !44
  %448 = add nsw i32 %447, 1
  store i32 %448, ptr %428, align 8, !tbaa !44
  %449 = sext i32 %447 to i64
  %450 = getelementptr inbounds i8, ptr %446, i64 %449
  store i8 %445, ptr %450, align 1, !tbaa !9
  %451 = load i16, ptr %426, align 8, !tbaa !35
  %452 = lshr i16 %451, 8
  %453 = trunc i16 %452 to i8
  %454 = load ptr, ptr %427, align 8, !tbaa !43
  %455 = load i32, ptr %428, align 8, !tbaa !44
  %456 = add nsw i32 %455, 1
  store i32 %456, ptr %428, align 8, !tbaa !44
  %457 = sext i32 %455 to i64
  %458 = getelementptr inbounds i8, ptr %454, i64 %457
  store i8 %453, ptr %458, align 1, !tbaa !9
  %459 = load i32, ptr %235, align 4, !tbaa !36
  %460 = sub i32 16, %459
  %461 = lshr i32 %439, %460
  %462 = trunc i32 %461 to i16
  store i16 %462, ptr %426, align 8, !tbaa !35
  %463 = add i32 %459, -13
  br label %466

464:                                              ; preds = %430
  %465 = add nsw i32 %432, 3
  br label %466

466:                                              ; preds = %464, %444
  %467 = phi i32 [ %465, %464 ], [ %463, %444 ]
  store i32 %467, ptr %235, align 4, !tbaa !36
  %468 = add nuw nsw i64 %431, 1
  %469 = icmp eq i64 %468, %429
  br i1 %469, label %470, label %430, !llvm.loop !57

470:                                              ; preds = %466, %422
  %471 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 35
  tail call fastcc void @send_tree(ptr noundef %0, ptr noundef nonnull %471, i32 noundef %311)
  %472 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 36
  tail call fastcc void @send_tree(ptr noundef %0, ptr noundef nonnull %472, i32 noundef %313)
  tail call fastcc void @compress_block(ptr noundef %0, ptr noundef nonnull %471, ptr noundef nonnull %472)
  %473 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 50
  %474 = load i64, ptr %473, align 8, !tbaa !55
  %475 = add i64 %474, 3
  %476 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 52
  %477 = load i64, ptr %476, align 8, !tbaa !24
  %478 = add i64 %475, %477
  store i64 %478, ptr %476, align 8, !tbaa !24
  br label %479

479:                                              ; preds = %270, %470, %232
  br label %480

480:                                              ; preds = %479, %480
  %481 = phi i64 [ %483, %480 ], [ 0, %479 ]
  %482 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 35, i64 %481
  store i16 0, ptr %482, align 4, !tbaa !9
  %483 = add nuw nsw i64 %481, 1
  %484 = icmp eq i64 %483, 286
  br i1 %484, label %485, label %480, !llvm.loop !38

485:                                              ; preds = %480, %485
  %486 = phi i64 [ %488, %485 ], [ 0, %480 ]
  %487 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 36, i64 %486
  store i16 0, ptr %487, align 4, !tbaa !9
  %488 = add nuw nsw i64 %486, 1
  %489 = icmp eq i64 %488, 30
  br i1 %489, label %490, label %485, !llvm.loop !39

490:                                              ; preds = %485, %490
  %491 = phi i64 [ %493, %490 ], [ 0, %485 ]
  %492 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 %491
  store i16 0, ptr %492, align 4, !tbaa !9
  %493 = add nuw nsw i64 %491, 1
  %494 = icmp eq i64 %493, 19
  br i1 %494, label %495, label %490, !llvm.loop !40

495:                                              ; preds = %490
  %496 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 35, i64 256
  store i16 1, ptr %496, align 4, !tbaa !9
  %497 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 50
  %498 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 53
  store i32 0, ptr %498, align 8, !tbaa !41
  %499 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 48
  store i32 0, ptr %499, align 4, !tbaa !42
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %497, i8 0, i64 16, i1 false)
  %500 = icmp eq i32 %3, 0
  br i1 %500, label %540, label %501

501:                                              ; preds = %495
  %502 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %503 = load i32, ptr %502, align 4, !tbaa !36
  %504 = icmp sgt i32 %503, 8
  br i1 %504, label %505, label %518

505:                                              ; preds = %501
  %506 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 55
  %507 = load i16, ptr %506, align 8, !tbaa !35
  %508 = trunc i16 %507 to i8
  %509 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %510 = load ptr, ptr %509, align 8, !tbaa !43
  %511 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 4
  %512 = load i32, ptr %511, align 8, !tbaa !44
  %513 = add nsw i32 %512, 1
  store i32 %513, ptr %511, align 8, !tbaa !44
  %514 = sext i32 %512 to i64
  %515 = getelementptr inbounds i8, ptr %510, i64 %514
  store i8 %508, ptr %515, align 1, !tbaa !9
  %516 = load i16, ptr %506, align 8, !tbaa !35
  %517 = lshr i16 %516, 8
  br label %525

518:                                              ; preds = %501
  %519 = icmp sgt i32 %503, 0
  br i1 %519, label %520, label %535

520:                                              ; preds = %518
  %521 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 55
  %522 = load i16, ptr %521, align 8, !tbaa !35
  %523 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %524 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 4
  br label %525

525:                                              ; preds = %520, %505
  %526 = phi ptr [ %524, %520 ], [ %511, %505 ]
  %527 = phi ptr [ %523, %520 ], [ %509, %505 ]
  %528 = phi i16 [ %522, %520 ], [ %517, %505 ]
  %529 = trunc i16 %528 to i8
  %530 = load ptr, ptr %527, align 8, !tbaa !43
  %531 = load i32, ptr %526, align 8, !tbaa !44
  %532 = add nsw i32 %531, 1
  store i32 %532, ptr %526, align 8, !tbaa !44
  %533 = sext i32 %531 to i64
  %534 = getelementptr inbounds i8, ptr %530, i64 %533
  store i8 %529, ptr %534, align 1, !tbaa !9
  br label %535

535:                                              ; preds = %525, %518
  %536 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 55
  store i16 0, ptr %536, align 8, !tbaa !35
  store i32 0, ptr %502, align 4, !tbaa !36
  %537 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 52
  %538 = load i64, ptr %537, align 8, !tbaa !24
  %539 = add i64 %538, 7
  store i64 %539, ptr %537, align 8, !tbaa !24
  br label %540

540:                                              ; preds = %535, %495
  %541 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 52
  %542 = load i64, ptr %541, align 8, !tbaa !24
  %543 = lshr i64 %542, 3
  ret i64 %543
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @build_tree(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #1 {
  %3 = alloca [16 x i16], align 16
  %4 = load ptr, ptr %1, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.tree_desc_s, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !59
  %7 = load ptr, ptr %6, align 8, !tbaa !60
  %8 = getelementptr inbounds %struct.static_tree_desc_s, ptr %6, i64 0, i32 3
  %9 = load i32, ptr %8, align 4, !tbaa !62
  %10 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 43
  store i32 0, ptr %10, align 4, !tbaa !63
  %11 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44
  store i32 573, ptr %11, align 8, !tbaa !64
  %12 = icmp sgt i32 %9, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = zext nneg i32 %9 to i64
  br label %23

15:                                               ; preds = %39, %2
  %16 = phi i32 [ -1, %2 ], [ %40, %39 ]
  %17 = load i32, ptr %10, align 4, !tbaa !63
  %18 = icmp slt i32 %17, 2
  br i1 %18, label %19, label %67

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 50
  %21 = icmp eq ptr %7, null
  %22 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 51
  br label %43

23:                                               ; preds = %13, %39
  %24 = phi i64 [ 0, %13 ], [ %41, %39 ]
  %25 = phi i32 [ -1, %13 ], [ %40, %39 ]
  %26 = getelementptr inbounds %struct.ct_data_s, ptr %4, i64 %24
  %27 = load i16, ptr %26, align 2, !tbaa !9
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %23
  %30 = load i32, ptr %10, align 4, !tbaa !63
  %31 = add nsw i32 %30, 1
  store i32 %31, ptr %10, align 4, !tbaa !63
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 42, i64 %32
  %34 = trunc i64 %24 to i32
  store i32 %34, ptr %33, align 4, !tbaa !5
  %35 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 45, i64 %24
  store i8 0, ptr %35, align 1, !tbaa !9
  %36 = trunc i64 %24 to i32
  br label %39

37:                                               ; preds = %23
  %38 = getelementptr inbounds %struct.ct_data_s, ptr %4, i64 %24, i32 1
  store i16 0, ptr %38, align 2, !tbaa !9
  br label %39

39:                                               ; preds = %29, %37
  %40 = phi i32 [ %36, %29 ], [ %25, %37 ]
  %41 = add nuw nsw i64 %24, 1
  %42 = icmp eq i64 %41, %14
  br i1 %42, label %15, label %23, !llvm.loop !65

43:                                               ; preds = %19, %64
  %44 = phi i32 [ %17, %19 ], [ %65, %64 ]
  %45 = phi i32 [ %16, %19 ], [ %48, %64 ]
  %46 = icmp slt i32 %45, 2
  %47 = add nsw i32 %45, 1
  %48 = select i1 %46, i32 %47, i32 %45
  %49 = select i1 %46, i32 %47, i32 0
  %50 = add nsw i32 %44, 1
  store i32 %50, ptr %10, align 4, !tbaa !63
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 42, i64 %51
  store i32 %49, ptr %52, align 4, !tbaa !5
  %53 = sext i32 %49 to i64
  %54 = getelementptr inbounds %struct.ct_data_s, ptr %4, i64 %53
  store i16 1, ptr %54, align 2, !tbaa !9
  %55 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 45, i64 %53
  store i8 0, ptr %55, align 1, !tbaa !9
  %56 = load i64, ptr %20, align 8, !tbaa !55
  %57 = add i64 %56, -1
  store i64 %57, ptr %20, align 8, !tbaa !55
  br i1 %21, label %64, label %58

58:                                               ; preds = %43
  %59 = getelementptr inbounds %struct.ct_data_s, ptr %7, i64 %53, i32 1
  %60 = load i16, ptr %59, align 2, !tbaa !9
  %61 = zext i16 %60 to i64
  %62 = load i64, ptr %22, align 8, !tbaa !56
  %63 = sub i64 %62, %61
  store i64 %63, ptr %22, align 8, !tbaa !56
  br label %64

64:                                               ; preds = %58, %43
  %65 = load i32, ptr %10, align 4, !tbaa !63
  %66 = icmp slt i32 %65, 2
  br i1 %66, label %43, label %67, !llvm.loop !66

67:                                               ; preds = %64, %15
  %68 = phi i32 [ %16, %15 ], [ %48, %64 ]
  %69 = phi i32 [ %17, %15 ], [ %65, %64 ]
  %70 = getelementptr inbounds %struct.tree_desc_s, ptr %1, i64 0, i32 1
  store i32 %68, ptr %70, align 8, !tbaa !67
  %71 = icmp ult i32 %69, 2
  br i1 %71, label %75, label %72

72:                                               ; preds = %67
  %73 = lshr i32 %69, 1
  %74 = zext nneg i32 %73 to i64
  br label %78

75:                                               ; preds = %144, %67
  %76 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 42, i64 1
  %77 = sext i32 %9 to i64
  br label %150

78:                                               ; preds = %72, %144
  %79 = phi i64 [ %74, %72 ], [ %148, %144 ]
  %80 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 42, i64 %79
  %81 = load i32, ptr %80, align 4, !tbaa !5
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 45, i64 %82
  %84 = trunc i64 %79 to i32
  %85 = shl nuw i32 %84, 1
  %86 = load i32, ptr %10, align 4, !tbaa !63
  %87 = icmp sgt i32 %85, %86
  %88 = trunc i64 %79 to i32
  br i1 %87, label %144, label %89

89:                                               ; preds = %78
  %90 = getelementptr inbounds %struct.ct_data_s, ptr %4, i64 %82
  %91 = trunc i64 %79 to i32
  br label %92

92:                                               ; preds = %138, %89
  %93 = phi i32 [ %86, %89 ], [ %142, %138 ]
  %94 = phi i32 [ %85, %89 ], [ %141, %138 ]
  %95 = phi i32 [ %91, %89 ], [ %122, %138 ]
  %96 = icmp slt i32 %94, %93
  br i1 %96, label %97, label %121

97:                                               ; preds = %92
  %98 = or disjoint i32 %94, 1
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 42, i64 %99
  %101 = load i32, ptr %100, align 4, !tbaa !5
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.ct_data_s, ptr %4, i64 %102
  %104 = load i16, ptr %103, align 2, !tbaa !9
  %105 = sext i32 %94 to i64
  %106 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 42, i64 %105
  %107 = load i32, ptr %106, align 4, !tbaa !5
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.ct_data_s, ptr %4, i64 %108
  %110 = load i16, ptr %109, align 2, !tbaa !9
  %111 = icmp ult i16 %104, %110
  br i1 %111, label %120, label %112

112:                                              ; preds = %97
  %113 = icmp eq i16 %104, %110
  br i1 %113, label %114, label %121

114:                                              ; preds = %112
  %115 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 45, i64 %102
  %116 = load i8, ptr %115, align 1, !tbaa !9
  %117 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 45, i64 %108
  %118 = load i8, ptr %117, align 1, !tbaa !9
  %119 = icmp ugt i8 %116, %118
  br i1 %119, label %121, label %120

120:                                              ; preds = %114, %97
  br label %121

121:                                              ; preds = %120, %114, %112, %92
  %122 = phi i32 [ %98, %120 ], [ %94, %114 ], [ %94, %112 ], [ %94, %92 ]
  %123 = load i16, ptr %90, align 2, !tbaa !9
  %124 = sext i32 %122 to i64
  %125 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 42, i64 %124
  %126 = load i32, ptr %125, align 4, !tbaa !5
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.ct_data_s, ptr %4, i64 %127
  %129 = load i16, ptr %128, align 2, !tbaa !9
  %130 = icmp ult i16 %123, %129
  br i1 %130, label %144, label %131

131:                                              ; preds = %121
  %132 = icmp eq i16 %123, %129
  br i1 %132, label %133, label %138

133:                                              ; preds = %131
  %134 = load i8, ptr %83, align 1, !tbaa !9
  %135 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 45, i64 %127
  %136 = load i8, ptr %135, align 1, !tbaa !9
  %137 = icmp ugt i8 %134, %136
  br i1 %137, label %138, label %144

138:                                              ; preds = %133, %131
  %139 = sext i32 %95 to i64
  %140 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 42, i64 %139
  store i32 %126, ptr %140, align 4, !tbaa !5
  %141 = shl i32 %122, 1
  %142 = load i32, ptr %10, align 4, !tbaa !63
  %143 = icmp sgt i32 %141, %142
  br i1 %143, label %144, label %92, !llvm.loop !68

144:                                              ; preds = %121, %133, %138, %78
  %145 = phi i32 [ %88, %78 ], [ %122, %138 ], [ %95, %133 ], [ %95, %121 ]
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 42, i64 %146
  store i32 %81, ptr %147, align 4, !tbaa !5
  %148 = add nsw i64 %79, -1
  %149 = icmp sgt i64 %79, 1
  br i1 %149, label %78, label %75, !llvm.loop !69

150:                                              ; preds = %75, %302
  %151 = phi i64 [ %77, %75 ], [ %246, %302 ]
  %152 = load i32, ptr %76, align 4, !tbaa !5
  %153 = load i32, ptr %10, align 4, !tbaa !63
  %154 = add nsw i32 %153, -1
  store i32 %154, ptr %10, align 4, !tbaa !63
  %155 = sext i32 %153 to i64
  %156 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 42, i64 %155
  %157 = load i32, ptr %156, align 4, !tbaa !5
  store i32 %157, ptr %76, align 4, !tbaa !5
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 45, i64 %158
  %160 = icmp slt i32 %153, 3
  br i1 %160, label %215, label %161

161:                                              ; preds = %150
  %162 = getelementptr inbounds %struct.ct_data_s, ptr %4, i64 %158
  br label %163

163:                                              ; preds = %209, %161
  %164 = phi i32 [ %154, %161 ], [ %213, %209 ]
  %165 = phi i32 [ 2, %161 ], [ %212, %209 ]
  %166 = phi i32 [ 1, %161 ], [ %193, %209 ]
  %167 = icmp slt i32 %165, %164
  br i1 %167, label %168, label %192

168:                                              ; preds = %163
  %169 = or disjoint i32 %165, 1
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 42, i64 %170
  %172 = load i32, ptr %171, align 4, !tbaa !5
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.ct_data_s, ptr %4, i64 %173
  %175 = load i16, ptr %174, align 2, !tbaa !9
  %176 = sext i32 %165 to i64
  %177 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 42, i64 %176
  %178 = load i32, ptr %177, align 4, !tbaa !5
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.ct_data_s, ptr %4, i64 %179
  %181 = load i16, ptr %180, align 2, !tbaa !9
  %182 = icmp ult i16 %175, %181
  br i1 %182, label %191, label %183

183:                                              ; preds = %168
  %184 = icmp eq i16 %175, %181
  br i1 %184, label %185, label %192

185:                                              ; preds = %183
  %186 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 45, i64 %173
  %187 = load i8, ptr %186, align 1, !tbaa !9
  %188 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 45, i64 %179
  %189 = load i8, ptr %188, align 1, !tbaa !9
  %190 = icmp ugt i8 %187, %189
  br i1 %190, label %192, label %191

191:                                              ; preds = %185, %168
  br label %192

192:                                              ; preds = %191, %185, %183, %163
  %193 = phi i32 [ %169, %191 ], [ %165, %185 ], [ %165, %183 ], [ %165, %163 ]
  %194 = load i16, ptr %162, align 2, !tbaa !9
  %195 = sext i32 %193 to i64
  %196 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 42, i64 %195
  %197 = load i32, ptr %196, align 4, !tbaa !5
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.ct_data_s, ptr %4, i64 %198
  %200 = load i16, ptr %199, align 2, !tbaa !9
  %201 = icmp ult i16 %194, %200
  br i1 %201, label %215, label %202

202:                                              ; preds = %192
  %203 = icmp eq i16 %194, %200
  br i1 %203, label %204, label %209

204:                                              ; preds = %202
  %205 = load i8, ptr %159, align 1, !tbaa !9
  %206 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 45, i64 %198
  %207 = load i8, ptr %206, align 1, !tbaa !9
  %208 = icmp ugt i8 %205, %207
  br i1 %208, label %209, label %215

209:                                              ; preds = %204, %202
  %210 = sext i32 %166 to i64
  %211 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 42, i64 %210
  store i32 %197, ptr %211, align 4, !tbaa !5
  %212 = shl i32 %193, 1
  %213 = load i32, ptr %10, align 4, !tbaa !63
  %214 = icmp sgt i32 %212, %213
  br i1 %214, label %215, label %163, !llvm.loop !68

215:                                              ; preds = %192, %204, %209, %150
  %216 = phi i32 [ 1, %150 ], [ %193, %209 ], [ %166, %204 ], [ %166, %192 ]
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 42, i64 %217
  store i32 %157, ptr %218, align 4, !tbaa !5
  %219 = load i32, ptr %76, align 4, !tbaa !5
  %220 = load i32, ptr %11, align 8, !tbaa !64
  %221 = add nsw i32 %220, -1
  store i32 %221, ptr %11, align 8, !tbaa !64
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 42, i64 %222
  store i32 %152, ptr %223, align 4, !tbaa !5
  %224 = load i32, ptr %11, align 8, !tbaa !64
  %225 = add nsw i32 %224, -1
  store i32 %225, ptr %11, align 8, !tbaa !64
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 42, i64 %226
  store i32 %219, ptr %227, align 4, !tbaa !5
  %228 = sext i32 %152 to i64
  %229 = getelementptr inbounds %struct.ct_data_s, ptr %4, i64 %228
  %230 = load i16, ptr %229, align 2, !tbaa !9
  %231 = sext i32 %219 to i64
  %232 = getelementptr inbounds %struct.ct_data_s, ptr %4, i64 %231
  %233 = load i16, ptr %232, align 2, !tbaa !9
  %234 = add i16 %233, %230
  %235 = getelementptr inbounds %struct.ct_data_s, ptr %4, i64 %151
  store i16 %234, ptr %235, align 2, !tbaa !9
  %236 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 45, i64 %228
  %237 = load i8, ptr %236, align 1, !tbaa !9
  %238 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 45, i64 %231
  %239 = load i8, ptr %238, align 1, !tbaa !9
  %240 = tail call i8 @llvm.umax.i8(i8 %237, i8 %239)
  %241 = add i8 %240, 1
  %242 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 45, i64 %151
  store i8 %241, ptr %242, align 1, !tbaa !9
  %243 = trunc i64 %151 to i16
  %244 = getelementptr inbounds %struct.ct_data_s, ptr %4, i64 %231, i32 1
  store i16 %243, ptr %244, align 2, !tbaa !9
  %245 = getelementptr inbounds %struct.ct_data_s, ptr %4, i64 %228, i32 1
  store i16 %243, ptr %245, align 2, !tbaa !9
  %246 = add i64 %151, 1
  %247 = trunc i64 %151 to i32
  store i32 %247, ptr %76, align 4, !tbaa !5
  %248 = load i32, ptr %10, align 4, !tbaa !63
  %249 = icmp slt i32 %248, 2
  br i1 %249, label %302, label %250

250:                                              ; preds = %215, %296
  %251 = phi i32 [ %300, %296 ], [ %248, %215 ]
  %252 = phi i32 [ %299, %296 ], [ 2, %215 ]
  %253 = phi i32 [ %280, %296 ], [ 1, %215 ]
  %254 = icmp slt i32 %252, %251
  br i1 %254, label %255, label %279

255:                                              ; preds = %250
  %256 = or disjoint i32 %252, 1
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 42, i64 %257
  %259 = load i32, ptr %258, align 4, !tbaa !5
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds %struct.ct_data_s, ptr %4, i64 %260
  %262 = load i16, ptr %261, align 2, !tbaa !9
  %263 = sext i32 %252 to i64
  %264 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 42, i64 %263
  %265 = load i32, ptr %264, align 4, !tbaa !5
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.ct_data_s, ptr %4, i64 %266
  %268 = load i16, ptr %267, align 2, !tbaa !9
  %269 = icmp ult i16 %262, %268
  br i1 %269, label %278, label %270

270:                                              ; preds = %255
  %271 = icmp eq i16 %262, %268
  br i1 %271, label %272, label %279

272:                                              ; preds = %270
  %273 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 45, i64 %260
  %274 = load i8, ptr %273, align 1, !tbaa !9
  %275 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 45, i64 %266
  %276 = load i8, ptr %275, align 1, !tbaa !9
  %277 = icmp ugt i8 %274, %276
  br i1 %277, label %279, label %278

278:                                              ; preds = %272, %255
  br label %279

279:                                              ; preds = %278, %272, %270, %250
  %280 = phi i32 [ %256, %278 ], [ %252, %272 ], [ %252, %270 ], [ %252, %250 ]
  %281 = load i16, ptr %235, align 2, !tbaa !9
  %282 = sext i32 %280 to i64
  %283 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 42, i64 %282
  %284 = load i32, ptr %283, align 4, !tbaa !5
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds %struct.ct_data_s, ptr %4, i64 %285
  %287 = load i16, ptr %286, align 2, !tbaa !9
  %288 = icmp ult i16 %281, %287
  br i1 %288, label %302, label %289

289:                                              ; preds = %279
  %290 = icmp eq i16 %281, %287
  br i1 %290, label %291, label %296

291:                                              ; preds = %289
  %292 = load i8, ptr %242, align 1, !tbaa !9
  %293 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 45, i64 %285
  %294 = load i8, ptr %293, align 1, !tbaa !9
  %295 = icmp ugt i8 %292, %294
  br i1 %295, label %296, label %302

296:                                              ; preds = %291, %289
  %297 = sext i32 %253 to i64
  %298 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 42, i64 %297
  store i32 %284, ptr %298, align 4, !tbaa !5
  %299 = shl i32 %280, 1
  %300 = load i32, ptr %10, align 4, !tbaa !63
  %301 = icmp sgt i32 %299, %300
  br i1 %301, label %302, label %250, !llvm.loop !68

302:                                              ; preds = %279, %291, %296, %215
  %303 = phi i32 [ 1, %215 ], [ %280, %296 ], [ %253, %291 ], [ %253, %279 ]
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 42, i64 %304
  %306 = trunc i64 %151 to i32
  store i32 %306, ptr %305, align 4, !tbaa !5
  %307 = load i32, ptr %10, align 4, !tbaa !63
  %308 = icmp sgt i32 %307, 1
  br i1 %308, label %150, label %309, !llvm.loop !70

309:                                              ; preds = %302
  %310 = load i32, ptr %76, align 4, !tbaa !5
  %311 = load i32, ptr %11, align 8, !tbaa !64
  %312 = add nsw i32 %311, -1
  store i32 %312, ptr %11, align 8, !tbaa !64
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 42, i64 %313
  store i32 %310, ptr %314, align 4, !tbaa !5
  %315 = load ptr, ptr %1, align 8, !tbaa !58
  %316 = load i32, ptr %70, align 8, !tbaa !67
  %317 = load ptr, ptr %5, align 8, !tbaa !59
  %318 = load ptr, ptr %317, align 8, !tbaa !60
  %319 = getelementptr inbounds %struct.static_tree_desc_s, ptr %317, i64 0, i32 1
  %320 = load ptr, ptr %319, align 8, !tbaa !71
  %321 = getelementptr inbounds %struct.static_tree_desc_s, ptr %317, i64 0, i32 2
  %322 = load i32, ptr %321, align 8, !tbaa !72
  %323 = getelementptr inbounds %struct.static_tree_desc_s, ptr %317, i64 0, i32 4
  %324 = load i32, ptr %323, align 8, !tbaa !73
  %325 = getelementptr i8, ptr %0, i64 2944
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %325, i8 0, i64 32, i1 false), !tbaa !13
  %326 = load i32, ptr %11, align 8, !tbaa !64
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 42, i64 %327
  %329 = load i32, ptr %328, align 4, !tbaa !5
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds %struct.ct_data_s, ptr %315, i64 %330, i32 1
  store i16 0, ptr %331, align 2, !tbaa !9
  %332 = load i32, ptr %11, align 8, !tbaa !64
  %333 = add nsw i32 %332, 1
  %334 = icmp slt i32 %332, 572
  br i1 %334, label %335, label %394

335:                                              ; preds = %309
  %336 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 50
  %337 = icmp eq ptr %318, null
  %338 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 51
  %339 = sext i32 %332 to i64
  %340 = add nsw i64 %339, 1
  br label %341

341:                                              ; preds = %390, %335
  %342 = phi i64 [ %340, %335 ], [ %391, %390 ]
  %343 = phi i32 [ 0, %335 ], [ %358, %390 ]
  %344 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 42, i64 %342
  %345 = load i32, ptr %344, align 4, !tbaa !5
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds %struct.ct_data_s, ptr %315, i64 %346
  %348 = getelementptr inbounds %struct.ct_data_s, ptr %315, i64 %346, i32 1
  %349 = load i16, ptr %348, align 2, !tbaa !9
  %350 = zext i16 %349 to i64
  %351 = getelementptr inbounds %struct.ct_data_s, ptr %315, i64 %350, i32 1
  %352 = load i16, ptr %351, align 2, !tbaa !9
  %353 = zext i16 %352 to i32
  %354 = add nuw nsw i32 %353, 1
  %355 = icmp sle i32 %324, %353
  %356 = select i1 %355, i32 %324, i32 %354
  %357 = zext i1 %355 to i32
  %358 = add nuw nsw i32 %343, %357
  %359 = trunc i32 %356 to i16
  store i16 %359, ptr %348, align 2, !tbaa !9
  %360 = icmp sgt i32 %345, %316
  br i1 %360, label %390, label %361

361:                                              ; preds = %341
  %362 = sext i32 %356 to i64
  %363 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 41, i64 %362
  %364 = load i16, ptr %363, align 2, !tbaa !13
  %365 = add i16 %364, 1
  store i16 %365, ptr %363, align 2, !tbaa !13
  %366 = icmp slt i32 %345, %322
  br i1 %366, label %372, label %367

367:                                              ; preds = %361
  %368 = sub nsw i32 %345, %322
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds i32, ptr %320, i64 %369
  %371 = load i32, ptr %370, align 4, !tbaa !5
  br label %372

372:                                              ; preds = %367, %361
  %373 = phi i32 [ %371, %367 ], [ 0, %361 ]
  %374 = load i16, ptr %347, align 2, !tbaa !9
  %375 = zext i16 %374 to i64
  %376 = add nsw i32 %373, %356
  %377 = sext i32 %376 to i64
  %378 = mul nsw i64 %375, %377
  %379 = load i64, ptr %336, align 8, !tbaa !55
  %380 = add i64 %378, %379
  store i64 %380, ptr %336, align 8, !tbaa !55
  br i1 %337, label %390, label %381

381:                                              ; preds = %372
  %382 = getelementptr inbounds %struct.ct_data_s, ptr %318, i64 %346, i32 1
  %383 = load i16, ptr %382, align 2, !tbaa !9
  %384 = zext i16 %383 to i32
  %385 = add nsw i32 %373, %384
  %386 = sext i32 %385 to i64
  %387 = mul nsw i64 %386, %375
  %388 = load i64, ptr %338, align 8, !tbaa !56
  %389 = add i64 %387, %388
  store i64 %389, ptr %338, align 8, !tbaa !56
  br label %390

390:                                              ; preds = %381, %372, %341
  %391 = add nsw i64 %342, 1
  %392 = and i64 %391, 4294967295
  %393 = icmp eq i64 %392, 573
  br i1 %393, label %394, label %341, !llvm.loop !74

394:                                              ; preds = %390, %309
  %395 = phi i32 [ 0, %309 ], [ %358, %390 ]
  %396 = phi i32 [ %333, %309 ], [ 573, %390 ]
  %397 = icmp eq i32 %395, 0
  br i1 %397, label %469, label %398

398:                                              ; preds = %394
  %399 = sext i32 %324 to i64
  %400 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 41, i64 %399
  br label %401

401:                                              ; preds = %409, %398
  %402 = phi i32 [ %419, %409 ], [ %395, %398 ]
  br label %403

403:                                              ; preds = %403, %401
  %404 = phi i64 [ %405, %403 ], [ %399, %401 ]
  %405 = add i64 %404, -1
  %406 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 41, i64 %405
  %407 = load i16, ptr %406, align 2, !tbaa !13
  %408 = icmp eq i16 %407, 0
  br i1 %408, label %403, label %409, !llvm.loop !75

409:                                              ; preds = %403
  %410 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 41, i64 %405
  %411 = add i16 %407, -1
  store i16 %411, ptr %410, align 2, !tbaa !13
  %412 = shl i64 %404, 32
  %413 = ashr exact i64 %412, 32
  %414 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 41, i64 %413
  %415 = load i16, ptr %414, align 2, !tbaa !13
  %416 = add i16 %415, 2
  store i16 %416, ptr %414, align 2, !tbaa !13
  %417 = load i16, ptr %400, align 2, !tbaa !13
  %418 = add i16 %417, -1
  store i16 %418, ptr %400, align 2, !tbaa !13
  %419 = add nsw i32 %402, -2
  %420 = icmp sgt i32 %402, 2
  br i1 %420, label %401, label %421, !llvm.loop !76

421:                                              ; preds = %409
  %422 = icmp eq i32 %324, 0
  br i1 %422, label %469, label %423

423:                                              ; preds = %421
  %424 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 50
  br label %425

425:                                              ; preds = %464, %423
  %426 = phi i64 [ %399, %423 ], [ %466, %464 ]
  %427 = phi i32 [ %396, %423 ], [ %465, %464 ]
  %428 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 41, i64 %426
  %429 = load i16, ptr %428, align 2, !tbaa !13
  %430 = trunc i64 %426 to i16
  %431 = icmp eq i16 %429, 0
  br i1 %431, label %464, label %432

432:                                              ; preds = %425
  %433 = zext i16 %429 to i32
  %434 = trunc i64 %426 to i32
  br label %435

435:                                              ; preds = %432, %461
  %436 = phi i32 [ %427, %432 ], [ %446, %461 ]
  %437 = phi i32 [ %433, %432 ], [ %462, %461 ]
  %438 = sext i32 %436 to i64
  br label %439

439:                                              ; preds = %439, %435
  %440 = phi i64 [ %438, %435 ], [ %441, %439 ]
  %441 = add i64 %440, -1
  %442 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 42, i64 %441
  %443 = load i32, ptr %442, align 4, !tbaa !5
  %444 = icmp sgt i32 %443, %316
  br i1 %444, label %439, label %445, !llvm.loop !77

445:                                              ; preds = %439
  %446 = trunc i64 %441 to i32
  %447 = sext i32 %443 to i64
  %448 = getelementptr inbounds %struct.ct_data_s, ptr %315, i64 %447, i32 1
  %449 = load i16, ptr %448, align 2, !tbaa !9
  %450 = zext i16 %449 to i32
  %451 = icmp eq i32 %434, %450
  br i1 %451, label %461, label %452

452:                                              ; preds = %445
  %453 = getelementptr inbounds %struct.ct_data_s, ptr %315, i64 %447
  %454 = zext i16 %449 to i64
  %455 = sub nsw i64 %426, %454
  %456 = load i16, ptr %453, align 2, !tbaa !9
  %457 = zext i16 %456 to i64
  %458 = mul nsw i64 %455, %457
  %459 = load i64, ptr %424, align 8, !tbaa !55
  %460 = add i64 %458, %459
  store i64 %460, ptr %424, align 8, !tbaa !55
  store i16 %430, ptr %448, align 2, !tbaa !9
  br label %461

461:                                              ; preds = %452, %445
  %462 = add nsw i32 %437, -1
  %463 = icmp eq i32 %462, 0
  br i1 %463, label %464, label %435, !llvm.loop !77

464:                                              ; preds = %461, %425
  %465 = phi i32 [ %427, %425 ], [ %446, %461 ]
  %466 = add nsw i64 %426, -1
  %467 = and i64 %466, 4294967295
  %468 = icmp eq i64 %467, 0
  br i1 %468, label %469, label %425, !llvm.loop !78

469:                                              ; preds = %464, %394, %421
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #7
  %470 = getelementptr i8, ptr %0, i64 2942
  br label %476

471:                                              ; preds = %476
  %472 = icmp slt i32 %68, 0
  br i1 %472, label %517, label %473

473:                                              ; preds = %471
  %474 = add nuw i32 %68, 1
  %475 = zext i32 %474 to i64
  br label %489

476:                                              ; preds = %476, %469
  %477 = phi i64 [ 1, %469 ], [ %487, %476 ]
  %478 = phi i32 [ 0, %469 ], [ %484, %476 ]
  %479 = and i32 %478, 65534
  %480 = getelementptr i16, ptr %470, i64 %477
  %481 = load i16, ptr %480, align 2, !tbaa !13
  %482 = zext i16 %481 to i32
  %483 = add nuw nsw i32 %479, %482
  %484 = shl nuw nsw i32 %483, 1
  %485 = trunc i32 %484 to i16
  %486 = getelementptr inbounds [16 x i16], ptr %3, i64 0, i64 %477
  store i16 %485, ptr %486, align 2, !tbaa !13
  %487 = add nuw nsw i64 %477, 1
  %488 = icmp eq i64 %487, 16
  br i1 %488, label %471, label %476, !llvm.loop !20

489:                                              ; preds = %514, %473
  %490 = phi i64 [ 0, %473 ], [ %515, %514 ]
  %491 = getelementptr inbounds %struct.ct_data_s, ptr %4, i64 %490, i32 1
  %492 = load i16, ptr %491, align 2, !tbaa !9
  %493 = icmp eq i16 %492, 0
  br i1 %493, label %514, label %494

494:                                              ; preds = %489
  %495 = zext i16 %492 to i32
  %496 = zext i16 %492 to i64
  %497 = getelementptr inbounds [16 x i16], ptr %3, i64 0, i64 %496
  %498 = load i16, ptr %497, align 2, !tbaa !13
  %499 = add i16 %498, 1
  store i16 %499, ptr %497, align 2, !tbaa !13
  %500 = zext i16 %498 to i32
  br label %501

501:                                              ; preds = %501, %494
  %502 = phi i32 [ %500, %494 ], [ %507, %501 ]
  %503 = phi i32 [ %495, %494 ], [ %509, %501 ]
  %504 = phi i32 [ 0, %494 ], [ %508, %501 ]
  %505 = and i32 %502, 1
  %506 = or disjoint i32 %504, %505
  %507 = lshr i32 %502, 1
  %508 = shl i32 %506, 1
  %509 = add nsw i32 %503, -1
  %510 = icmp sgt i32 %503, 1
  br i1 %510, label %501, label %511, !llvm.loop !21

511:                                              ; preds = %501
  %512 = getelementptr inbounds %struct.ct_data_s, ptr %4, i64 %490
  %513 = trunc i32 %506 to i16
  store i16 %513, ptr %512, align 2, !tbaa !9
  br label %514

514:                                              ; preds = %511, %489
  %515 = add nuw nsw i64 %490, 1
  %516 = icmp eq i64 %515, %475
  br i1 %516, label %517, label %489, !llvm.loop !22

517:                                              ; preds = %514, %471
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #7
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @compress_block(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 48
  %5 = load i32, ptr %4, align 4, !tbaa !42
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %267, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 49
  %9 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 46
  %10 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %11 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 55
  %12 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 55
  %13 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %14 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 4
  %15 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 55
  %16 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 55
  %17 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %18 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 4
  %19 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 55
  %20 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 55
  %21 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %22 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 4
  %23 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 55
  %24 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 55
  %25 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %26 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 4
  %27 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %28 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 55
  %29 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 55
  %30 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %31 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 4
  br label %32

32:                                               ; preds = %7, %263
  %33 = phi i64 [ 0, %7 ], [ %39, %263 ]
  %34 = load ptr, ptr %8, align 8, !tbaa !79
  %35 = getelementptr inbounds i16, ptr %34, i64 %33
  %36 = load i16, ptr %35, align 2, !tbaa !13
  %37 = zext i16 %36 to i32
  %38 = load ptr, ptr %9, align 8, !tbaa !80
  %39 = add nuw nsw i64 %33, 1
  %40 = getelementptr inbounds i8, ptr %38, i64 %33
  %41 = load i8, ptr %40, align 1, !tbaa !9
  %42 = zext i8 %41 to i32
  %43 = icmp eq i16 %36, 0
  %44 = zext i8 %41 to i64
  br i1 %43, label %45, label %86

45:                                               ; preds = %32
  %46 = getelementptr inbounds %struct.ct_data_s, ptr %1, i64 %44
  %47 = getelementptr inbounds %struct.ct_data_s, ptr %1, i64 %44, i32 1
  %48 = load i16, ptr %47, align 2, !tbaa !9
  %49 = zext i16 %48 to i32
  %50 = load i32, ptr %27, align 4, !tbaa !36
  %51 = sub nsw i32 16, %49
  %52 = icmp sgt i32 %50, %51
  %53 = load i16, ptr %46, align 2, !tbaa !9
  %54 = zext i16 %53 to i32
  %55 = shl i32 %54, %50
  %56 = trunc i32 %55 to i16
  br i1 %52, label %57, label %80

57:                                               ; preds = %45
  %58 = load i16, ptr %29, align 8, !tbaa !35
  %59 = or i16 %58, %56
  store i16 %59, ptr %29, align 8, !tbaa !35
  %60 = trunc i16 %59 to i8
  %61 = load ptr, ptr %30, align 8, !tbaa !43
  %62 = load i32, ptr %31, align 8, !tbaa !44
  %63 = add nsw i32 %62, 1
  store i32 %63, ptr %31, align 8, !tbaa !44
  %64 = sext i32 %62 to i64
  %65 = getelementptr inbounds i8, ptr %61, i64 %64
  store i8 %60, ptr %65, align 1, !tbaa !9
  %66 = load i16, ptr %29, align 8, !tbaa !35
  %67 = lshr i16 %66, 8
  %68 = trunc i16 %67 to i8
  %69 = load ptr, ptr %30, align 8, !tbaa !43
  %70 = load i32, ptr %31, align 8, !tbaa !44
  %71 = add nsw i32 %70, 1
  store i32 %71, ptr %31, align 8, !tbaa !44
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds i8, ptr %69, i64 %72
  store i8 %68, ptr %73, align 1, !tbaa !9
  %74 = load i32, ptr %27, align 4, !tbaa !36
  %75 = sub i32 16, %74
  %76 = lshr i32 %54, %75
  %77 = trunc i32 %76 to i16
  store i16 %77, ptr %29, align 8, !tbaa !35
  %78 = add nsw i32 %49, -16
  %79 = add i32 %78, %74
  br label %84

80:                                               ; preds = %45
  %81 = load i16, ptr %28, align 8, !tbaa !35
  %82 = or i16 %81, %56
  store i16 %82, ptr %28, align 8, !tbaa !35
  %83 = add nsw i32 %50, %49
  br label %84

84:                                               ; preds = %80, %57
  %85 = phi i32 [ %83, %80 ], [ %79, %57 ]
  store i32 %85, ptr %27, align 4, !tbaa !36
  br label %263

86:                                               ; preds = %32
  %87 = getelementptr inbounds [256 x i8], ptr @length_code, i64 0, i64 %44
  %88 = load i8, ptr %87, align 1, !tbaa !9
  %89 = zext i8 %88 to i64
  %90 = getelementptr %struct.ct_data_s, ptr %1, i64 %89
  %91 = getelementptr %struct.ct_data_s, ptr %90, i64 257
  %92 = getelementptr %struct.ct_data_s, ptr %90, i64 257, i32 1
  %93 = load i16, ptr %92, align 2, !tbaa !9
  %94 = zext i16 %93 to i32
  %95 = load i32, ptr %10, align 4, !tbaa !36
  %96 = sub nsw i32 16, %94
  %97 = icmp sgt i32 %95, %96
  %98 = load i16, ptr %91, align 2, !tbaa !9
  %99 = zext i16 %98 to i32
  %100 = shl i32 %99, %95
  %101 = trunc i32 %100 to i16
  br i1 %97, label %102, label %125

102:                                              ; preds = %86
  %103 = load i16, ptr %12, align 8, !tbaa !35
  %104 = or i16 %103, %101
  store i16 %104, ptr %12, align 8, !tbaa !35
  %105 = trunc i16 %104 to i8
  %106 = load ptr, ptr %13, align 8, !tbaa !43
  %107 = load i32, ptr %14, align 8, !tbaa !44
  %108 = add nsw i32 %107, 1
  store i32 %108, ptr %14, align 8, !tbaa !44
  %109 = sext i32 %107 to i64
  %110 = getelementptr inbounds i8, ptr %106, i64 %109
  store i8 %105, ptr %110, align 1, !tbaa !9
  %111 = load i16, ptr %12, align 8, !tbaa !35
  %112 = lshr i16 %111, 8
  %113 = trunc i16 %112 to i8
  %114 = load ptr, ptr %13, align 8, !tbaa !43
  %115 = load i32, ptr %14, align 8, !tbaa !44
  %116 = add nsw i32 %115, 1
  store i32 %116, ptr %14, align 8, !tbaa !44
  %117 = sext i32 %115 to i64
  %118 = getelementptr inbounds i8, ptr %114, i64 %117
  store i8 %113, ptr %118, align 1, !tbaa !9
  %119 = load i32, ptr %10, align 4, !tbaa !36
  %120 = sub i32 16, %119
  %121 = lshr i32 %99, %120
  %122 = trunc i32 %121 to i16
  store i16 %122, ptr %12, align 8, !tbaa !35
  %123 = add nsw i32 %94, -16
  %124 = add i32 %123, %119
  br label %129

125:                                              ; preds = %86
  %126 = load i16, ptr %11, align 8, !tbaa !35
  %127 = or i16 %126, %101
  store i16 %127, ptr %11, align 8, !tbaa !35
  %128 = add nsw i32 %95, %94
  br label %129

129:                                              ; preds = %125, %102
  %130 = phi i32 [ %128, %125 ], [ %124, %102 ]
  store i32 %130, ptr %10, align 4, !tbaa !36
  %131 = getelementptr inbounds [29 x i32], ptr @extra_lbits, i64 0, i64 %89
  %132 = load i32, ptr %131, align 4, !tbaa !5
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %172, label %134

134:                                              ; preds = %129
  %135 = getelementptr inbounds [29 x i32], ptr @base_length, i64 0, i64 %89
  %136 = load i32, ptr %135, align 4, !tbaa !5
  %137 = sub nsw i32 %42, %136
  %138 = sub nsw i32 16, %132
  %139 = icmp sgt i32 %130, %138
  %140 = shl i32 %137, %130
  %141 = trunc i32 %140 to i16
  br i1 %139, label %142, label %166

142:                                              ; preds = %134
  %143 = load i16, ptr %16, align 8, !tbaa !35
  %144 = or i16 %143, %141
  store i16 %144, ptr %16, align 8, !tbaa !35
  %145 = trunc i16 %144 to i8
  %146 = load ptr, ptr %17, align 8, !tbaa !43
  %147 = load i32, ptr %18, align 8, !tbaa !44
  %148 = add nsw i32 %147, 1
  store i32 %148, ptr %18, align 8, !tbaa !44
  %149 = sext i32 %147 to i64
  %150 = getelementptr inbounds i8, ptr %146, i64 %149
  store i8 %145, ptr %150, align 1, !tbaa !9
  %151 = load i16, ptr %16, align 8, !tbaa !35
  %152 = lshr i16 %151, 8
  %153 = trunc i16 %152 to i8
  %154 = load ptr, ptr %17, align 8, !tbaa !43
  %155 = load i32, ptr %18, align 8, !tbaa !44
  %156 = add nsw i32 %155, 1
  store i32 %156, ptr %18, align 8, !tbaa !44
  %157 = sext i32 %155 to i64
  %158 = getelementptr inbounds i8, ptr %154, i64 %157
  store i8 %153, ptr %158, align 1, !tbaa !9
  %159 = and i32 %137, 65535
  %160 = load i32, ptr %10, align 4, !tbaa !36
  %161 = sub i32 16, %160
  %162 = lshr i32 %159, %161
  %163 = trunc i32 %162 to i16
  store i16 %163, ptr %16, align 8, !tbaa !35
  %164 = add i32 %132, -16
  %165 = add i32 %164, %160
  br label %170

166:                                              ; preds = %134
  %167 = load i16, ptr %15, align 8, !tbaa !35
  %168 = or i16 %167, %141
  store i16 %168, ptr %15, align 8, !tbaa !35
  %169 = add nsw i32 %132, %130
  br label %170

170:                                              ; preds = %166, %142
  %171 = phi i32 [ %169, %166 ], [ %165, %142 ]
  store i32 %171, ptr %10, align 4, !tbaa !36
  br label %172

172:                                              ; preds = %170, %129
  %173 = add nsw i32 %37, -1
  %174 = icmp ult i16 %36, 257
  %175 = lshr i32 %173, 7
  %176 = add nuw nsw i32 %175, 256
  %177 = select i1 %174, i32 %173, i32 %176
  %178 = zext i32 %177 to i64
  %179 = getelementptr inbounds [512 x i8], ptr @dist_code, i64 0, i64 %178
  %180 = load i8, ptr %179, align 1, !tbaa !9
  %181 = zext i8 %180 to i64
  %182 = getelementptr inbounds %struct.ct_data_s, ptr %2, i64 %181
  %183 = getelementptr inbounds %struct.ct_data_s, ptr %2, i64 %181, i32 1
  %184 = load i16, ptr %183, align 2, !tbaa !9
  %185 = zext i16 %184 to i32
  %186 = load i32, ptr %10, align 4, !tbaa !36
  %187 = sub nsw i32 16, %185
  %188 = icmp sgt i32 %186, %187
  %189 = load i16, ptr %182, align 2, !tbaa !9
  %190 = zext i16 %189 to i32
  %191 = shl i32 %190, %186
  %192 = trunc i32 %191 to i16
  br i1 %188, label %193, label %216

193:                                              ; preds = %172
  %194 = load i16, ptr %20, align 8, !tbaa !35
  %195 = or i16 %194, %192
  store i16 %195, ptr %20, align 8, !tbaa !35
  %196 = trunc i16 %195 to i8
  %197 = load ptr, ptr %21, align 8, !tbaa !43
  %198 = load i32, ptr %22, align 8, !tbaa !44
  %199 = add nsw i32 %198, 1
  store i32 %199, ptr %22, align 8, !tbaa !44
  %200 = sext i32 %198 to i64
  %201 = getelementptr inbounds i8, ptr %197, i64 %200
  store i8 %196, ptr %201, align 1, !tbaa !9
  %202 = load i16, ptr %20, align 8, !tbaa !35
  %203 = lshr i16 %202, 8
  %204 = trunc i16 %203 to i8
  %205 = load ptr, ptr %21, align 8, !tbaa !43
  %206 = load i32, ptr %22, align 8, !tbaa !44
  %207 = add nsw i32 %206, 1
  store i32 %207, ptr %22, align 8, !tbaa !44
  %208 = sext i32 %206 to i64
  %209 = getelementptr inbounds i8, ptr %205, i64 %208
  store i8 %204, ptr %209, align 1, !tbaa !9
  %210 = load i32, ptr %10, align 4, !tbaa !36
  %211 = sub i32 16, %210
  %212 = lshr i32 %190, %211
  %213 = trunc i32 %212 to i16
  store i16 %213, ptr %20, align 8, !tbaa !35
  %214 = add nsw i32 %185, -16
  %215 = add i32 %214, %210
  br label %220

216:                                              ; preds = %172
  %217 = load i16, ptr %19, align 8, !tbaa !35
  %218 = or i16 %217, %192
  store i16 %218, ptr %19, align 8, !tbaa !35
  %219 = add nsw i32 %186, %185
  br label %220

220:                                              ; preds = %216, %193
  %221 = phi i32 [ %219, %216 ], [ %215, %193 ]
  store i32 %221, ptr %10, align 4, !tbaa !36
  %222 = getelementptr inbounds [30 x i32], ptr @extra_dbits, i64 0, i64 %181
  %223 = load i32, ptr %222, align 4, !tbaa !5
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %263, label %225

225:                                              ; preds = %220
  %226 = getelementptr inbounds [30 x i32], ptr @base_dist, i64 0, i64 %181
  %227 = load i32, ptr %226, align 4, !tbaa !5
  %228 = sub i32 %173, %227
  %229 = sub nsw i32 16, %223
  %230 = icmp sgt i32 %221, %229
  %231 = shl i32 %228, %221
  %232 = trunc i32 %231 to i16
  br i1 %230, label %233, label %257

233:                                              ; preds = %225
  %234 = load i16, ptr %24, align 8, !tbaa !35
  %235 = or i16 %234, %232
  store i16 %235, ptr %24, align 8, !tbaa !35
  %236 = trunc i16 %235 to i8
  %237 = load ptr, ptr %25, align 8, !tbaa !43
  %238 = load i32, ptr %26, align 8, !tbaa !44
  %239 = add nsw i32 %238, 1
  store i32 %239, ptr %26, align 8, !tbaa !44
  %240 = sext i32 %238 to i64
  %241 = getelementptr inbounds i8, ptr %237, i64 %240
  store i8 %236, ptr %241, align 1, !tbaa !9
  %242 = load i16, ptr %24, align 8, !tbaa !35
  %243 = lshr i16 %242, 8
  %244 = trunc i16 %243 to i8
  %245 = load ptr, ptr %25, align 8, !tbaa !43
  %246 = load i32, ptr %26, align 8, !tbaa !44
  %247 = add nsw i32 %246, 1
  store i32 %247, ptr %26, align 8, !tbaa !44
  %248 = sext i32 %246 to i64
  %249 = getelementptr inbounds i8, ptr %245, i64 %248
  store i8 %244, ptr %249, align 1, !tbaa !9
  %250 = and i32 %228, 65535
  %251 = load i32, ptr %10, align 4, !tbaa !36
  %252 = sub i32 16, %251
  %253 = lshr i32 %250, %252
  %254 = trunc i32 %253 to i16
  store i16 %254, ptr %24, align 8, !tbaa !35
  %255 = add i32 %223, -16
  %256 = add i32 %255, %251
  br label %261

257:                                              ; preds = %225
  %258 = load i16, ptr %23, align 8, !tbaa !35
  %259 = or i16 %258, %232
  store i16 %259, ptr %23, align 8, !tbaa !35
  %260 = add nsw i32 %223, %221
  br label %261

261:                                              ; preds = %257, %233
  %262 = phi i32 [ %260, %257 ], [ %256, %233 ]
  store i32 %262, ptr %10, align 4, !tbaa !36
  br label %263

263:                                              ; preds = %84, %261, %220
  %264 = load i32, ptr %4, align 4, !tbaa !42
  %265 = zext i32 %264 to i64
  %266 = icmp ult i64 %39, %265
  br i1 %266, label %32, label %267, !llvm.loop !81

267:                                              ; preds = %263, %3
  %268 = getelementptr inbounds %struct.ct_data_s, ptr %1, i64 256
  %269 = getelementptr inbounds %struct.ct_data_s, ptr %1, i64 256, i32 1
  %270 = load i16, ptr %269, align 2, !tbaa !9
  %271 = zext i16 %270 to i32
  %272 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %273 = load i32, ptr %272, align 4, !tbaa !36
  %274 = sub nsw i32 16, %271
  %275 = icmp sgt i32 %273, %274
  %276 = load i16, ptr %268, align 2, !tbaa !9
  %277 = zext i16 %276 to i32
  %278 = shl i32 %277, %273
  %279 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 55
  %280 = load i16, ptr %279, align 8, !tbaa !35
  %281 = trunc i32 %278 to i16
  %282 = or i16 %280, %281
  store i16 %282, ptr %279, align 8, !tbaa !35
  br i1 %275, label %283, label %306

283:                                              ; preds = %267
  %284 = trunc i16 %282 to i8
  %285 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %286 = load ptr, ptr %285, align 8, !tbaa !43
  %287 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 4
  %288 = load i32, ptr %287, align 8, !tbaa !44
  %289 = add nsw i32 %288, 1
  store i32 %289, ptr %287, align 8, !tbaa !44
  %290 = sext i32 %288 to i64
  %291 = getelementptr inbounds i8, ptr %286, i64 %290
  store i8 %284, ptr %291, align 1, !tbaa !9
  %292 = load i16, ptr %279, align 8, !tbaa !35
  %293 = lshr i16 %292, 8
  %294 = trunc i16 %293 to i8
  %295 = load ptr, ptr %285, align 8, !tbaa !43
  %296 = load i32, ptr %287, align 8, !tbaa !44
  %297 = add nsw i32 %296, 1
  store i32 %297, ptr %287, align 8, !tbaa !44
  %298 = sext i32 %296 to i64
  %299 = getelementptr inbounds i8, ptr %295, i64 %298
  store i8 %294, ptr %299, align 1, !tbaa !9
  %300 = load i32, ptr %272, align 4, !tbaa !36
  %301 = sub i32 16, %300
  %302 = lshr i32 %277, %301
  %303 = trunc i32 %302 to i16
  store i16 %303, ptr %279, align 8, !tbaa !35
  %304 = add nsw i32 %271, -16
  %305 = add i32 %304, %300
  br label %308

306:                                              ; preds = %267
  %307 = add nsw i32 %273, %271
  br label %308

308:                                              ; preds = %306, %283
  %309 = phi i32 [ %307, %306 ], [ %305, %283 ]
  store i32 %309, ptr %272, align 4, !tbaa !36
  %310 = load i16, ptr %269, align 2, !tbaa !9
  %311 = zext i16 %310 to i32
  %312 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 54
  store i32 %311, ptr %312, align 4, !tbaa !37
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @_tr_tally(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = trunc i32 %1 to i16
  %5 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 49
  %6 = load ptr, ptr %5, align 8, !tbaa !79
  %7 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 48
  %8 = load i32, ptr %7, align 4, !tbaa !42
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds i16, ptr %6, i64 %9
  store i16 %4, ptr %10, align 2, !tbaa !13
  %11 = trunc i32 %2 to i8
  %12 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 46
  %13 = load ptr, ptr %12, align 8, !tbaa !80
  %14 = add i32 %8, 1
  store i32 %14, ptr %7, align 4, !tbaa !42
  %15 = getelementptr inbounds i8, ptr %13, i64 %9
  store i8 %11, ptr %15, align 1, !tbaa !9
  %16 = icmp eq i32 %1, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = zext i32 %2 to i64
  %19 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 35, i64 %18
  br label %42

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 53
  %22 = load i32, ptr %21, align 8, !tbaa !41
  %23 = add i32 %22, 1
  store i32 %23, ptr %21, align 8, !tbaa !41
  %24 = add i32 %1, -1
  %25 = zext i32 %2 to i64
  %26 = getelementptr inbounds [256 x i8], ptr @length_code, i64 0, i64 %25
  %27 = load i8, ptr %26, align 1, !tbaa !9
  %28 = zext i8 %27 to i64
  %29 = add nuw nsw i64 %28, 257
  %30 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 35, i64 %29
  %31 = load i16, ptr %30, align 4, !tbaa !9
  %32 = add i16 %31, 1
  store i16 %32, ptr %30, align 4, !tbaa !9
  %33 = icmp ult i32 %1, 257
  %34 = lshr i32 %24, 7
  %35 = add nuw nsw i32 %34, 256
  %36 = select i1 %33, i32 %24, i32 %35
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds [512 x i8], ptr @dist_code, i64 0, i64 %37
  %39 = load i8, ptr %38, align 1, !tbaa !9
  %40 = zext i8 %39 to i64
  %41 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 36, i64 %40
  br label %42

42:                                               ; preds = %20, %17
  %43 = phi ptr [ %41, %20 ], [ %19, %17 ]
  %44 = load i16, ptr %43, align 4, !tbaa !9
  %45 = add i16 %44, 1
  store i16 %45, ptr %43, align 4, !tbaa !9
  %46 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 31
  %47 = load i32, ptr %46, align 4, !tbaa !46
  %48 = icmp sgt i32 %47, 2
  br i1 %48, label %49, label %85

49:                                               ; preds = %42
  %50 = load i32, ptr %7, align 4, !tbaa !42
  %51 = and i32 %50, 4095
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %85

53:                                               ; preds = %49
  %54 = zext i32 %50 to i64
  %55 = shl nuw nsw i64 %54, 3
  %56 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 25
  %57 = load i32, ptr %56, align 4, !tbaa !82
  %58 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 21
  %59 = load i64, ptr %58, align 8, !tbaa !83
  br label %60

60:                                               ; preds = %53, %60
  %61 = phi i64 [ 0, %53 ], [ %72, %60 ]
  %62 = phi i64 [ %55, %53 ], [ %71, %60 ]
  %63 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 36, i64 %61
  %64 = load i16, ptr %63, align 4, !tbaa !9
  %65 = zext i16 %64 to i64
  %66 = getelementptr inbounds [30 x i32], ptr @extra_dbits, i64 0, i64 %61
  %67 = load i32, ptr %66, align 4, !tbaa !5
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %68, 5
  %70 = mul nsw i64 %69, %65
  %71 = add i64 %70, %62
  %72 = add nuw nsw i64 %61, 1
  %73 = icmp eq i64 %72, 30
  br i1 %73, label %74, label %60, !llvm.loop !84

74:                                               ; preds = %60
  %75 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 53
  %76 = load i32, ptr %75, align 8, !tbaa !41
  %77 = lshr exact i32 %50, 1
  %78 = icmp ult i32 %76, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %74
  %80 = zext i32 %57 to i64
  %81 = sub nsw i64 %80, %59
  %82 = lshr i64 %71, 3
  %83 = lshr i64 %81, 1
  %84 = icmp ult i64 %82, %83
  br i1 %84, label %92, label %85

85:                                               ; preds = %74, %79, %49, %42
  %86 = load i32, ptr %7, align 4, !tbaa !42
  %87 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 47
  %88 = load i32, ptr %87, align 8, !tbaa !85
  %89 = add i32 %88, -1
  %90 = icmp eq i32 %86, %89
  %91 = zext i1 %90 to i32
  br label %92

92:                                               ; preds = %79, %85
  %93 = phi i32 [ %91, %85 ], [ 1, %79 ]
  ret i32 %93
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @send_tree(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #4 {
  %4 = icmp slt i32 %2, 0
  br i1 %4, label %405, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.ct_data_s, ptr %1, i64 0, i32 1
  %7 = load i16, ptr %6, align 2, !tbaa !9
  %8 = icmp eq i16 %7, 0
  %9 = select i1 %8, i32 138, i32 7
  %10 = select i1 %8, i32 3, i32 4
  %11 = zext i16 %7 to i32
  %12 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %13 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 55
  %14 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 55
  %15 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %16 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 4
  %17 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 16
  %18 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 16, i32 1
  %19 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %20 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 55
  %21 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 55
  %22 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %23 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 4
  %24 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 55
  %25 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 55
  %26 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %27 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 4
  %28 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 18
  %29 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 18, i32 1
  %30 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %31 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 55
  %32 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 55
  %33 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %34 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 4
  %35 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 55
  %36 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 55
  %37 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %38 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 4
  %39 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 17
  %40 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 17, i32 1
  %41 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %42 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 55
  %43 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 55
  %44 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %45 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 4
  %46 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 55
  %47 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 55
  %48 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %49 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 4
  %50 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %51 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 55
  %52 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 55
  %53 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %54 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 4
  %55 = add nuw i32 %2, 1
  %56 = zext i32 %55 to i64
  br label %57

57:                                               ; preds = %5, %399
  %58 = phi i64 [ 0, %5 ], [ %64, %399 ]
  %59 = phi i32 [ -1, %5 ], [ %403, %399 ]
  %60 = phi i32 [ %11, %5 ], [ %67, %399 ]
  %61 = phi i32 [ 0, %5 ], [ %402, %399 ]
  %62 = phi i32 [ %9, %5 ], [ %401, %399 ]
  %63 = phi i32 [ %10, %5 ], [ %400, %399 ]
  %64 = add nuw nsw i64 %58, 1
  %65 = getelementptr inbounds %struct.ct_data_s, ptr %1, i64 %64, i32 1
  %66 = load i16, ptr %65, align 2, !tbaa !9
  %67 = zext i16 %66 to i32
  %68 = add nsw i32 %61, 1
  %69 = icmp slt i32 %68, %62
  %70 = icmp eq i32 %60, %67
  %71 = select i1 %69, i1 %70, i1 false
  br i1 %71, label %399, label %72

72:                                               ; preds = %57
  %73 = icmp slt i32 %68, %63
  br i1 %73, label %74, label %120

74:                                               ; preds = %72
  %75 = zext nneg i32 %60 to i64
  %76 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 %75
  %77 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 %75, i32 1
  br label %78

78:                                               ; preds = %74, %116
  %79 = phi i32 [ %118, %116 ], [ %68, %74 ]
  %80 = load i16, ptr %77, align 2, !tbaa !9
  %81 = zext i16 %80 to i32
  %82 = load i32, ptr %50, align 4, !tbaa !36
  %83 = sub nsw i32 16, %81
  %84 = icmp sgt i32 %82, %83
  %85 = load i16, ptr %76, align 4, !tbaa !9
  %86 = zext i16 %85 to i32
  %87 = shl i32 %86, %82
  %88 = trunc i32 %87 to i16
  br i1 %84, label %89, label %112

89:                                               ; preds = %78
  %90 = load i16, ptr %52, align 8, !tbaa !35
  %91 = or i16 %90, %88
  store i16 %91, ptr %52, align 8, !tbaa !35
  %92 = trunc i16 %91 to i8
  %93 = load ptr, ptr %53, align 8, !tbaa !43
  %94 = load i32, ptr %54, align 8, !tbaa !44
  %95 = add nsw i32 %94, 1
  store i32 %95, ptr %54, align 8, !tbaa !44
  %96 = sext i32 %94 to i64
  %97 = getelementptr inbounds i8, ptr %93, i64 %96
  store i8 %92, ptr %97, align 1, !tbaa !9
  %98 = load i16, ptr %52, align 8, !tbaa !35
  %99 = lshr i16 %98, 8
  %100 = trunc i16 %99 to i8
  %101 = load ptr, ptr %53, align 8, !tbaa !43
  %102 = load i32, ptr %54, align 8, !tbaa !44
  %103 = add nsw i32 %102, 1
  store i32 %103, ptr %54, align 8, !tbaa !44
  %104 = sext i32 %102 to i64
  %105 = getelementptr inbounds i8, ptr %101, i64 %104
  store i8 %100, ptr %105, align 1, !tbaa !9
  %106 = load i32, ptr %50, align 4, !tbaa !36
  %107 = sub i32 16, %106
  %108 = lshr i32 %86, %107
  %109 = trunc i32 %108 to i16
  store i16 %109, ptr %52, align 8, !tbaa !35
  %110 = add nsw i32 %81, -16
  %111 = add i32 %110, %106
  br label %116

112:                                              ; preds = %78
  %113 = load i16, ptr %51, align 8, !tbaa !35
  %114 = or i16 %113, %88
  store i16 %114, ptr %51, align 8, !tbaa !35
  %115 = add nsw i32 %82, %81
  br label %116

116:                                              ; preds = %112, %89
  %117 = phi i32 [ %115, %112 ], [ %111, %89 ]
  store i32 %117, ptr %50, align 4, !tbaa !36
  %118 = add nsw i32 %79, -1
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %394, label %78, !llvm.loop !86

120:                                              ; preds = %72
  %121 = icmp eq i32 %60, 0
  br i1 %121, label %242, label %122

122:                                              ; preds = %120
  %123 = icmp eq i32 %60, %59
  br i1 %123, label %166, label %124

124:                                              ; preds = %122
  %125 = zext nneg i32 %60 to i64
  %126 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 %125
  %127 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 %125, i32 1
  %128 = load i16, ptr %127, align 2, !tbaa !9
  %129 = zext i16 %128 to i32
  %130 = load i32, ptr %12, align 4, !tbaa !36
  %131 = sub nsw i32 16, %129
  %132 = icmp sgt i32 %130, %131
  %133 = load i16, ptr %126, align 4, !tbaa !9
  %134 = zext i16 %133 to i32
  %135 = shl i32 %134, %130
  %136 = trunc i32 %135 to i16
  br i1 %132, label %137, label %160

137:                                              ; preds = %124
  %138 = load i16, ptr %14, align 8, !tbaa !35
  %139 = or i16 %138, %136
  store i16 %139, ptr %14, align 8, !tbaa !35
  %140 = trunc i16 %139 to i8
  %141 = load ptr, ptr %15, align 8, !tbaa !43
  %142 = load i32, ptr %16, align 8, !tbaa !44
  %143 = add nsw i32 %142, 1
  store i32 %143, ptr %16, align 8, !tbaa !44
  %144 = sext i32 %142 to i64
  %145 = getelementptr inbounds i8, ptr %141, i64 %144
  store i8 %140, ptr %145, align 1, !tbaa !9
  %146 = load i16, ptr %14, align 8, !tbaa !35
  %147 = lshr i16 %146, 8
  %148 = trunc i16 %147 to i8
  %149 = load ptr, ptr %15, align 8, !tbaa !43
  %150 = load i32, ptr %16, align 8, !tbaa !44
  %151 = add nsw i32 %150, 1
  store i32 %151, ptr %16, align 8, !tbaa !44
  %152 = sext i32 %150 to i64
  %153 = getelementptr inbounds i8, ptr %149, i64 %152
  store i8 %148, ptr %153, align 1, !tbaa !9
  %154 = load i32, ptr %12, align 4, !tbaa !36
  %155 = sub i32 16, %154
  %156 = lshr i32 %134, %155
  %157 = trunc i32 %156 to i16
  store i16 %157, ptr %14, align 8, !tbaa !35
  %158 = add nsw i32 %129, -16
  %159 = add i32 %158, %154
  br label %164

160:                                              ; preds = %124
  %161 = load i16, ptr %13, align 8, !tbaa !35
  %162 = or i16 %161, %136
  store i16 %162, ptr %13, align 8, !tbaa !35
  %163 = add nsw i32 %130, %129
  br label %164

164:                                              ; preds = %160, %137
  %165 = phi i32 [ %163, %160 ], [ %159, %137 ]
  store i32 %165, ptr %12, align 4, !tbaa !36
  br label %166

166:                                              ; preds = %164, %122
  %167 = phi i32 [ %61, %164 ], [ %68, %122 ]
  %168 = load i16, ptr %18, align 2, !tbaa !9
  %169 = zext i16 %168 to i32
  %170 = load i32, ptr %19, align 4, !tbaa !36
  %171 = sub nsw i32 16, %169
  %172 = icmp sgt i32 %170, %171
  %173 = load i16, ptr %17, align 4, !tbaa !9
  %174 = zext i16 %173 to i32
  %175 = shl i32 %174, %170
  %176 = trunc i32 %175 to i16
  br i1 %172, label %177, label %200

177:                                              ; preds = %166
  %178 = load i16, ptr %21, align 8, !tbaa !35
  %179 = or i16 %178, %176
  store i16 %179, ptr %21, align 8, !tbaa !35
  %180 = trunc i16 %179 to i8
  %181 = load ptr, ptr %22, align 8, !tbaa !43
  %182 = load i32, ptr %23, align 8, !tbaa !44
  %183 = add nsw i32 %182, 1
  store i32 %183, ptr %23, align 8, !tbaa !44
  %184 = sext i32 %182 to i64
  %185 = getelementptr inbounds i8, ptr %181, i64 %184
  store i8 %180, ptr %185, align 1, !tbaa !9
  %186 = load i16, ptr %21, align 8, !tbaa !35
  %187 = lshr i16 %186, 8
  %188 = trunc i16 %187 to i8
  %189 = load ptr, ptr %22, align 8, !tbaa !43
  %190 = load i32, ptr %23, align 8, !tbaa !44
  %191 = add nsw i32 %190, 1
  store i32 %191, ptr %23, align 8, !tbaa !44
  %192 = sext i32 %190 to i64
  %193 = getelementptr inbounds i8, ptr %189, i64 %192
  store i8 %188, ptr %193, align 1, !tbaa !9
  %194 = load i32, ptr %19, align 4, !tbaa !36
  %195 = sub i32 16, %194
  %196 = lshr i32 %174, %195
  %197 = trunc i32 %196 to i16
  store i16 %197, ptr %21, align 8, !tbaa !35
  %198 = add nsw i32 %169, -16
  %199 = add i32 %198, %194
  br label %204

200:                                              ; preds = %166
  %201 = load i16, ptr %20, align 8, !tbaa !35
  %202 = or i16 %201, %176
  store i16 %202, ptr %20, align 8, !tbaa !35
  %203 = add nsw i32 %170, %169
  br label %204

204:                                              ; preds = %200, %177
  %205 = phi i32 [ %203, %200 ], [ %199, %177 ]
  store i32 %205, ptr %19, align 4, !tbaa !36
  %206 = icmp sgt i32 %205, 14
  br i1 %206, label %207, label %233

207:                                              ; preds = %204
  %208 = add nsw i32 %167, -3
  %209 = shl i32 %208, %205
  %210 = load i16, ptr %25, align 8, !tbaa !35
  %211 = trunc i32 %209 to i16
  %212 = or i16 %210, %211
  store i16 %212, ptr %25, align 8, !tbaa !35
  %213 = trunc i16 %212 to i8
  %214 = load ptr, ptr %26, align 8, !tbaa !43
  %215 = load i32, ptr %27, align 8, !tbaa !44
  %216 = add nsw i32 %215, 1
  store i32 %216, ptr %27, align 8, !tbaa !44
  %217 = sext i32 %215 to i64
  %218 = getelementptr inbounds i8, ptr %214, i64 %217
  store i8 %213, ptr %218, align 1, !tbaa !9
  %219 = load i16, ptr %25, align 8, !tbaa !35
  %220 = lshr i16 %219, 8
  %221 = trunc i16 %220 to i8
  %222 = load ptr, ptr %26, align 8, !tbaa !43
  %223 = load i32, ptr %27, align 8, !tbaa !44
  %224 = add nsw i32 %223, 1
  store i32 %224, ptr %27, align 8, !tbaa !44
  %225 = sext i32 %223 to i64
  %226 = getelementptr inbounds i8, ptr %222, i64 %225
  store i8 %221, ptr %226, align 1, !tbaa !9
  %227 = and i32 %208, 65535
  %228 = load i32, ptr %19, align 4, !tbaa !36
  %229 = sub i32 16, %228
  %230 = lshr i32 %227, %229
  %231 = trunc i32 %230 to i16
  store i16 %231, ptr %25, align 8, !tbaa !35
  %232 = add i32 %228, -14
  br label %240

233:                                              ; preds = %204
  %234 = add i32 %167, 65533
  %235 = shl i32 %234, %205
  %236 = load i16, ptr %24, align 8, !tbaa !35
  %237 = trunc i32 %235 to i16
  %238 = or i16 %236, %237
  store i16 %238, ptr %24, align 8, !tbaa !35
  %239 = add nsw i32 %205, 2
  br label %240

240:                                              ; preds = %233, %207
  %241 = phi i32 [ %239, %233 ], [ %232, %207 ]
  store i32 %241, ptr %19, align 4, !tbaa !36
  br label %394

242:                                              ; preds = %120
  %243 = icmp slt i32 %61, 10
  br i1 %243, label %244, label %319

244:                                              ; preds = %242
  %245 = load i16, ptr %40, align 2, !tbaa !9
  %246 = zext i16 %245 to i32
  %247 = load i32, ptr %41, align 4, !tbaa !36
  %248 = sub nsw i32 16, %246
  %249 = icmp sgt i32 %247, %248
  %250 = load i16, ptr %39, align 4, !tbaa !9
  %251 = zext i16 %250 to i32
  %252 = shl i32 %251, %247
  %253 = trunc i32 %252 to i16
  br i1 %249, label %254, label %277

254:                                              ; preds = %244
  %255 = load i16, ptr %43, align 8, !tbaa !35
  %256 = or i16 %255, %253
  store i16 %256, ptr %43, align 8, !tbaa !35
  %257 = trunc i16 %256 to i8
  %258 = load ptr, ptr %44, align 8, !tbaa !43
  %259 = load i32, ptr %45, align 8, !tbaa !44
  %260 = add nsw i32 %259, 1
  store i32 %260, ptr %45, align 8, !tbaa !44
  %261 = sext i32 %259 to i64
  %262 = getelementptr inbounds i8, ptr %258, i64 %261
  store i8 %257, ptr %262, align 1, !tbaa !9
  %263 = load i16, ptr %43, align 8, !tbaa !35
  %264 = lshr i16 %263, 8
  %265 = trunc i16 %264 to i8
  %266 = load ptr, ptr %44, align 8, !tbaa !43
  %267 = load i32, ptr %45, align 8, !tbaa !44
  %268 = add nsw i32 %267, 1
  store i32 %268, ptr %45, align 8, !tbaa !44
  %269 = sext i32 %267 to i64
  %270 = getelementptr inbounds i8, ptr %266, i64 %269
  store i8 %265, ptr %270, align 1, !tbaa !9
  %271 = load i32, ptr %41, align 4, !tbaa !36
  %272 = sub i32 16, %271
  %273 = lshr i32 %251, %272
  %274 = trunc i32 %273 to i16
  store i16 %274, ptr %43, align 8, !tbaa !35
  %275 = add nsw i32 %246, -16
  %276 = add i32 %275, %271
  br label %281

277:                                              ; preds = %244
  %278 = load i16, ptr %42, align 8, !tbaa !35
  %279 = or i16 %278, %253
  store i16 %279, ptr %42, align 8, !tbaa !35
  %280 = add nsw i32 %247, %246
  br label %281

281:                                              ; preds = %277, %254
  %282 = phi i32 [ %280, %277 ], [ %276, %254 ]
  store i32 %282, ptr %41, align 4, !tbaa !36
  %283 = icmp sgt i32 %282, 13
  br i1 %283, label %284, label %310

284:                                              ; preds = %281
  %285 = add nsw i32 %61, -2
  %286 = shl i32 %285, %282
  %287 = load i16, ptr %47, align 8, !tbaa !35
  %288 = trunc i32 %286 to i16
  %289 = or i16 %287, %288
  store i16 %289, ptr %47, align 8, !tbaa !35
  %290 = trunc i16 %289 to i8
  %291 = load ptr, ptr %48, align 8, !tbaa !43
  %292 = load i32, ptr %49, align 8, !tbaa !44
  %293 = add nsw i32 %292, 1
  store i32 %293, ptr %49, align 8, !tbaa !44
  %294 = sext i32 %292 to i64
  %295 = getelementptr inbounds i8, ptr %291, i64 %294
  store i8 %290, ptr %295, align 1, !tbaa !9
  %296 = load i16, ptr %47, align 8, !tbaa !35
  %297 = lshr i16 %296, 8
  %298 = trunc i16 %297 to i8
  %299 = load ptr, ptr %48, align 8, !tbaa !43
  %300 = load i32, ptr %49, align 8, !tbaa !44
  %301 = add nsw i32 %300, 1
  store i32 %301, ptr %49, align 8, !tbaa !44
  %302 = sext i32 %300 to i64
  %303 = getelementptr inbounds i8, ptr %299, i64 %302
  store i8 %298, ptr %303, align 1, !tbaa !9
  %304 = and i32 %285, 65535
  %305 = load i32, ptr %41, align 4, !tbaa !36
  %306 = sub i32 16, %305
  %307 = lshr i32 %304, %306
  %308 = trunc i32 %307 to i16
  store i16 %308, ptr %47, align 8, !tbaa !35
  %309 = add i32 %305, -13
  br label %317

310:                                              ; preds = %281
  %311 = add i32 %61, 65534
  %312 = shl i32 %311, %282
  %313 = load i16, ptr %46, align 8, !tbaa !35
  %314 = trunc i32 %312 to i16
  %315 = or i16 %313, %314
  store i16 %315, ptr %46, align 8, !tbaa !35
  %316 = add nsw i32 %282, 3
  br label %317

317:                                              ; preds = %310, %284
  %318 = phi i32 [ %316, %310 ], [ %309, %284 ]
  store i32 %318, ptr %41, align 4, !tbaa !36
  br label %394

319:                                              ; preds = %242
  %320 = load i16, ptr %29, align 2, !tbaa !9
  %321 = zext i16 %320 to i32
  %322 = load i32, ptr %30, align 4, !tbaa !36
  %323 = sub nsw i32 16, %321
  %324 = icmp sgt i32 %322, %323
  %325 = load i16, ptr %28, align 4, !tbaa !9
  %326 = zext i16 %325 to i32
  %327 = shl i32 %326, %322
  %328 = trunc i32 %327 to i16
  br i1 %324, label %329, label %352

329:                                              ; preds = %319
  %330 = load i16, ptr %32, align 8, !tbaa !35
  %331 = or i16 %330, %328
  store i16 %331, ptr %32, align 8, !tbaa !35
  %332 = trunc i16 %331 to i8
  %333 = load ptr, ptr %33, align 8, !tbaa !43
  %334 = load i32, ptr %34, align 8, !tbaa !44
  %335 = add nsw i32 %334, 1
  store i32 %335, ptr %34, align 8, !tbaa !44
  %336 = sext i32 %334 to i64
  %337 = getelementptr inbounds i8, ptr %333, i64 %336
  store i8 %332, ptr %337, align 1, !tbaa !9
  %338 = load i16, ptr %32, align 8, !tbaa !35
  %339 = lshr i16 %338, 8
  %340 = trunc i16 %339 to i8
  %341 = load ptr, ptr %33, align 8, !tbaa !43
  %342 = load i32, ptr %34, align 8, !tbaa !44
  %343 = add nsw i32 %342, 1
  store i32 %343, ptr %34, align 8, !tbaa !44
  %344 = sext i32 %342 to i64
  %345 = getelementptr inbounds i8, ptr %341, i64 %344
  store i8 %340, ptr %345, align 1, !tbaa !9
  %346 = load i32, ptr %30, align 4, !tbaa !36
  %347 = sub i32 16, %346
  %348 = lshr i32 %326, %347
  %349 = trunc i32 %348 to i16
  store i16 %349, ptr %32, align 8, !tbaa !35
  %350 = add nsw i32 %321, -16
  %351 = add i32 %350, %346
  br label %356

352:                                              ; preds = %319
  %353 = load i16, ptr %31, align 8, !tbaa !35
  %354 = or i16 %353, %328
  store i16 %354, ptr %31, align 8, !tbaa !35
  %355 = add nsw i32 %322, %321
  br label %356

356:                                              ; preds = %352, %329
  %357 = phi i32 [ %355, %352 ], [ %351, %329 ]
  store i32 %357, ptr %30, align 4, !tbaa !36
  %358 = icmp sgt i32 %357, 9
  br i1 %358, label %359, label %385

359:                                              ; preds = %356
  %360 = add nsw i32 %61, -10
  %361 = shl i32 %360, %357
  %362 = load i16, ptr %36, align 8, !tbaa !35
  %363 = trunc i32 %361 to i16
  %364 = or i16 %362, %363
  store i16 %364, ptr %36, align 8, !tbaa !35
  %365 = trunc i16 %364 to i8
  %366 = load ptr, ptr %37, align 8, !tbaa !43
  %367 = load i32, ptr %38, align 8, !tbaa !44
  %368 = add nsw i32 %367, 1
  store i32 %368, ptr %38, align 8, !tbaa !44
  %369 = sext i32 %367 to i64
  %370 = getelementptr inbounds i8, ptr %366, i64 %369
  store i8 %365, ptr %370, align 1, !tbaa !9
  %371 = load i16, ptr %36, align 8, !tbaa !35
  %372 = lshr i16 %371, 8
  %373 = trunc i16 %372 to i8
  %374 = load ptr, ptr %37, align 8, !tbaa !43
  %375 = load i32, ptr %38, align 8, !tbaa !44
  %376 = add nsw i32 %375, 1
  store i32 %376, ptr %38, align 8, !tbaa !44
  %377 = sext i32 %375 to i64
  %378 = getelementptr inbounds i8, ptr %374, i64 %377
  store i8 %373, ptr %378, align 1, !tbaa !9
  %379 = and i32 %360, 65535
  %380 = load i32, ptr %30, align 4, !tbaa !36
  %381 = sub i32 16, %380
  %382 = lshr i32 %379, %381
  %383 = trunc i32 %382 to i16
  store i16 %383, ptr %36, align 8, !tbaa !35
  %384 = add i32 %380, -9
  br label %392

385:                                              ; preds = %356
  %386 = add nuw i32 %61, 65526
  %387 = shl i32 %386, %357
  %388 = load i16, ptr %35, align 8, !tbaa !35
  %389 = trunc i32 %387 to i16
  %390 = or i16 %388, %389
  store i16 %390, ptr %35, align 8, !tbaa !35
  %391 = add nsw i32 %357, 7
  br label %392

392:                                              ; preds = %385, %359
  %393 = phi i32 [ %391, %385 ], [ %384, %359 ]
  store i32 %393, ptr %30, align 4, !tbaa !36
  br label %394

394:                                              ; preds = %116, %317, %392, %240
  %395 = icmp eq i16 %66, 0
  br i1 %395, label %399, label %396

396:                                              ; preds = %394
  %397 = select i1 %70, i32 3, i32 4
  %398 = select i1 %70, i32 6, i32 7
  br label %399

399:                                              ; preds = %396, %394, %57
  %400 = phi i32 [ %63, %57 ], [ 3, %394 ], [ %397, %396 ]
  %401 = phi i32 [ %62, %57 ], [ 138, %394 ], [ %398, %396 ]
  %402 = phi i32 [ %68, %57 ], [ 0, %394 ], [ 0, %396 ]
  %403 = phi i32 [ %59, %57 ], [ %60, %394 ], [ %60, %396 ]
  %404 = icmp eq i64 %64, %56
  br i1 %404, label %405, label %57, !llvm.loop !87

405:                                              ; preds = %399, %3
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #5

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, argmem: write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!7, !7, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !11}
!13 = !{!14, !14, i64 0}
!14 = !{!"short", !7, i64 0}
!15 = distinct !{!15, !11}
!16 = distinct !{!16, !11}
!17 = distinct !{!17, !11}
!18 = distinct !{!18, !11}
!19 = distinct !{!19, !11}
!20 = distinct !{!20, !11}
!21 = distinct !{!21, !11}
!22 = distinct !{!22, !11}
!23 = distinct !{!23, !11}
!24 = !{!25, !27, i64 5896}
!25 = !{!"internal_state", !26, i64 0, !6, i64 8, !26, i64 16, !26, i64 24, !6, i64 32, !6, i64 36, !7, i64 40, !7, i64 41, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !26, i64 64, !27, i64 72, !26, i64 80, !26, i64 88, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !27, i64 120, !6, i64 128, !6, i64 132, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !7, i64 180, !7, i64 2472, !7, i64 2716, !28, i64 2872, !28, i64 2896, !28, i64 2920, !7, i64 2944, !7, i64 2976, !6, i64 5268, !6, i64 5272, !7, i64 5276, !26, i64 5856, !6, i64 5864, !6, i64 5868, !26, i64 5872, !27, i64 5880, !27, i64 5888, !27, i64 5896, !6, i64 5904, !6, i64 5908, !14, i64 5912, !6, i64 5916}
!26 = !{!"any pointer", !7, i64 0}
!27 = !{!"long", !7, i64 0}
!28 = !{!"tree_desc_s", !26, i64 0, !6, i64 8, !26, i64 16}
!29 = !{!25, !26, i64 2872}
!30 = !{!25, !26, i64 2888}
!31 = !{!25, !26, i64 2896}
!32 = !{!25, !26, i64 2912}
!33 = !{!25, !26, i64 2920}
!34 = !{!25, !26, i64 2936}
!35 = !{!25, !14, i64 5912}
!36 = !{!25, !6, i64 5916}
!37 = !{!25, !6, i64 5908}
!38 = distinct !{!38, !11}
!39 = distinct !{!39, !11}
!40 = distinct !{!40, !11}
!41 = !{!25, !6, i64 5904}
!42 = !{!25, !6, i64 5868}
!43 = !{!25, !26, i64 16}
!44 = !{!25, !6, i64 32}
!45 = distinct !{!45, !11}
!46 = !{!25, !6, i64 164}
!47 = !{!25, !7, i64 40}
!48 = distinct !{!48, !11}
!49 = distinct !{!49, !11}
!50 = distinct !{!50, !11}
!51 = !{!25, !6, i64 2880}
!52 = distinct !{!52, !11}
!53 = !{!25, !6, i64 2904}
!54 = distinct !{!54, !11}
!55 = !{!25, !27, i64 5880}
!56 = !{!25, !27, i64 5888}
!57 = distinct !{!57, !11}
!58 = !{!28, !26, i64 0}
!59 = !{!28, !26, i64 16}
!60 = !{!61, !26, i64 0}
!61 = !{!"static_tree_desc_s", !26, i64 0, !26, i64 8, !6, i64 16, !6, i64 20, !6, i64 24}
!62 = !{!61, !6, i64 20}
!63 = !{!25, !6, i64 5268}
!64 = !{!25, !6, i64 5272}
!65 = distinct !{!65, !11}
!66 = distinct !{!66, !11}
!67 = !{!28, !6, i64 8}
!68 = distinct !{!68, !11}
!69 = distinct !{!69, !11}
!70 = distinct !{!70, !11}
!71 = !{!61, !26, i64 8}
!72 = !{!61, !6, i64 16}
!73 = !{!61, !6, i64 24}
!74 = distinct !{!74, !11}
!75 = distinct !{!75, !11}
!76 = distinct !{!76, !11}
!77 = distinct !{!77, !11}
!78 = distinct !{!78, !11}
!79 = !{!25, !26, i64 5872}
!80 = !{!25, !26, i64 5856}
!81 = distinct !{!81, !11}
!82 = !{!25, !6, i64 140}
!83 = !{!25, !27, i64 120}
!84 = distinct !{!84, !11}
!85 = !{!25, !6, i64 5864}
!86 = distinct !{!86, !11}
!87 = distinct !{!87, !11}
