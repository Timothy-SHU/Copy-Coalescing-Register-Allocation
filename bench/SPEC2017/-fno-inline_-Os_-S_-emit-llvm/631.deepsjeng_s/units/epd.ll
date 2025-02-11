; ModuleID = 'epd.cpp'
source_filename = "epd.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.state_t = type { i32, [64 x i32], i64, i64, i64, [13 x i64], i32, i32, [13 x i32], i32, i32, i32, i32, i32, i32, i32, i64, i64, [64 x %struct.move_x], [64 x i32], [64 x i32], [64 x %struct.anon], i64, i64, i32, [64 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1000 x i64] }
%struct.move_x = type { i32, i32, i32, i32, i64, i64 }
%struct.anon = type { i32, i32, i32, i32 }
%struct.gamestate_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1000 x i32], [1000 x %struct.move_x], i64, i32, i32, i32, i32, i32, i32, i32, i32 }

@_ZZ14setup_epd_lineP11gamestate_tP7state_tPKcE11rankoffsets = internal unnamed_addr constant [8 x i32] [i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56], align 16
@uci_chess960_mode = external local_unnamed_addr global i32, align 4
@uci_mode = external local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [4 x i8] c"bm \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"am \00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"No best-move or avoid-move found!\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Workload not found\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"Analyzing %d plies...\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"\0ANodes: %llu (%0.2f%% qnodes)\0A\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@_ZZ15position_to_fenP7state_tPcE5xlate = internal unnamed_addr constant [14 x i8] c"FPpNnKkRrQqBbE", align 1
@_ZZ15position_to_fenP7state_tPcE9str_empty = internal unnamed_addr constant [9 x i8] c" 12345678", align 1
@_ZZ15position_to_fenP7state_tPcE11rankoffsets = internal unnamed_addr constant [8 x i32] [i32 56, i32 48, i32 40, i32 32, i32 24, i32 16, i32 8, i32 0], align 16
@.str.11 = private unnamed_addr constant [5 x i8] c" %c \00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c" %c%c\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c" -\00", align 1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_Z14setup_epd_lineP11gamestate_tP7state_tPKc(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  tail call void @_Z9init_gameP11gamestate_tP7state_t(ptr noundef %0, ptr noundef %1) #8
  %4 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %4, i8 0, i64 256, i1 false)
  %5 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 9
  store i32 0, ptr %5, align 4, !tbaa !6
  %6 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 32
  %7 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 33
  %8 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 34
  %9 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 35
  store <4 x i32> <i32 56, i32 63, i32 0, i32 7>, ptr %6, align 4, !tbaa !12
  br label %10

10:                                               ; preds = %10, %3
  %11 = phi i64 [ %15, %10 ], [ 0, %3 ]
  %12 = getelementptr inbounds i8, ptr %2, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !13
  %14 = icmp eq i8 %13, 32
  %15 = add nuw i64 %11, 1
  br i1 %14, label %10, label %16, !llvm.loop !14

16:                                               ; preds = %10
  %17 = trunc i64 %11 to i32
  %18 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 15
  %19 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 10
  %20 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 13
  %21 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 12
  %22 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 11
  %23 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 30
  %24 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 31
  br label %25

25:                                               ; preds = %221, %16
  %26 = phi i32 [ 0, %16 ], [ %214, %221 ]
  %27 = phi i32 [ 0, %16 ], [ %215, %221 ]
  %28 = phi i32 [ 0, %16 ], [ %216, %221 ]
  %29 = phi i32 [ %17, %16 ], [ %222, %221 ]
  %30 = phi i32 [ 0, %16 ], [ %46, %221 ]
  %31 = phi i32 [ 0, %16 ], [ %218, %221 ]
  %32 = sext i32 %29 to i64
  %33 = getelementptr inbounds i8, ptr %2, i64 %32
  %34 = load i8, ptr %33, align 1, !tbaa !13
  switch i8 %34, label %44 [
    i8 10, label %225
    i8 0, label %225
    i8 32, label %35
  ]

35:                                               ; preds = %25, %35
  %36 = phi i64 [ %37, %35 ], [ %32, %25 ]
  %37 = add i64 %36, 1
  %38 = getelementptr inbounds i8, ptr %2, i64 %37
  %39 = load i8, ptr %38, align 1, !tbaa !13
  %40 = icmp eq i8 %39, 32
  br i1 %40, label %35, label %41, !llvm.loop !16

41:                                               ; preds = %35
  %42 = add nsw i32 %30, 1
  %43 = trunc i64 %37 to i32
  br label %44

44:                                               ; preds = %41, %25
  %45 = phi i32 [ %29, %25 ], [ %43, %41 ]
  %46 = phi i32 [ %30, %25 ], [ %42, %41 ]
  %47 = sext i32 %45 to i64
  switch i32 %46, label %212 [
    i32 0, label %48
    i32 1, label %132
    i32 2, label %138
    i32 3, label %187
    i32 4, label %202
  ]

