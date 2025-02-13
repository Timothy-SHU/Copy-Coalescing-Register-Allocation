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
define dso_local void @_Z14setup_epd_lineP11gamestate_tP7state_tPKc(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 !prof !53 {
  tail call void @_Z9init_gameP11gamestate_tP7state_t(ptr noundef %0, ptr noundef %1) #8
  %4 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %4, i8 0, i64 256, i1 false)
  %5 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 9
  store i32 0, ptr %5, align 4, !tbaa !54
  %6 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 32
  %7 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 33
  %8 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 34
  %9 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 35
  store <4 x i32> <i32 56, i32 63, i32 0, i32 7>, ptr %6, align 4, !tbaa !60
  br label %10

10:                                               ; preds = %10, %3
  %11 = phi i64 [ %15, %10 ], [ 0, %3 ]
  %12 = getelementptr inbounds i8, ptr %2, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !61
  %14 = icmp eq i8 %13, 32
  %15 = add nuw i64 %11, 1
  br i1 %14, label %10, label %16, !prof !62, !llvm.loop !63

16:                                               ; preds = %10
  %17 = trunc i64 %11 to i32
  %18 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 11
  br label %19

19:                                               ; preds = %223, %16
  %20 = phi i32 [ 0, %16 ], [ %216, %223 ]
  %21 = phi i32 [ 0, %16 ], [ %217, %223 ]
  %22 = phi i32 [ 0, %16 ], [ %218, %223 ]
  %23 = phi i32 [ %17, %16 ], [ %224, %223 ]
  %24 = phi i32 [ 0, %16 ], [ %40, %223 ]
  %25 = phi i32 [ 0, %16 ], [ %220, %223 ]
  %26 = sext i32 %23 to i64
  %27 = getelementptr inbounds i8, ptr %2, i64 %26
  %28 = load i8, ptr %27, align 1, !tbaa !61
  switch i8 %28, label %38 [
    i8 10, label %227
    i8 0, label %227
    i8 32, label %29
  ], !prof !65

29:                                               ; preds = %19, %29
  %30 = phi i64 [ %31, %29 ], [ %26, %19 ]
  %31 = add i64 %30, 1
  %32 = getelementptr inbounds i8, ptr %2, i64 %31
  %33 = load i8, ptr %32, align 1, !tbaa !61
  %34 = icmp eq i8 %33, 32
  br i1 %34, label %29, label %35, !prof !66, !llvm.loop !67

35:                                               ; preds = %29
  %36 = add nsw i32 %24, 1
  %37 = trunc i64 %31 to i32
  br label %38

38:                                               ; preds = %35, %19
  %39 = phi i32 [ %23, %19 ], [ %37, %35 ]
  %40 = phi i32 [ %24, %19 ], [ %36, %35 ]
  %41 = sext i32 %39 to i64
  switch i32 %40, label %214 [
    i32 0, label %42
    i32 1, label %130
    i32 2, label %136
    i32 3, label %187
    i32 4, label %203
  ], !prof !68

42:                                               ; preds = %38
  %43 = getelementptr inbounds i8, ptr %2, i64 %41
  %44 = load i8, ptr %43, align 1, !tbaa !61
  %45 = sext i8 %44 to i32
  %46 = add nsw i32 %45, -48
  %47 = icmp ult i32 %46, 10
  br i1 %47, label %48, label %63, !prof !69

48:                                               ; preds = %42
  %49 = tail call i32 @atoi(ptr nocapture noundef nonnull %43) #9
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %214, !prof !70

51:                                               ; preds = %48
  %52 = sext i32 %20 to i64
  %53 = sext i32 %21 to i64
  br label %54

54:                                               ; preds = %51, %54
  %55 = phi i64 [ %52, %51 ], [ %59, %54 ]
  %56 = phi i32 [ 0, %51 ], [ %60, %54 ]
  %57 = add nsw i64 %55, %53
  %58 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 1, i64 %57
  store i32 13, ptr %58, align 4, !tbaa !60
  %59 = add nsw i64 %55, 1
  %60 = add nuw nsw i32 %56, 1
  %61 = tail call i32 @atoi(ptr nocapture noundef nonnull %43) #9
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %54, label %212, !prof !71, !llvm.loop !72

63:                                               ; preds = %42
  %64 = icmp eq i8 %44, 47
  br i1 %64, label %65, label %70, !prof !73

65:                                               ; preds = %63
  %66 = add nsw i32 %22, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [8 x i32], ptr @_ZZ14setup_epd_lineP11gamestate_tP7state_tPKcE11rankoffsets, i64 0, i64 %67
  %69 = load i32, ptr %68, align 4, !tbaa !60
  br label %214

70:                                               ; preds = %63
  %71 = tail call i32 @isalpha(i32 noundef %45) #9
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %214, label %73, !prof !74

73:                                               ; preds = %70
  switch i8 %44, label %128 [
    i8 112, label %74
    i8 80, label %78
    i8 110, label %82
    i8 78, label %86
    i8 98, label %90
    i8 66, label %94
    i8 114, label %98
    i8 82, label %102
    i8 113, label %106
    i8 81, label %110
    i8 107, label %114
    i8 75, label %121
  ], !prof !75

74:                                               ; preds = %73
  %75 = add nsw i32 %21, %20
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 1, i64 %76
  store i32 2, ptr %77, align 4, !tbaa !60
  br label %128

78:                                               ; preds = %73
  %79 = add nsw i32 %21, %20
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 1, i64 %80
  store i32 1, ptr %81, align 4, !tbaa !60
  br label %128

82:                                               ; preds = %73
  %83 = add nsw i32 %21, %20
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 1, i64 %84
  store i32 4, ptr %85, align 4, !tbaa !60
  br label %128

86:                                               ; preds = %73
  %87 = add nsw i32 %21, %20
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 1, i64 %88
  store i32 3, ptr %89, align 4, !tbaa !60
  br label %128

90:                                               ; preds = %73
  %91 = add nsw i32 %21, %20
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 1, i64 %92
  store i32 12, ptr %93, align 4, !tbaa !60
  br label %128

94:                                               ; preds = %73
  %95 = add nsw i32 %21, %20
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 1, i64 %96
  store i32 11, ptr %97, align 4, !tbaa !60
  br label %128

98:                                               ; preds = %73
  %99 = add nsw i32 %21, %20
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 1, i64 %100
  store i32 8, ptr %101, align 4, !tbaa !60
  br label %128

102:                                              ; preds = %73
  %103 = add nsw i32 %21, %20
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 1, i64 %104
  store i32 7, ptr %105, align 4, !tbaa !60
  br label %128

106:                                              ; preds = %73
  %107 = add nsw i32 %21, %20
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 1, i64 %108
  store i32 10, ptr %109, align 4, !tbaa !60
  br label %128

110:                                              ; preds = %73
  %111 = add nsw i32 %21, %20
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 1, i64 %112
  store i32 9, ptr %113, align 4, !tbaa !60
  br label %128

114:                                              ; preds = %73
  %115 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 13
  %116 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 31
  %117 = add nsw i32 %21, %20
  store i32 %117, ptr %115, align 4, !tbaa !76
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 1, i64 %118
  store i32 6, ptr %119, align 4, !tbaa !60
  %120 = load i32, ptr %115, align 4, !tbaa !76
  store i32 %120, ptr %116, align 8, !tbaa !77
  br label %128

121:                                              ; preds = %73
  %122 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 12
  %123 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 30
  %124 = add nsw i32 %21, %20
  store i32 %124, ptr %122, align 8, !tbaa !78
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 1, i64 %125
  store i32 5, ptr %126, align 4, !tbaa !60
  %127 = load i32, ptr %122, align 8, !tbaa !78
  store i32 %127, ptr %123, align 4, !tbaa !79
  br label %128

128:                                              ; preds = %73, %121, %114, %110, %106, %102, %98, %94, %90, %86, %82, %78, %74
  %129 = add nsw i32 %20, 1
  br label %214

130:                                              ; preds = %38
  %131 = getelementptr inbounds i8, ptr %2, i64 %41
  %132 = load i8, ptr %131, align 1, !tbaa !61
  %133 = icmp eq i8 %132, 119
  br i1 %133, label %134, label %135, !prof !80

134:                                              ; preds = %130
  store i32 1, ptr %18, align 4, !tbaa !81
  br label %214

135:                                              ; preds = %130
  store i32 0, ptr %18, align 4, !tbaa !81
  br label %214

136:                                              ; preds = %38
  %137 = getelementptr inbounds i8, ptr %2, i64 %41
  %138 = load i8, ptr %137, align 1, !tbaa !61
  switch i8 %138, label %151 [
    i8 45, label %214
    i8 75, label %139
    i8 81, label %142
    i8 107, label %145
    i8 113, label %148
  ], !prof !82

139:                                              ; preds = %136
  %140 = load i32, ptr %5, align 4, !tbaa !54
  %141 = or i32 %140, 2
  store i32 %141, ptr %5, align 4, !tbaa !54
  br label %214

142:                                              ; preds = %136
  %143 = load i32, ptr %5, align 4, !tbaa !54
  %144 = or i32 %143, 4
  store i32 %144, ptr %5, align 4, !tbaa !54
  br label %214

145:                                              ; preds = %136
  %146 = load i32, ptr %5, align 4, !tbaa !54
  %147 = or i32 %146, 8
  store i32 %147, ptr %5, align 4, !tbaa !54
  br label %214

148:                                              ; preds = %136
  %149 = load i32, ptr %5, align 4, !tbaa !54
  %150 = or i32 %149, 16
  store i32 %150, ptr %5, align 4, !tbaa !54
  br label %214

151:                                              ; preds = %136
  %152 = load i32, ptr @uci_chess960_mode, align 4, !tbaa !60
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %214, label %154

154:                                              ; preds = %151
  %155 = add i8 %138, -65
  %156 = icmp ult i8 %155, 8
  br i1 %156, label %157, label %171

157:                                              ; preds = %154
  %158 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 12
  %159 = zext nneg i8 %138 to i32
  %160 = add nsw i32 %159, -64
  %161 = add nsw i32 %159, -9
  %162 = load i32, ptr %158, align 8, !tbaa !78
  %163 = tail call noundef i32 @_Z4filei(i32 noundef %162) #8
  %164 = icmp slt i32 %160, %163
  br i1 %164, label %165, label %168

165:                                              ; preds = %157
  store i32 %161, ptr %6, align 4, !tbaa !83
  %166 = load i32, ptr %5, align 4, !tbaa !54
  %167 = or i32 %166, 4
  store i32 %167, ptr %5, align 4, !tbaa !54
  br label %214

168:                                              ; preds = %157
  store i32 %161, ptr %7, align 8, !tbaa !84
  %169 = load i32, ptr %5, align 4, !tbaa !54
  %170 = or i32 %169, 2
  store i32 %170, ptr %5, align 4, !tbaa !54
  br label %214

171:                                              ; preds = %154
  %172 = add i8 %138, -97
  %173 = icmp ult i8 %172, 8
  br i1 %173, label %174, label %214

174:                                              ; preds = %171
  %175 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 13
  %176 = zext nneg i8 %172 to i32
  %177 = add nuw nsw i32 %176, 1
  %178 = load i32, ptr %175, align 4, !tbaa !76
  %179 = tail call noundef i32 @_Z4filei(i32 noundef %178) #8
  %180 = icmp slt i32 %177, %179
  br i1 %180, label %181, label %184

181:                                              ; preds = %174
  store i32 %176, ptr %8, align 4, !tbaa !85
  %182 = load i32, ptr %5, align 4, !tbaa !54
  %183 = or i32 %182, 16
  store i32 %183, ptr %5, align 4, !tbaa !54
  br label %214

184:                                              ; preds = %174
  store i32 %176, ptr %9, align 8, !tbaa !86
  %185 = load i32, ptr %5, align 4, !tbaa !54
  %186 = or i32 %185, 8
  store i32 %186, ptr %5, align 4, !tbaa !54
  br label %214

187:                                              ; preds = %38
  %188 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 10
  %189 = getelementptr inbounds i8, ptr %2, i64 %41
  %190 = load i8, ptr %189, align 1, !tbaa !61
  %191 = icmp eq i8 %190, 45
  br i1 %191, label %192, label %193, !prof !87

192:                                              ; preds = %187
  store i32 0, ptr %188, align 8, !tbaa !88
  br label %214

193:                                              ; preds = %187
  %194 = sext i8 %190 to i32
  %195 = add nsw i32 %39, 1
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i8, ptr %2, i64 %196
  %198 = load i8, ptr %197, align 1, !tbaa !61
  %199 = sext i8 %198 to i32
  %200 = add nsw i32 %194, 351
  %201 = shl nsw i32 %199, 3
  %202 = sub nsw i32 %200, %201
  store i32 %202, ptr %188, align 8, !tbaa !88
  br label %214

203:                                              ; preds = %38
  %204 = getelementptr inbounds i8, ptr %2, i64 %41
  %205 = load i8, ptr %204, align 1, !tbaa !61
  %206 = sext i8 %205 to i32
  %207 = add nsw i32 %206, -48
  %208 = icmp ult i32 %207, 10
  br i1 %208, label %209, label %214, !prof !89

209:                                              ; preds = %203
  %210 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 15
  %211 = tail call i32 @atoi(ptr nocapture noundef nonnull %204) #9
  store i32 %211, ptr %210, align 4, !tbaa !90
  br label %214

212:                                              ; preds = %54
  %213 = trunc i64 %59 to i32
  br label %214

214:                                              ; preds = %38, %212, %48, %135, %134, %193, %192, %203, %209, %136, %139, %142, %145, %148, %168, %165, %181, %184, %171, %151, %70, %128, %65
  %215 = phi i64 [ %41, %212 ], [ %41, %48 ], [ %41, %135 ], [ %41, %134 ], [ %196, %193 ], [ %41, %192 ], [ %41, %203 ], [ %41, %209 ], [ %41, %136 ], [ %41, %139 ], [ %41, %142 ], [ %41, %145 ], [ %41, %148 ], [ %41, %168 ], [ %41, %165 ], [ %41, %181 ], [ %41, %184 ], [ %41, %171 ], [ %41, %151 ], [ %41, %70 ], [ %41, %128 ], [ %41, %65 ], [ %41, %38 ]
  %216 = phi i32 [ %213, %212 ], [ %20, %48 ], [ %20, %135 ], [ %20, %134 ], [ %20, %193 ], [ %20, %192 ], [ %20, %203 ], [ %20, %209 ], [ %20, %136 ], [ %20, %139 ], [ %20, %142 ], [ %20, %145 ], [ %20, %148 ], [ %20, %168 ], [ %20, %165 ], [ %20, %181 ], [ %20, %184 ], [ %20, %171 ], [ %20, %151 ], [ %20, %70 ], [ %129, %128 ], [ 0, %65 ], [ %20, %38 ]
  %217 = phi i32 [ %21, %212 ], [ %21, %48 ], [ %21, %135 ], [ %21, %134 ], [ %21, %193 ], [ %21, %192 ], [ %21, %203 ], [ %21, %209 ], [ %21, %136 ], [ %21, %139 ], [ %21, %142 ], [ %21, %145 ], [ %21, %148 ], [ %21, %168 ], [ %21, %165 ], [ %21, %181 ], [ %21, %184 ], [ %21, %171 ], [ %21, %151 ], [ %21, %70 ], [ %21, %128 ], [ %69, %65 ], [ %21, %38 ]
  %218 = phi i32 [ %22, %212 ], [ %22, %48 ], [ %22, %135 ], [ %22, %134 ], [ %22, %193 ], [ %22, %192 ], [ %22, %203 ], [ %22, %209 ], [ %22, %136 ], [ %22, %139 ], [ %22, %142 ], [ %22, %145 ], [ %22, %148 ], [ %22, %168 ], [ %22, %165 ], [ %22, %181 ], [ %22, %184 ], [ %22, %171 ], [ %22, %151 ], [ %22, %70 ], [ %22, %128 ], [ %66, %65 ], [ %22, %38 ]
  %219 = phi i32 [ %39, %212 ], [ %39, %48 ], [ %39, %135 ], [ %39, %134 ], [ %195, %193 ], [ %39, %192 ], [ %39, %203 ], [ %39, %209 ], [ %39, %136 ], [ %39, %139 ], [ %39, %142 ], [ %39, %145 ], [ %39, %148 ], [ %39, %168 ], [ %39, %165 ], [ %39, %181 ], [ %39, %184 ], [ %39, %171 ], [ %39, %151 ], [ %39, %70 ], [ %39, %128 ], [ %39, %65 ], [ %39, %38 ]
  %220 = phi i32 [ %25, %212 ], [ %25, %48 ], [ %25, %135 ], [ %25, %134 ], [ %25, %193 ], [ %25, %192 ], [ %25, %203 ], [ %25, %209 ], [ %25, %136 ], [ 1, %139 ], [ 1, %142 ], [ 1, %145 ], [ 1, %148 ], [ 1, %168 ], [ 1, %165 ], [ 1, %181 ], [ 1, %184 ], [ %25, %171 ], [ %25, %151 ], [ %25, %70 ], [ %25, %128 ], [ %25, %65 ], [ %25, %38 ]
  %221 = getelementptr inbounds i8, ptr %2, i64 %215
  %222 = load i8, ptr %221, align 1, !tbaa !61
  switch i8 %222, label %225 [
    i8 10, label %223
    i8 0, label %223
  ], !prof !91

223:                                              ; preds = %214, %214, %225
  %224 = phi i32 [ %219, %214 ], [ %219, %214 ], [ %226, %225 ]
  br label %19, !llvm.loop !92

225:                                              ; preds = %214
  %226 = add nsw i32 %219, 1
  br label %223

227:                                              ; preds = %19, %19
  %228 = icmp ne i32 %25, 0
  %229 = load i32, ptr @uci_mode, align 4
  %230 = icmp ne i32 %229, 0
  %231 = select i1 %228, i1 true, i1 %230
  br i1 %231, label %275, label %232, !prof !93

232:                                              ; preds = %227
  %233 = load i32, ptr %4, align 4, !tbaa !60
  %234 = icmp eq i32 %233, 8
  br i1 %234, label %235, label %242, !prof !94

235:                                              ; preds = %232
  %236 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 1, i64 4
  %237 = load i32, ptr %236, align 4, !tbaa !60
  %238 = icmp eq i32 %237, 6
  br i1 %238, label %239, label %242, !prof !95

239:                                              ; preds = %235
  %240 = load i32, ptr %5, align 4, !tbaa !54
  %241 = or i32 %240, 16
  store i32 %241, ptr %5, align 4, !tbaa !54
  br label %242

242:                                              ; preds = %239, %235, %232
  %243 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 1, i64 7
  %244 = load i32, ptr %243, align 4, !tbaa !60
  %245 = icmp eq i32 %244, 8
  br i1 %245, label %246, label %253, !prof !96

246:                                              ; preds = %242
  %247 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 1, i64 4
  %248 = load i32, ptr %247, align 4, !tbaa !60
  %249 = icmp eq i32 %248, 6
  br i1 %249, label %250, label %253

250:                                              ; preds = %246
  %251 = load i32, ptr %5, align 4, !tbaa !54
  %252 = or i32 %251, 8
  store i32 %252, ptr %5, align 4, !tbaa !54
  br label %253

253:                                              ; preds = %250, %246, %242
  %254 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 1, i64 56
  %255 = load i32, ptr %254, align 4, !tbaa !60
  %256 = icmp eq i32 %255, 7
  br i1 %256, label %257, label %264, !prof !97

257:                                              ; preds = %253
  %258 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 1, i64 60
  %259 = load i32, ptr %258, align 4, !tbaa !60
  %260 = icmp eq i32 %259, 5
  br i1 %260, label %261, label %264, !prof !98

261:                                              ; preds = %257
  %262 = load i32, ptr %5, align 4, !tbaa !54
  %263 = or i32 %262, 4
  store i32 %263, ptr %5, align 4, !tbaa !54
  br label %264

264:                                              ; preds = %261, %257, %253
  %265 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 1, i64 63
  %266 = load i32, ptr %265, align 4, !tbaa !60
  %267 = icmp eq i32 %266, 7
  br i1 %267, label %268, label %275, !prof !96

268:                                              ; preds = %264
  %269 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 1, i64 60
  %270 = load i32, ptr %269, align 4, !tbaa !60
  %271 = icmp eq i32 %270, 5
  br i1 %271, label %272, label %275

272:                                              ; preds = %268
  %273 = load i32, ptr %5, align 4, !tbaa !54
  %274 = or i32 %273, 2
  store i32 %274, ptr %5, align 4, !tbaa !54
  br label %275

275:                                              ; preds = %264, %268, %272, %227
  tail call void @_Z16SetupCastleMasksP7state_t(ptr noundef %1) #8
  tail call void @_Z18reset_piece_squareP7state_t(ptr noundef %1) #8
  tail call void @_Z15initialize_hashP7state_t(ptr noundef %1) #8
  %276 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 16
  %277 = load i64, ptr %276, align 8, !tbaa !99
  %278 = getelementptr inbounds %struct.gamestate_t, ptr %0, i64 0, i32 15
  %279 = load i32, ptr %278, align 4, !tbaa !100
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 36, i64 %280
  store i64 %277, ptr %281, align 8, !tbaa !102
  %282 = load i32, ptr %18, align 4, !tbaa !81
  %283 = getelementptr inbounds %struct.gamestate_t, ptr %0, i64 0, i32 2
  store i32 %282, ptr %283, align 8, !tbaa !103
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
define dso_local noundef i32 @_Z14check_solutionP7state_tPci(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 !prof !104 {
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
  %12 = load i8, ptr %11, align 1, !tbaa !61
  %13 = icmp eq i8 %12, 32
  %14 = getelementptr inbounds i8, ptr %11, i64 1
  br i1 %13, label %10, label %15, !llvm.loop !105

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
  %27 = load i8, ptr %26, align 1, !tbaa !61
  %28 = icmp eq i8 %27, 32
  %29 = getelementptr inbounds i8, ptr %26, i64 1
  br i1 %28, label %25, label %30, !llvm.loop !106

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
define dso_local void @_Z17run_epd_testsuiteP11gamestate_tP7state_tPKc(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 !prof !107 {
  %4 = alloca [512 x i8], align 16
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  %6 = tail call noalias ptr @fopen(ptr noundef %2, ptr noundef nonnull @.str.3) #8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8, !prof !108

8:                                                ; preds = %3
  %9 = call ptr @fgets(ptr noundef nonnull %4, i32 noundef 512, ptr noundef nonnull %6) #8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %32, label %11, !prof !109

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
  %20 = load i32, ptr %5, align 4, !tbaa !60
  call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.6, i32 noundef %20) #8
  call void @_Z13display_boardP7state_ti(ptr noundef %1, i32 noundef 1) #8
  store i32 99999999, ptr %12, align 4, !tbaa !110
  %21 = load i32, ptr %5, align 4, !tbaa !60
  store i32 %21, ptr %13, align 8, !tbaa !111
  %22 = call noundef i32 @_Z5thinkP11gamestate_tP7state_t(ptr noundef %0, ptr noundef %1) #8
  %23 = load i64, ptr %14, align 8, !tbaa !112
  %24 = load i64, ptr %15, align 8, !tbaa !113
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
  br i1 %31, label %32, label %17, !prof !114, !llvm.loop !115

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
define dso_local void @_Z15position_to_fenP7state_tPc(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !prof !104 {
  %3 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1
  br label %4

4:                                                ; preds = %2, %48
  %5 = phi i64 [ 8, %2 ], [ %7, %48 ]
  %6 = phi ptr [ %1, %2 ], [ %49, %48 ]
  %7 = add nsw i64 %5, -1
  %8 = getelementptr inbounds [8 x i32], ptr @_ZZ15position_to_fenP7state_tPcE11rankoffsets, i64 0, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !60
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
  %19 = load i32, ptr %18, align 4, !tbaa !60
  %20 = icmp eq i32 %19, 13
  br i1 %20, label %28, label %21

21:                                               ; preds = %15
  %22 = icmp eq i32 %17, 0
  br i1 %22, label %32, label %23

23:                                               ; preds = %21
  %24 = zext nneg i32 %17 to i64
  %25 = getelementptr inbounds [9 x i8], ptr @_ZZ15position_to_fenP7state_tPcE9str_empty, i64 0, i64 %24
  %26 = load i8, ptr %25, align 1, !tbaa !61
  store i8 %26, ptr %14, align 1
  %27 = getelementptr inbounds i8, ptr %14, i64 1
  store i8 0, ptr %27, align 1
  br label %32

28:                                               ; preds = %15
  %29 = add nuw nsw i32 %17, 1
  %30 = add nuw nsw i64 %16, 1
  %31 = icmp eq i64 %30, 8
  br i1 %31, label %40, label %15, !llvm.loop !116

32:                                               ; preds = %21, %23
  %33 = phi ptr [ %27, %23 ], [ %14, %21 ]
  %34 = sext i32 %19 to i64
  %35 = getelementptr inbounds [14 x i8], ptr @_ZZ15position_to_fenP7state_tPcE5xlate, i64 0, i64 %34
  %36 = load i8, ptr %35, align 1, !tbaa !61
  store i8 %36, ptr %33, align 1
  %37 = getelementptr inbounds i8, ptr %33, i64 1
  store i8 0, ptr %37, align 1
  %38 = add nuw nsw i64 %16, 1
  %39 = icmp eq i64 %38, 8
  br i1 %39, label %45, label %12, !llvm.loop !116

40:                                               ; preds = %28
  %41 = zext nneg i32 %29 to i64
  %42 = getelementptr inbounds [9 x i8], ptr @_ZZ15position_to_fenP7state_tPcE9str_empty, i64 0, i64 %41
  %43 = load i8, ptr %42, align 1, !tbaa !61
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
  br i1 %50, label %51, label %4, !llvm.loop !117

51:                                               ; preds = %45, %48
  %52 = phi ptr [ %49, %48 ], [ %46, %45 ]
  %53 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 11
  %54 = load i32, ptr %53, align 4, !tbaa !81
  %55 = icmp eq i32 %54, 0
  %56 = select i1 %55, i32 98, i32 119
  %57 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %52, ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %56) #11
  %58 = getelementptr inbounds i8, ptr %52, i64 3
  %59 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 9
  %60 = load i32, ptr %59, align 4, !tbaa !54
  %61 = and i32 %60, 2
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %51
  store i16 75, ptr %58, align 1
  %64 = getelementptr inbounds i8, ptr %52, i64 4
  %65 = load i32, ptr %59, align 4, !tbaa !54
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
  %74 = load i32, ptr %59, align 4, !tbaa !54
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
  %86 = load i32, ptr %59, align 4, !tbaa !54
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
  %99 = load i32, ptr %98, align 8, !tbaa !88
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %108, label %101

101:                                              ; preds = %96
  %102 = tail call noundef i32 @_Z4filei(i32 noundef %99) #8
  %103 = add nsw i32 %102, 96
  %104 = load i32, ptr %98, align 8, !tbaa !88
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

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!52}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 146496756232}
!4 = !{!"MaxCount", i64 8721648212}
!5 = !{!"MaxInternalCount", i64 5141736311}
!6 = !{!"MaxFunctionCount", i64 8721648212}
!7 = !{!"NumCounts", i64 1321}
!8 = !{!"NumFunctions", i64 93}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 8721648212, i32 1}
!14 = !{i32 100000, i64 6254650610, i32 2}
!15 = !{i32 200000, i64 3869890121, i32 6}
!16 = !{i32 300000, i64 2709579086, i32 11}
!17 = !{i32 400000, i64 2122664977, i32 16}
!18 = !{i32 500000, i64 1035201207, i32 30}
!19 = !{i32 600000, i64 738030122, i32 46}
!20 = !{i32 700000, i64 447394011, i32 71}
!21 = !{i32 800000, i64 240014260, i32 118}
!22 = !{i32 900000, i64 123608408, i32 197}
!23 = !{i32 950000, i64 77992234, i32 270}
!24 = !{i32 990000, i64 24047101, i32 388}
!25 = !{i32 999000, i64 3805030, i32 501}
!26 = !{i32 999900, i64 637179, i32 578}
!27 = !{i32 999990, i64 66341, i32 629}
!28 = !{i32 999999, i64 5762, i32 686}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{i32 5, !"CG Profile", !35}
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51}
!36 = !{ptr @_Z14setup_epd_lineP11gamestate_tP7state_tPKc, ptr @_Z9init_gameP11gamestate_tP7state_t, i64 12}
!37 = !{ptr @_Z14setup_epd_lineP11gamestate_tP7state_tPKc, ptr @atoi, i64 312}
!38 = !{ptr @_Z14setup_epd_lineP11gamestate_tP7state_tPKc, ptr @isalpha, i64 143}
!39 = !{ptr @_Z14setup_epd_lineP11gamestate_tP7state_tPKc, ptr @_Z16SetupCastleMasksP7state_t, i64 12}
!40 = !{ptr @_Z14setup_epd_lineP11gamestate_tP7state_tPKc, ptr @_Z18reset_piece_squareP7state_t, i64 12}
!41 = !{ptr @_Z14setup_epd_lineP11gamestate_tP7state_tPKc, ptr @_Z15initialize_hashP7state_t, i64 12}
!42 = !{ptr @_Z17run_epd_testsuiteP11gamestate_tP7state_tPKc, ptr @fopen, i64 1}
!43 = !{ptr @_Z17run_epd_testsuiteP11gamestate_tP7state_tPKc, ptr @fgets, i64 9}
!44 = !{ptr @_Z17run_epd_testsuiteP11gamestate_tP7state_tPKc, ptr @_Z8clear_ttv, i64 4}
!45 = !{ptr @_Z17run_epd_testsuiteP11gamestate_tP7state_tPKc, ptr @_Z14setup_epd_lineP11gamestate_tP7state_tPKc, i64 4}
!46 = !{ptr @_Z17run_epd_testsuiteP11gamestate_tP7state_tPKc, ptr @__isoc99_sscanf, i64 4}
!47 = !{ptr @_Z17run_epd_testsuiteP11gamestate_tP7state_tPKc, ptr @_Z8myprintfPKcz, i64 12}
!48 = !{ptr @_Z17run_epd_testsuiteP11gamestate_tP7state_tPKc, ptr @_Z13display_boardP7state_ti, i64 4}
!49 = !{ptr @_Z17run_epd_testsuiteP11gamestate_tP7state_tPKc, ptr @_Z5thinkP11gamestate_tP7state_t, i64 4}
!50 = !{ptr @_Z17run_epd_testsuiteP11gamestate_tP7state_tPKc, ptr @_Z14dumpsearchstatP7state_t, i64 4}
!51 = !{ptr @_Z17run_epd_testsuiteP11gamestate_tP7state_tPKc, ptr @fclose, i64 1}
!52 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!53 = !{!"function_entry_count", i64 12}
!54 = !{!55, !56, i64 452}
!55 = !{!"_ZTS7state_t", !56, i64 0, !57, i64 4, !59, i64 264, !59, i64 272, !59, i64 280, !57, i64 288, !56, i64 392, !56, i64 396, !57, i64 400, !56, i64 452, !56, i64 456, !56, i64 460, !56, i64 464, !56, i64 468, !56, i64 472, !56, i64 476, !59, i64 480, !59, i64 488, !57, i64 496, !57, i64 2544, !57, i64 2800, !57, i64 3056, !59, i64 4080, !59, i64 4088, !56, i64 4096, !57, i64 4100, !56, i64 4356, !56, i64 4360, !56, i64 4364, !56, i64 4368, !56, i64 4372, !56, i64 4376, !56, i64 4380, !56, i64 4384, !56, i64 4388, !56, i64 4392, !57, i64 4400}
!56 = !{!"int", !57, i64 0}
!57 = !{!"omnipotent char", !58, i64 0}
!58 = !{!"Simple C++ TBAA"}
!59 = !{!"long long", !57, i64 0}
!60 = !{!56, !56, i64 0}
!61 = !{!57, !57, i64 0}
!62 = !{!"branch_weights", i32 1, i32 13}
!63 = distinct !{!63, !64}
!64 = !{!"llvm.loop.mustprogress"}
!65 = !{!"branch_weights", i32 685687275, i32 11050624, i32 10895820, i32 81210825}
!66 = !{!"branch_weights", i32 1, i32 97}
!67 = distinct !{!67, !64}
!68 = !{!"branch_weights", i32 1143203902, i32 -1162942794, i32 65344224, i32 90158037, i32 64870265, i32 124261293}
!69 = !{!"branch_weights", i32 225, i32 397}
!70 = !{!"branch_weights", i32 224, i32 1}
!71 = !{!"branch_weights", i32 233, i32 224}
!72 = distinct !{!72, !64}
!73 = !{!"branch_weights", i32 85, i32 313}
!74 = !{!"branch_weights", i32 1, i32 313}
!75 = !{!"branch_weights", i32 1, i32 75, i32 72, i32 18, i32 17, i32 21, i32 20, i32 25, i32 24, i32 13, i32 13, i32 13, i32 13}
!76 = !{!55, !56, i64 468}
!77 = !{!55, !56, i64 4376}
!78 = !{!55, !56, i64 464}
!79 = !{!55, !56, i64 4372}
!80 = !{!"branch_weights", i32 11, i32 3}
!81 = !{!55, !56, i64 460}
!82 = !{!"branch_weights", i32 1, i32 9, i32 2, i32 2, i32 5, i32 4}
!83 = !{!55, !56, i64 4380}
!84 = !{!55, !56, i64 4384}
!85 = !{!55, !56, i64 4388}
!86 = !{!55, !56, i64 4392}
!87 = !{!"branch_weights", i32 13, i32 1}
!88 = !{!55, !56, i64 456}
!89 = !{!"branch_weights", i32 1, i32 25}
!90 = !{!55, !56, i64 476}
!91 = !{!"branch_weights", i32 837225, i32 916, i32 915}
!92 = distinct !{!92, !64}
!93 = !{!"branch_weights", i32 59, i32 81}
!94 = !{!"branch_weights", i32 8, i32 2}
!95 = !{!"branch_weights", i32 1, i32 8}
!96 = !{!"branch_weights", i32 1, i32 9}
!97 = !{!"branch_weights", i32 3, i32 7}
!98 = !{!"branch_weights", i32 1, i32 3}
!99 = !{!55, !59, i64 480}
!100 = !{!101, !56, i64 60}
!101 = !{!"_ZTS11gamestate_t", !56, i64 0, !56, i64 4, !56, i64 8, !56, i64 12, !56, i64 16, !56, i64 20, !56, i64 24, !56, i64 28, !56, i64 32, !56, i64 36, !56, i64 40, !56, i64 44, !56, i64 48, !56, i64 52, !56, i64 56, !56, i64 60, !57, i64 64, !57, i64 4064, !59, i64 36064, !56, i64 36072, !56, i64 36076, !56, i64 36080, !56, i64 36084, !56, i64 36088, !56, i64 36092, !56, i64 36096, !56, i64 36100}
!102 = !{!59, !59, i64 0}
!103 = !{!101, !56, i64 8}
!104 = !{!"function_entry_count", i64 0}
!105 = distinct !{!105, !64}
!106 = distinct !{!106, !64}
!107 = !{!"function_entry_count", i64 1}
!108 = !{!"branch_weights", i32 1, i32 2}
!109 = !{!"branch_weights", i32 1, i32 127}
!110 = !{!101, !56, i64 52}
!111 = !{!101, !56, i64 56}
!112 = !{!55, !59, i64 4080}
!113 = !{!55, !59, i64 4088}
!114 = !{!"branch_weights", i32 127, i32 705}
!115 = distinct !{!115, !64}
!116 = distinct !{!116, !64}
!117 = distinct !{!117, !64}