48:                                               ; preds = %44
  %49 = getelementptr inbounds i8, ptr %2, i64 %47
  %50 = load i8, ptr %49, align 1, !tbaa !13
  %51 = sext i8 %50 to i32
  %52 = add nsw i32 %51, -48
  %53 = icmp ult i32 %52, 10
  br i1 %53, label %54, label %69

54:                                               ; preds = %48
  %55 = tail call i32 @atoi(ptr nocapture noundef nonnull %49) #9
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %212

57:                                               ; preds = %54
  %58 = sext i32 %26 to i64
  %59 = sext i32 %27 to i64
  br label %60

60:                                               ; preds = %57, %60
  %61 = phi i64 [ %58, %57 ], [ %65, %60 ]
  %62 = phi i32 [ 0, %57 ], [ %66, %60 ]
  %63 = add nsw i64 %61, %59
  %64 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 1, i64 %63
  store i32 13, ptr %64, align 4, !tbaa !12
  %65 = add nsw i64 %61, 1
  %66 = add nuw nsw i32 %62, 1
  %67 = tail call i32 @atoi(ptr nocapture noundef nonnull %49) #9
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %60, label %210, !llvm.loop !17

69:                                               ; preds = %48
  %70 = icmp eq i8 %50, 47
  br i1 %70, label %71, label %76

71:                                               ; preds = %69
  %72 = add nsw i32 %28, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [8 x i32], ptr @_ZZ14setup_epd_lineP11gamestate_tP7state_tPKcE11rankoffsets, i64 0, i64 %73
  %75 = load i32, ptr %74, align 4, !tbaa !12
  br label %212

76:                                               ; preds = %69
  %77 = tail call i32 @isalpha(i32 noundef %51) #9
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %212, label %79

79:                                               ; preds = %76
  switch i8 %50, label %130 [
    i8 112, label %80
    i8 80, label %84
    i8 110, label %88
    i8 78, label %92
    i8 98, label %96
    i8 66, label %100
    i8 114, label %104
    i8 82, label %108
    i8 113, label %112
    i8 81, label %116
    i8 107, label %120
    i8 75, label %125
  ]

80:                                               ; preds = %79
  %81 = add nsw i32 %27, %26
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 1, i64 %82
  store i32 2, ptr %83, align 4, !tbaa !12
  br label %130

84:                                               ; preds = %79
  %85 = add nsw i32 %27, %26
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 1, i64 %86
  store i32 1, ptr %87, align 4, !tbaa !12
  br label %130

88:                                               ; preds = %79
  %89 = add nsw i32 %27, %26
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 1, i64 %90
  store i32 4, ptr %91, align 4, !tbaa !12
  br label %130

92:                                               ; preds = %79
  %93 = add nsw i32 %27, %26
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 1, i64 %94
  store i32 3, ptr %95, align 4, !tbaa !12
  br label %130

96:                                               ; preds = %79
  %97 = add nsw i32 %27, %26
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 1, i64 %98
  store i32 12, ptr %99, align 4, !tbaa !12
  br label %130

100:                                              ; preds = %79
  %101 = add nsw i32 %27, %26
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 1, i64 %102
  store i32 11, ptr %103, align 4, !tbaa !12
  br label %130

104:                                              ; preds = %79
  %105 = add nsw i32 %27, %26
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 1, i64 %106
  store i32 8, ptr %107, align 4, !tbaa !12
  br label %130

108:                                              ; preds = %79
  %109 = add nsw i32 %27, %26
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 1, i64 %110
  store i32 7, ptr %111, align 4, !tbaa !12
  br label %130

112:                                              ; preds = %79
  %113 = add nsw i32 %27, %26
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 1, i64 %114
  store i32 10, ptr %115, align 4, !tbaa !12
  br label %130

116:                                              ; preds = %79
  %117 = add nsw i32 %27, %26
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 1, i64 %118
  store i32 9, ptr %119, align 4, !tbaa !12
  br label %130

120:                                              ; preds = %79
  %121 = add nsw i32 %27, %26
  store i32 %121, ptr %20, align 4, !tbaa !18
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 1, i64 %122
  store i32 6, ptr %123, align 4, !tbaa !12
  %124 = load i32, ptr %20, align 4, !tbaa !18
  store i32 %124, ptr %24, align 8, !tbaa !19
  br label %130

125:                                              ; preds = %79
  %126 = add nsw i32 %27, %26
  store i32 %126, ptr %21, align 8, !tbaa !20
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 1, i64 %127
  store i32 5, ptr %128, align 4, !tbaa !12
  %129 = load i32, ptr %21, align 8, !tbaa !20
  store i32 %129, ptr %23, align 4, !tbaa !21
  br label %130

130:                                              ; preds = %79, %125, %120, %116, %112, %108, %104, %100, %96, %92, %88, %84, %80
  %131 = add nsw i32 %26, 1
  br label %212

132:                                              ; preds = %44
  %133 = getelementptr inbounds i8, ptr %2, i64 %47
  %134 = load i8, ptr %133, align 1, !tbaa !13
  %135 = icmp eq i8 %134, 119
  br i1 %135, label %136, label %137

136:                                              ; preds = %132
  store i32 1, ptr %22, align 4, !tbaa !22
  br label %212

137:                                              ; preds = %132
  store i32 0, ptr %22, align 4, !tbaa !22
  br label %212

138:                                              ; preds = %44
  %139 = getelementptr inbounds i8, ptr %2, i64 %47
  %140 = load i8, ptr %139, align 1, !tbaa !13
  switch i8 %140, label %153 [
    i8 45, label %212
    i8 75, label %141
    i8 81, label %144
    i8 107, label %147
    i8 113, label %150
  ]

141:                                              ; preds = %138
  %142 = load i32, ptr %5, align 4, !tbaa !6
  %143 = or i32 %142, 2
  store i32 %143, ptr %5, align 4, !tbaa !6
  br label %212

144:                                              ; preds = %138
  %145 = load i32, ptr %5, align 4, !tbaa !6
  %146 = or i32 %145, 4
  store i32 %146, ptr %5, align 4, !tbaa !6
  br label %212

147:                                              ; preds = %138
  %148 = load i32, ptr %5, align 4, !tbaa !6
  %149 = or i32 %148, 8
  store i32 %149, ptr %5, align 4, !tbaa !6
  br label %212

150:                                              ; preds = %138
  %151 = load i32, ptr %5, align 4, !tbaa !6
  %152 = or i32 %151, 16
  store i32 %152, ptr %5, align 4, !tbaa !6
  br label %212

153:                                              ; preds = %138
  %154 = load i32, ptr @uci_chess960_mode, align 4, !tbaa !12
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %212, label %156

156:                                              ; preds = %153
  %157 = add i8 %140, -65
  %158 = icmp ult i8 %157, 8
  br i1 %158, label %159, label %172

159:                                              ; preds = %156
  %160 = zext nneg i8 %140 to i32
  %161 = add nsw i32 %160, -64
  %162 = add nsw i32 %160, -9
  %163 = load i32, ptr %21, align 8, !tbaa !20
  %164 = tail call noundef i32 @_Z4filei(i32 noundef %163) #8
  %165 = icmp slt i32 %161, %164
  br i1 %165, label %166, label %169

166:                                              ; preds = %159
  store i32 %162, ptr %6, align 4, !tbaa !23
  %167 = load i32, ptr %5, align 4, !tbaa !6
  %168 = or i32 %167, 4
  store i32 %168, ptr %5, align 4, !tbaa !6
  br label %212

169:                                              ; preds = %159
  store i32 %162, ptr %7, align 8, !tbaa !24
  %170 = load i32, ptr %5, align 4, !tbaa !6
  %171 = or i32 %170, 2
  store i32 %171, ptr %5, align 4, !tbaa !6
  br label %212

172:                                              ; preds = %156
  %173 = add i8 %140, -97
  %174 = icmp ult i8 %173, 8
  br i1 %174, label %175, label %212

175:                                              ; preds = %172
  %176 = zext nneg i8 %173 to i32
  %177 = add nuw nsw i32 %176, 1
  %178 = load i32, ptr %20, align 4, !tbaa !18
  %179 = tail call noundef i32 @_Z4filei(i32 noundef %178) #8
  %180 = icmp slt i32 %177, %179
  br i1 %180, label %181, label %184

181:                                              ; preds = %175
  store i32 %176, ptr %8, align 4, !tbaa !25
  %182 = load i32, ptr %5, align 4, !tbaa !6
  %183 = or i32 %182, 16
  store i32 %183, ptr %5, align 4, !tbaa !6
  br label %212

184:                                              ; preds = %175
  store i32 %176, ptr %9, align 8, !tbaa !26
  %185 = load i32, ptr %5, align 4, !tbaa !6
  %186 = or i32 %185, 8
  store i32 %186, ptr %5, align 4, !tbaa !6
  br label %212

187:                                              ; preds = %44
  %188 = getelementptr inbounds i8, ptr %2, i64 %47
  %189 = load i8, ptr %188, align 1, !tbaa !13
  %190 = icmp eq i8 %189, 45
  br i1 %190, label %191, label %192

191:                                              ; preds = %187
  store i32 0, ptr %19, align 8, !tbaa !27
  br label %212

192:                                              ; preds = %187
  %193 = sext i8 %189 to i32
  %194 = add nsw i32 %45, 1
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i8, ptr %2, i64 %195
  %197 = load i8, ptr %196, align 1, !tbaa !13
  %198 = sext i8 %197 to i32
  %199 = add nsw i32 %193, 351
  %200 = shl nsw i32 %198, 3
  %201 = sub nsw i32 %199, %200
  store i32 %201, ptr %19, align 8, !tbaa !27
  br label %212

202:                                              ; preds = %44
  %203 = getelementptr inbounds i8, ptr %2, i64 %47
  %204 = load i8, ptr %203, align 1, !tbaa !13
  %205 = sext i8 %204 to i32
  %206 = add nsw i32 %205, -48
  %207 = icmp ult i32 %206, 10
  br i1 %207, label %208, label %212

208:                                              ; preds = %202
  %209 = tail call i32 @atoi(ptr nocapture noundef nonnull %203) #9
  store i32 %209, ptr %18, align 4, !tbaa !28
  br label %212

210:                                              ; preds = %60
  %211 = trunc i64 %65 to i32
  br label %212

212:                                              ; preds = %44, %210, %54, %137, %136, %192, %191, %202, %208, %138, %141, %144, %147, %150, %169, %166, %181, %184, %172, %153, %76, %130, %71
  %213 = phi i64 [ %47, %210 ], [ %47, %54 ], [ %47, %137 ], [ %47, %136 ], [ %195, %192 ], [ %47, %191 ], [ %47, %202 ], [ %47, %208 ], [ %47, %138 ], [ %47, %141 ], [ %47, %144 ], [ %47, %147 ], [ %47, %150 ], [ %47, %169 ], [ %47, %166 ], [ %47, %181 ], [ %47, %184 ], [ %47, %172 ], [ %47, %153 ], [ %47, %76 ], [ %47, %130 ], [ %47, %71 ], [ %47, %44 ]
  %214 = phi i32 [ %211, %210 ], [ %26, %54 ], [ %26, %137 ], [ %26, %136 ], [ %26, %192 ], [ %26, %191 ], [ %26, %202 ], [ %26, %208 ], [ %26, %138 ], [ %26, %141 ], [ %26, %144 ], [ %26, %147 ], [ %26, %150 ], [ %26, %169 ], [ %26, %166 ], [ %26, %181 ], [ %26, %184 ], [ %26, %172 ], [ %26, %153 ], [ %26, %76 ], [ %131, %130 ], [ 0, %71 ], [ %26, %44 ]
  %215 = phi i32 [ %27, %210 ], [ %27, %54 ], [ %27, %137 ], [ %27, %136 ], [ %27, %192 ], [ %27, %191 ], [ %27, %202 ], [ %27, %208 ], [ %27, %138 ], [ %27, %141 ], [ %27, %144 ], [ %27, %147 ], [ %27, %150 ], [ %27, %169 ], [ %27, %166 ], [ %27, %181 ], [ %27, %184 ], [ %27, %172 ], [ %27, %153 ], [ %27, %76 ], [ %27, %130 ], [ %75, %71 ], [ %27, %44 ]
  %216 = phi i32 [ %28, %210 ], [ %28, %54 ], [ %28, %137 ], [ %28, %136 ], [ %28, %192 ], [ %28, %191 ], [ %28, %202 ], [ %28, %208 ], [ %28, %138 ], [ %28, %141 ], [ %28, %144 ], [ %28, %147 ], [ %28, %150 ], [ %28, %169 ], [ %28, %166 ], [ %28, %181 ], [ %28, %184 ], [ %28, %172 ], [ %28, %153 ], [ %28, %76 ], [ %28, %130 ], [ %72, %71 ], [ %28, %44 ]
  %217 = phi i32 [ %45, %210 ], [ %45, %54 ], [ %45, %137 ], [ %45, %136 ], [ %194, %192 ], [ %45, %191 ], [ %45, %202 ], [ %45, %208 ], [ %45, %138 ], [ %45, %141 ], [ %45, %144 ], [ %45, %147 ], [ %45, %150 ], [ %45, %169 ], [ %45, %166 ], [ %45, %181 ], [ %45, %184 ], [ %45, %172 ], [ %45, %153 ], [ %45, %76 ], [ %45, %130 ], [ %45, %71 ], [ %45, %44 ]
  %218 = phi i32 [ %31, %210 ], [ %31, %54 ], [ %31, %137 ], [ %31, %136 ], [ %31, %192 ], [ %31, %191 ], [ %31, %202 ], [ %31, %208 ], [ %31, %138 ], [ 1, %141 ], [ 1, %144 ], [ 1, %147 ], [ 1, %150 ], [ 1, %169 ], [ 1, %166 ], [ 1, %181 ], [ 1, %184 ], [ %31, %172 ], [ %31, %153 ], [ %31, %76 ], [ %31, %130 ], [ %31, %71 ], [ %31, %44 ]
  %219 = getelementptr inbounds i8, ptr %2, i64 %213
  %220 = load i8, ptr %219, align 1, !tbaa !13
  switch i8 %220, label %223 [
    i8 10, label %221
    i8 0, label %221
  ]

221:                                              ; preds = %212, %212, %223
  %222 = phi i32 [ %217, %212 ], [ %217, %212 ], [ %224, %223 ]
  br label %25, !llvm.loop !29

223:                                              ; preds = %212
  %224 = add nsw i32 %217, 1
  br label %221

225:                                              ; preds = %25, %25
  %226 = icmp ne i32 %31, 0
  %227 = load i32, ptr @uci_mode, align 4
  %228 = icmp ne i32 %227, 0
  %229 = select i1 %226, i1 true, i1 %228
  br i1 %229, label %273, label %230

230:                                              ; preds = %225
  %231 = load i32, ptr %4, align 4, !tbaa !12
  %232 = icmp eq i32 %231, 8
  br i1 %232, label %233, label %240

233:                                              ; preds = %230
  %234 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 1, i64 4
  %235 = load i32, ptr %234, align 4, !tbaa !12
  %236 = icmp eq i32 %235, 6
  br i1 %236, label %237, label %240

237:                                              ; preds = %233
  %238 = load i32, ptr %5, align 4, !tbaa !6
  %239 = or i32 %238, 16
  store i32 %239, ptr %5, align 4, !tbaa !6
  br label %240

240:                                              ; preds = %237, %233, %230
  %241 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 1, i64 7
  %242 = load i32, ptr %241, align 4, !tbaa !12
  %243 = icmp eq i32 %242, 8
  br i1 %243, label %244, label %251

244:                                              ; preds = %240
  %245 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 1, i64 4
  %246 = load i32, ptr %245, align 4, !tbaa !12
  %247 = icmp eq i32 %246, 6
  br i1 %247, label %248, label %251

248:                                              ; preds = %244
  %249 = load i32, ptr %5, align 4, !tbaa !6
  %250 = or i32 %249, 8
  store i32 %250, ptr %5, align 4, !tbaa !6
  br label %251

251:                                              ; preds = %248, %244, %240
  %252 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 1, i64 56
  %253 = load i32, ptr %252, align 4, !tbaa !12
  %254 = icmp eq i32 %253, 7
  br i1 %254, label %255, label %262

255:                                              ; preds = %251
  %256 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 1, i64 60
  %257 = load i32, ptr %256, align 4, !tbaa !12
  %258 = icmp eq i32 %257, 5
  br i1 %258, label %259, label %262

259:                                              ; preds = %255
  %260 = load i32, ptr %5, align 4, !tbaa !6
  %261 = or i32 %260, 4
  store i32 %261, ptr %5, align 4, !tbaa !6
  br label %262

262:                                              ; preds = %259, %255, %251
  %263 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 1, i64 63
  %264 = load i32, ptr %263, align 4, !tbaa !12
  %265 = icmp eq i32 %264, 7
  br i1 %265, label %266, label %273

266:                                              ; preds = %262
  %267 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 1, i64 60
  %268 = load i32, ptr %267, align 4, !tbaa !12
  %269 = icmp eq i32 %268, 5
  br i1 %269, label %270, label %273

270:                                              ; preds = %266
  %271 = load i32, ptr %5, align 4, !tbaa !6
  %272 = or i32 %271, 2
  store i32 %272, ptr %5, align 4, !tbaa !6
  br label %273

273:                                              ; preds = %262, %266, %270, %225
  tail call void @_Z16SetupCastleMasksP7state_t(ptr noundef %1) #8
  tail call void @_Z18reset_piece_squareP7state_t(ptr noundef %1) #8
  tail call void @_Z15initialize_hashP7state_t(ptr noundef %1) #8
  %274 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 16
  %275 = load i64, ptr %274, align 8, !tbaa !30
  %276 = getelementptr inbounds %struct.gamestate_t, ptr %0, i64 0, i32 15
  %277 = load i32, ptr %276, align 4, !tbaa !31
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 36, i64 %278
  store i64 %275, ptr %279, align 8, !tbaa !33
  %280 = load i32, ptr %22, align 4, !tbaa !22
  %281 = getelementptr inbounds %struct.gamestate_t, ptr %0, i64 0, i32 2
  store i32 %280, ptr %281, align 8, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @_Z9init_gameP11gamestate_tP7state_t(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @atoi(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @isalpha(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare noundef i32 @_Z4filei(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_Z16SetupCastleMasksP7state_t(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_Z18reset_piece_squareP7state_t(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_Z15initialize_hashP7state_t(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_Z14check_solutionP7state_tPci(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [10 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %4) #10
  call void @_Z11comp_to_sanP7state_tiPc(ptr noundef %0, i32 noundef %2, ptr noundef nonnull %4) #8
  %5 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #9
  %6 = call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) @.str) #9
  %7 = icmp eq ptr %6, null
  br i1 %7, label %20, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds i8, ptr %6, i64 3
  br label %10

10:                                               ; preds = %10, %8
  %11 = phi ptr [ %9, %8 ], [ %14, %10 ]
  %12 = load i8, ptr %11, align 1, !tbaa !13
  %13 = icmp eq i8 %12, 32
  %14 = getelementptr inbounds i8, ptr %11, i64 1
  br i1 %13, label %10, label %15, !llvm.loop !35

15:                                               ; preds = %10
  %16 = shl i64 %5, 32
  %17 = ashr exact i64 %16, 32
  %18 = call i32 @strncmp(ptr noundef nonnull %11, ptr noundef nonnull %4, i64 noundef %17) #9
  %19 = icmp eq i32 %18, 0
  br label %36

20:                                               ; preds = %3
  %21 = call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) @.str.1) #9
  %22 = icmp eq ptr %21, null
  br i1 %22, label %35, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds i8, ptr %21, i64 3
  br label %25

25:                                               ; preds = %25, %23
  %26 = phi ptr [ %24, %23 ], [ %29, %25 ]
  %27 = load i8, ptr %26, align 1, !tbaa !13
  %28 = icmp eq i8 %27, 32
  %29 = getelementptr inbounds i8, ptr %26, i64 1
  br i1 %28, label %25, label %30, !llvm.loop !36

30:                                               ; preds = %25
  %31 = shl i64 %5, 32
  %32 = ashr exact i64 %31, 32
  %33 = call i32 @strncmp(ptr noundef nonnull %26, ptr noundef nonnull %4, i64 noundef %32) #9
  %34 = icmp ne i32 %33, 0
  br label %36

35:                                               ; preds = %20
  call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.2) #8
  br label %36

36:                                               ; preds = %30, %15, %35
  %37 = phi i1 [ false, %35 ], [ %19, %15 ], [ %34, %30 ]
  %38 = zext i1 %37 to i32
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %4) #10
  ret i32 %38
}

; Function Attrs: optsize
declare void @_Z11comp_to_sanP7state_tiPc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare noundef ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @_Z8myprintfPKcz(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_Z17run_epd_testsuiteP11gamestate_tP7state_tPKc(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca [512 x i8], align 16
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  %6 = tail call noalias ptr @fopen(ptr noundef %2, ptr noundef nonnull @.str.3) #8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %3
  %9 = call ptr @fgets(ptr noundef nonnull %4, i32 noundef 512, ptr noundef nonnull %6) #8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %32, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.gamestate_t, ptr %0, i64 0, i32 13
  %13 = getelementptr inbounds %struct.gamestate_t, ptr %0, i64 0, i32 14
  %14 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 22
  %15 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 23
  br label %17

16:                                               ; preds = %3
  tail call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.4) #8
  br label %34

17:                                               ; preds = %11, %17
  call void @_Z8clear_ttv() #8
  call void @_Z14setup_epd_lineP11gamestate_tP7state_tPKc(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4) #8
  %18 = call ptr @fgets(ptr noundef nonnull %4, i32 noundef 512, ptr noundef nonnull %6) #8
  %19 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %4, ptr noundef nonnull @.str.5, ptr noundef nonnull %5) #11
  %20 = load i32, ptr %5, align 4, !tbaa !12
  call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.6, i32 noundef %20) #8
  call void @_Z13display_boardP7state_ti(ptr noundef %1, i32 noundef 1) #8
  store i32 99999999, ptr %12, align 4, !tbaa !37
  %21 = load i32, ptr %5, align 4, !tbaa !12
  store i32 %21, ptr %13, align 8, !tbaa !38
  %22 = call noundef i32 @_Z5thinkP11gamestate_tP7state_t(ptr noundef %0, ptr noundef %1) #8
  %23 = load i64, ptr %14, align 8, !tbaa !39
  %24 = load i64, ptr %15, align 8, !tbaa !40
  %25 = uitofp i64 %24 to float
  %26 = uitofp i64 %23 to float
  %27 = fdiv float %25, %26
  %28 = fmul float %27, 1.000000e+02
  %29 = fpext float %28 to double
  call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.7, i64 noundef %23, double noundef %29) #8
  call void @_Z14dumpsearchstatP7state_t(ptr noundef %1) #8
  call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.8) #8
  %30 = call ptr @fgets(ptr noundef nonnull %4, i32 noundef 512, ptr noundef nonnull %6) #8
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %17, !llvm.loop !41

32:                                               ; preds = %17, %8
  %33 = call i32 @fclose(ptr noundef nonnull %6) #8
  br label %34

34:                                               ; preds = %32, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %4) #10
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: nofree nounwind optsize
declare noundef ptr @fgets(ptr noundef, i32 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @_Z8clear_ttv() local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: optsize
declare void @_Z13display_boardP7state_ti(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef i32 @_Z5thinkP11gamestate_tP7state_t(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_Z14dumpsearchstatP7state_t(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_Z15position_to_fenP7state_tPc(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1
  br label %4

4:                                                ; preds = %2, %48
  %5 = phi i64 [ 8, %2 ], [ %7, %48 ]
  %6 = phi ptr [ %1, %2 ], [ %49, %48 ]
  %7 = add nsw i64 %5, -1
  %8 = getelementptr inbounds [8 x i32], ptr @_ZZ15position_to_fenP7state_tPcE11rankoffsets, i64 0, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !12
  %10 = sext i32 %9 to i64
  %11 = getelementptr i32, ptr %3, i64 %10
  br label %12

12:                                               ; preds = %32, %4
  %13 = phi i64 [ %38, %32 ], [ 0, %4 ]
  %14 = phi ptr [ %37, %32 ], [ %6, %4 ]
  br label %15

15:                                               ; preds = %12, %28
  %16 = phi i64 [ %30, %28 ], [ %13, %12 ]
  %17 = phi i32 [ %29, %28 ], [ 0, %12 ]
  %18 = getelementptr i32, ptr %11, i64 %16
  %19 = load i32, ptr %18, align 4, !tbaa !12
  %20 = icmp eq i32 %19, 13
  br i1 %20, label %28, label %21

21:                                               ; preds = %15
  %22 = icmp eq i32 %17, 0
  br i1 %22, label %32, label %23

23:                                               ; preds = %21
  %24 = zext nneg i32 %17 to i64
  %25 = getelementptr inbounds [9 x i8], ptr @_ZZ15position_to_fenP7state_tPcE9str_empty, i64 0, i64 %24
  %26 = load i8, ptr %25, align 1, !tbaa !13
  store i8 %26, ptr %14, align 1
  %27 = getelementptr inbounds i8, ptr %14, i64 1
  store i8 0, ptr %27, align 1
  br label %32

28:                                               ; preds = %15
  %29 = add nuw nsw i32 %17, 1
  %30 = add nuw nsw i64 %16, 1
  %31 = icmp eq i64 %30, 8
  br i1 %31, label %40, label %15, !llvm.loop !42

32:                                               ; preds = %21, %23
  %33 = phi ptr [ %27, %23 ], [ %14, %21 ]
  %34 = sext i32 %19 to i64
  %35 = getelementptr inbounds [14 x i8], ptr @_ZZ15position_to_fenP7state_tPcE5xlate, i64 0, i64 %34
  %36 = load i8, ptr %35, align 1, !tbaa !13
  store i8 %36, ptr %33, align 1
  %37 = getelementptr inbounds i8, ptr %33, i64 1
  store i8 0, ptr %37, align 1
  %38 = add nuw nsw i64 %16, 1
  %39 = icmp eq i64 %38, 8
  br i1 %39, label %45, label %12, !llvm.loop !42

40:                                               ; preds = %28
  %41 = zext nneg i32 %29 to i64
  %42 = getelementptr inbounds [9 x i8], ptr @_ZZ15position_to_fenP7state_tPcE9str_empty, i64 0, i64 %41
  %43 = load i8, ptr %42, align 1, !tbaa !13
  store i8 %43, ptr %14, align 1
  %44 = getelementptr inbounds i8, ptr %14, i64 1
  store i8 0, ptr %44, align 1
  br label %45

45:                                               ; preds = %32, %40
  %46 = phi ptr [ %44, %40 ], [ %37, %32 ]
  %47 = icmp eq i64 %5, 1
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  store i16 47, ptr %46, align 1
  %49 = getelementptr inbounds i8, ptr %46, i64 1
  %50 = icmp eq i64 %5, 0
  br i1 %50, label %51, label %4, !llvm.loop !43

51:                                               ; preds = %45, %48
  %52 = phi ptr [ %49, %48 ], [ %46, %45 ]
  %53 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 11
  %54 = load i32, ptr %53, align 4, !tbaa !22
  %55 = icmp eq i32 %54, 0
  %56 = select i1 %55, i32 98, i32 119
  %57 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %52, ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %56) #11
  %58 = getelementptr inbounds i8, ptr %52, i64 3
  %59 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 9
  %60 = load i32, ptr %59, align 4, !tbaa !6
  %61 = and i32 %60, 2
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %51
  store i16 75, ptr %58, align 1
  %64 = getelementptr inbounds i8, ptr %52, i64 4
  %65 = load i32, ptr %59, align 4, !tbaa !6
  br label %66

66:                                               ; preds = %63, %51
  %67 = phi i32 [ %65, %63 ], [ %60, %51 ]
  %68 = phi i32 [ 1, %63 ], [ 0, %51 ]
  %69 = phi ptr [ %64, %63 ], [ %58, %51 ]
  %70 = and i32 %67, 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %66
  store i16 81, ptr %69, align 1
  %73 = getelementptr inbounds i8, ptr %69, i64 1
  %74 = load i32, ptr %59, align 4, !tbaa !6
  br label %75

75:                                               ; preds = %72, %66
  %76 = phi i32 [ %74, %72 ], [ %67, %66 ]
  %77 = phi i32 [ 1, %72 ], [ %68, %66 ]
  %78 = phi ptr [ %73, %72 ], [ %69, %66 ]
  %79 = and i32 %76, 8
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %75
  %82 = and i32 %76, 16
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %92, label %89

84:                                               ; preds = %75
  store i16 107, ptr %78, align 1
  %85 = getelementptr inbounds i8, ptr %78, i64 1
  %86 = load i32, ptr %59, align 4, !tbaa !6
  %87 = and i32 %86, 16
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %96, label %89

89:                                               ; preds = %84, %81
  %90 = phi ptr [ %85, %84 ], [ %78, %81 ]
  store i16 113, ptr %90, align 1
  %91 = getelementptr inbounds i8, ptr %90, i64 1
  br label %96

92:                                               ; preds = %81
  %93 = icmp eq i32 %77, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %92
  store i16 45, ptr %78, align 1
  %95 = getelementptr inbounds i8, ptr %78, i64 1
  br label %96

96:                                               ; preds = %84, %89, %94, %92
  %97 = phi ptr [ %78, %92 ], [ %95, %94 ], [ %91, %89 ], [ %85, %84 ]
  %98 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 10
  %99 = load i32, ptr %98, align 8, !tbaa !27
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %108, label %101

101:                                              ; preds = %96
  %102 = tail call noundef i32 @_Z4filei(i32 noundef %99) #8
  %103 = add nsw i32 %102, 96
  %104 = load i32, ptr %98, align 8, !tbaa !27
  %105 = tail call noundef i32 @_Z4ranki(i32 noundef %104) #8
  %106 = add nsw i32 %105, 48
  %107 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %97, ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %103, i32 noundef %106) #11
  br label %109

108:                                              ; preds = %96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %97, ptr noundef nonnull align 1 dereferenceable(3) @.str.18, i64 3, i1 false)
  br label %109

109:                                              ; preds = %108, %101
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: optsize
declare noundef i32 @_Z4ranki(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { optsize }
attributes #9 = { nounwind optsize willreturn memory(read) }
attributes #10 = { nounwind }
attributes #11 = { nounwind optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !8, i64 452}
!7 = !{!"_ZTS7state_t", !8, i64 0, !9, i64 4, !11, i64 264, !11, i64 272, !11, i64 280, !9, i64 288, !8, i64 392, !8, i64 396, !9, i64 400, !8, i64 452, !8, i64 456, !8, i64 460, !8, i64 464, !8, i64 468, !8, i64 472, !8, i64 476, !11, i64 480, !11, i64 488, !9, i64 496, !9, i64 2544, !9, i64 2800, !9, i64 3056, !11, i64 4080, !11, i64 4088, !8, i64 4096, !9, i64 4100, !8, i64 4356, !8, i64 4360, !8, i64 4364, !8, i64 4368, !8, i64 4372, !8, i64 4376, !8, i64 4380, !8, i64 4384, !8, i64 4388, !8, i64 4392, !9, i64 4400}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!"long long", !9, i64 0}
!12 = !{!8, !8, i64 0}
!13 = !{!9, !9, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = distinct !{!16, !15}
!17 = distinct !{!17, !15}
!18 = !{!7, !8, i64 468}
!19 = !{!7, !8, i64 4376}
!20 = !{!7, !8, i64 464}
!21 = !{!7, !8, i64 4372}
!22 = !{!7, !8, i64 460}
!23 = !{!7, !8, i64 4380}
!24 = !{!7, !8, i64 4384}
!25 = !{!7, !8, i64 4388}
!26 = !{!7, !8, i64 4392}
!27 = !{!7, !8, i64 456}
!28 = !{!7, !8, i64 476}
!29 = distinct !{!29, !15}
!30 = !{!7, !11, i64 480}
!31 = !{!32, !8, i64 60}
!32 = !{!"_ZTS11gamestate_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !9, i64 64, !9, i64 4064, !11, i64 36064, !8, i64 36072, !8, i64 36076, !8, i64 36080, !8, i64 36084, !8, i64 36088, !8, i64 36092, !8, i64 36096, !8, i64 36100}
!33 = !{!11, !11, i64 0}
!34 = !{!32, !8, i64 8}
!35 = distinct !{!35, !15}
!36 = distinct !{!36, !15}
!37 = !{!32, !8, i64 52}
!38 = !{!32, !8, i64 56}
!39 = !{!7, !11, i64 4080}
!40 = !{!7, !11, i64 4088}
!41 = distinct !{!41, !15}
!42 = distinct !{!42, !15}
!43 = distinct !{!43, !15}
