; ModuleID = 'moves.cpp'
source_filename = "moves.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.state_t = type { i32, [64 x i32], i64, i64, i64, [13 x i64], i32, i32, [13 x i32], i32, i32, i32, i32, i32, i32, i32, i64, i64, [64 x %struct.move_x], [64 x i32], [64 x i32], [64 x %struct.anon], i64, i64, i32, [64 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1000 x i64] }
%struct.move_x = type { i32, i32, i32, i32, i64, i64 }
%struct.anon = type { i32, i32, i32, i32 }

; Function Attrs: inlinehint mustprogress uwtable
define dso_local noundef i32 @_Z11check_legalP7state_ti(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !37 {
  %3 = lshr i32 %1, 16
  %4 = and i32 %3, 7
  switch i32 %4, label %17 [
    i32 0, label %36
    i32 1, label %5
    i32 2, label %8
    i32 3, label %11
    i32 4, label %14
  ], !prof !38

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 30
  %7 = load i32, ptr %6, align 4, !tbaa !39
  br label %17

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 30
  %10 = load i32, ptr %9, align 4, !tbaa !39
  br label %17

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 31
  %13 = load i32, ptr %12, align 8, !tbaa !45
  br label %17

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 31
  %16 = load i32, ptr %15, align 8, !tbaa !45
  br label %17

17:                                               ; preds = %2, %8, %14, %11, %5
  %18 = phi i32 [ 62, %5 ], [ 58, %8 ], [ 6, %11 ], [ 2, %14 ], [ undef, %2 ]
  %19 = phi i32 [ %7, %5 ], [ %10, %8 ], [ %13, %11 ], [ %16, %14 ], [ undef, %2 ]
  %20 = phi i32 [ 0, %5 ], [ 0, %8 ], [ 1, %11 ], [ 1, %14 ], [ undef, %2 ]
  %21 = icmp sgt i32 %18, %19
  br i1 %21, label %22, label %29, !prof !46

22:                                               ; preds = %17, %22
  %23 = phi i32 [ %26, %22 ], [ %19, %17 ]
  %24 = tail call noundef i32 @_Z11is_attackedP7state_tii(ptr noundef %0, i32 noundef %23, i32 noundef %20)
  %25 = icmp eq i32 %24, 0
  %26 = add i32 %23, 1
  %27 = icmp ne i32 %23, %18
  %28 = and i1 %27, %25
  br i1 %28, label %22, label %50, !prof !47, !llvm.loop !48

29:                                               ; preds = %17, %29
  %30 = phi i32 [ %33, %29 ], [ %19, %17 ]
  %31 = tail call noundef i32 @_Z11is_attackedP7state_tii(ptr noundef %0, i32 noundef %30, i32 noundef %20)
  %32 = icmp eq i32 %31, 0
  %33 = add nsw i32 %30, -1
  %34 = icmp sgt i32 %30, %18
  %35 = and i1 %32, %34
  br i1 %35, label %29, label %50, !prof !51, !llvm.loop !52

36:                                               ; preds = %2
  %37 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 11
  %38 = load i32, ptr %37, align 4, !tbaa !53
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %45, label %40, !prof !54

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 13
  %42 = load i32, ptr %41, align 4, !tbaa !55
  %43 = tail call noundef i32 @_Z11is_attackedP7state_tii(ptr noundef %0, i32 noundef %42, i32 noundef 1)
  %44 = icmp eq i32 %43, 0
  br label %50

45:                                               ; preds = %36
  %46 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 12
  %47 = load i32, ptr %46, align 8, !tbaa !56
  %48 = tail call noundef i32 @_Z11is_attackedP7state_tii(ptr noundef %0, i32 noundef %47, i32 noundef 0)
  %49 = icmp eq i32 %48, 0
  br label %50

50:                                               ; preds = %29, %22, %45, %40
  %51 = phi i1 [ %44, %40 ], [ %49, %45 ], [ %25, %22 ], [ %32, %29 ]
  %52 = zext i1 %51 to i32
  ret i32 %52
}

declare noundef i32 @_Z11is_attackedP7state_tii(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_Z20check_castle_blockerP7state_ti(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #2 !prof !57 {
  switch i32 %1, label %299 [
    i32 1, label %3
    i32 2, label %77
    i32 3, label %151
    i32 4, label %225
  ], !prof !58

3:                                                ; preds = %2
  %4 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 30
  %5 = load i32, ptr %4, align 4, !tbaa !39
  %6 = icmp sgt i32 %5, 62
  br i1 %6, label %7, label %22, !prof !59

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 33
  %9 = load i32, ptr %8, align 8, !tbaa !60
  %10 = zext nneg i32 %5 to i64
  %11 = zext i32 %9 to i64
  br label %12

12:                                               ; preds = %7, %20
  %13 = phi i64 [ %10, %7 ], [ %14, %20 ]
  %14 = add nsw i64 %13, -1
  %15 = icmp eq i64 %14, %11
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %14
  %18 = load i32, ptr %17, align 4, !tbaa !61
  %19 = icmp eq i32 %18, 13
  br i1 %19, label %20, label %299

20:                                               ; preds = %16, %12
  %21 = icmp sgt i64 %13, 63
  br i1 %21, label %12, label %42, !llvm.loop !62

22:                                               ; preds = %3
  %23 = icmp eq i32 %5, 62
  br i1 %23, label %42, label %24, !prof !59

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 33
  %26 = load i32, ptr %25, align 8, !tbaa !60
  %27 = sext i32 %5 to i64
  %28 = sext i32 %26 to i64
  %29 = tail call i32 @llvm.smax.i32(i32 %5, i32 61)
  %30 = add nuw i32 %29, 1
  %31 = sext i32 %30 to i64
  br label %32

32:                                               ; preds = %24, %40
  %33 = phi i64 [ %27, %24 ], [ %34, %40 ]
  %34 = add nsw i64 %33, 1
  %35 = icmp eq i64 %34, %28
  br i1 %35, label %40, label %36, !prof !63

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %34
  %38 = load i32, ptr %37, align 4, !tbaa !61
  %39 = icmp eq i32 %38, 13
  br i1 %39, label %40, label %299, !prof !64

40:                                               ; preds = %36, %32
  %41 = icmp eq i64 %34, %31
  br i1 %41, label %42, label %32, !prof !65, !llvm.loop !66

42:                                               ; preds = %40, %20, %22
  %43 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 33
  %44 = load i32, ptr %43, align 8, !tbaa !60
  %45 = icmp sgt i32 %44, 61
  br i1 %45, label %46, label %59, !prof !67

46:                                               ; preds = %42
  %47 = zext nneg i32 %44 to i64
  %48 = zext i32 %5 to i64
  br label %49

49:                                               ; preds = %46, %57
  %50 = phi i64 [ %47, %46 ], [ %51, %57 ]
  %51 = add nsw i64 %50, -1
  %52 = icmp eq i64 %51, %48
  br i1 %52, label %57, label %53, !prof !68

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %51
  %55 = load i32, ptr %54, align 4, !tbaa !61
  %56 = icmp eq i32 %55, 13
  br i1 %56, label %57, label %299, !prof !69

57:                                               ; preds = %53, %49
  %58 = icmp sgt i64 %50, 62
  br i1 %58, label %49, label %299, !prof !70, !llvm.loop !71

59:                                               ; preds = %42
  %60 = icmp eq i32 %44, 61
  br i1 %60, label %299, label %61

61:                                               ; preds = %59
  %62 = sext i32 %44 to i64
  %63 = sext i32 %5 to i64
  %64 = tail call i32 @llvm.smax.i32(i32 %44, i32 60)
  %65 = add nuw i32 %64, 1
  %66 = sext i32 %65 to i64
  br label %67

67:                                               ; preds = %61, %75
  %68 = phi i64 [ %62, %61 ], [ %69, %75 ]
  %69 = add nsw i64 %68, 1
  %70 = icmp eq i64 %69, %63
  br i1 %70, label %75, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %69
  %73 = load i32, ptr %72, align 4, !tbaa !61
  %74 = icmp eq i32 %73, 13
  br i1 %74, label %75, label %299

75:                                               ; preds = %71, %67
  %76 = icmp eq i64 %69, %66
  br i1 %76, label %299, label %67, !llvm.loop !72

77:                                               ; preds = %2
  %78 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 30
  %79 = load i32, ptr %78, align 4, !tbaa !39
  %80 = icmp sgt i32 %79, 58
  br i1 %80, label %81, label %96, !prof !73

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 32
  %83 = load i32, ptr %82, align 4, !tbaa !74
  %84 = zext nneg i32 %79 to i64
  %85 = zext i32 %83 to i64
  br label %86

86:                                               ; preds = %81, %94
  %87 = phi i64 [ %84, %81 ], [ %88, %94 ]
  %88 = add nsw i64 %87, -1
  %89 = icmp eq i64 %88, %85
  br i1 %89, label %94, label %90, !prof !75

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %88
  %92 = load i32, ptr %91, align 4, !tbaa !61
  %93 = icmp eq i32 %92, 13
  br i1 %93, label %94, label %299, !prof !76

94:                                               ; preds = %90, %86
  %95 = icmp sgt i64 %87, 59
  br i1 %95, label %86, label %116, !prof !77, !llvm.loop !78

96:                                               ; preds = %77
  %97 = icmp eq i32 %79, 58
  br i1 %97, label %116, label %98

98:                                               ; preds = %96
  %99 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 32
  %100 = load i32, ptr %99, align 4, !tbaa !74
  %101 = sext i32 %79 to i64
  %102 = sext i32 %100 to i64
  %103 = tail call i32 @llvm.smax.i32(i32 %79, i32 57)
  %104 = add nuw i32 %103, 1
  %105 = sext i32 %104 to i64
  br label %106

106:                                              ; preds = %98, %114
  %107 = phi i64 [ %101, %98 ], [ %108, %114 ]
  %108 = add nsw i64 %107, 1
  %109 = icmp eq i64 %108, %102
  br i1 %109, label %114, label %110

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %108
  %112 = load i32, ptr %111, align 4, !tbaa !61
  %113 = icmp eq i32 %112, 13
  br i1 %113, label %114, label %299

114:                                              ; preds = %110, %106
  %115 = icmp eq i64 %108, %105
  br i1 %115, label %116, label %106, !llvm.loop !79

116:                                              ; preds = %114, %94, %96
  %117 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 32
  %118 = load i32, ptr %117, align 4, !tbaa !74
  %119 = icmp sgt i32 %118, 59
  br i1 %119, label %120, label %133, !prof !80

120:                                              ; preds = %116
  %121 = zext nneg i32 %118 to i64
  %122 = zext i32 %79 to i64
  br label %123

123:                                              ; preds = %120, %131
  %124 = phi i64 [ %121, %120 ], [ %125, %131 ]
  %125 = add nsw i64 %124, -1
  %126 = icmp eq i64 %125, %122
  br i1 %126, label %131, label %127

127:                                              ; preds = %123
  %128 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %125
  %129 = load i32, ptr %128, align 4, !tbaa !61
  %130 = icmp eq i32 %129, 13
  br i1 %130, label %131, label %299

131:                                              ; preds = %127, %123
  %132 = icmp sgt i64 %124, 60
  br i1 %132, label %123, label %299, !llvm.loop !81

133:                                              ; preds = %116
  %134 = icmp eq i32 %118, 59
  br i1 %134, label %299, label %135, !prof !82

135:                                              ; preds = %133
  %136 = sext i32 %118 to i64
  %137 = sext i32 %79 to i64
  %138 = tail call i32 @llvm.smax.i32(i32 %118, i32 58)
  %139 = add nuw i32 %138, 1
  %140 = sext i32 %139 to i64
  br label %141

141:                                              ; preds = %135, %149
  %142 = phi i64 [ %136, %135 ], [ %143, %149 ]
  %143 = add nsw i64 %142, 1
  %144 = icmp eq i64 %143, %137
  br i1 %144, label %149, label %145, !prof !83

145:                                              ; preds = %141
  %146 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %143
  %147 = load i32, ptr %146, align 4, !tbaa !61
  %148 = icmp eq i32 %147, 13
  br i1 %148, label %149, label %299, !prof !84

149:                                              ; preds = %145, %141
  %150 = icmp eq i64 %143, %140
  br i1 %150, label %299, label %141, !prof !85, !llvm.loop !86

151:                                              ; preds = %2
  %152 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 31
  %153 = load i32, ptr %152, align 8, !tbaa !45
  %154 = icmp sgt i32 %153, 6
  br i1 %154, label %155, label %170, !prof !87

155:                                              ; preds = %151
  %156 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 35
  %157 = load i32, ptr %156, align 8, !tbaa !88
  %158 = zext nneg i32 %153 to i64
  %159 = zext i32 %157 to i64
  br label %160

160:                                              ; preds = %155, %168
  %161 = phi i64 [ %158, %155 ], [ %162, %168 ]
  %162 = add nsw i64 %161, -1
  %163 = icmp eq i64 %162, %159
  br i1 %163, label %168, label %164

164:                                              ; preds = %160
  %165 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %162
  %166 = load i32, ptr %165, align 4, !tbaa !61
  %167 = icmp eq i32 %166, 13
  br i1 %167, label %168, label %299

168:                                              ; preds = %164, %160
  %169 = icmp sgt i64 %161, 7
  br i1 %169, label %160, label %190, !llvm.loop !89

170:                                              ; preds = %151
  %171 = icmp eq i32 %153, 6
  br i1 %171, label %190, label %172, !prof !87

172:                                              ; preds = %170
  %173 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 35
  %174 = load i32, ptr %173, align 8, !tbaa !88
  %175 = sext i32 %153 to i64
  %176 = sext i32 %174 to i64
  %177 = tail call i32 @llvm.smax.i32(i32 %153, i32 5)
  %178 = add nuw i32 %177, 1
  %179 = sext i32 %178 to i64
  br label %180

180:                                              ; preds = %172, %188
  %181 = phi i64 [ %175, %172 ], [ %182, %188 ]
  %182 = add nsw i64 %181, 1
  %183 = icmp eq i64 %182, %176
  br i1 %183, label %188, label %184, !prof !90

184:                                              ; preds = %180
  %185 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %182
  %186 = load i32, ptr %185, align 4, !tbaa !61
  %187 = icmp eq i32 %186, 13
  br i1 %187, label %188, label %299, !prof !91

188:                                              ; preds = %184, %180
  %189 = icmp eq i64 %182, %179
  br i1 %189, label %190, label %180, !prof !92, !llvm.loop !93

190:                                              ; preds = %188, %168, %170
  %191 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 35
  %192 = load i32, ptr %191, align 8, !tbaa !88
  %193 = icmp sgt i32 %192, 5
  br i1 %193, label %194, label %207, !prof !94

194:                                              ; preds = %190
  %195 = zext nneg i32 %192 to i64
  %196 = zext i32 %153 to i64
  br label %197

197:                                              ; preds = %194, %205
  %198 = phi i64 [ %195, %194 ], [ %199, %205 ]
  %199 = add nsw i64 %198, -1
  %200 = icmp eq i64 %199, %196
  br i1 %200, label %205, label %201, !prof !95

201:                                              ; preds = %197
  %202 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %199
  %203 = load i32, ptr %202, align 4, !tbaa !61
  %204 = icmp eq i32 %203, 13
  br i1 %204, label %205, label %299, !prof !96

205:                                              ; preds = %201, %197
  %206 = icmp sgt i64 %198, 6
  br i1 %206, label %197, label %299, !prof !97, !llvm.loop !98

207:                                              ; preds = %190
  %208 = icmp eq i32 %192, 5
  br i1 %208, label %299, label %209

209:                                              ; preds = %207
  %210 = sext i32 %192 to i64
  %211 = sext i32 %153 to i64
  %212 = tail call i32 @llvm.smax.i32(i32 %192, i32 4)
  %213 = add nuw i32 %212, 1
  %214 = sext i32 %213 to i64
  br label %215

215:                                              ; preds = %209, %223
  %216 = phi i64 [ %210, %209 ], [ %217, %223 ]
  %217 = add nsw i64 %216, 1
  %218 = icmp eq i64 %217, %211
  br i1 %218, label %223, label %219

219:                                              ; preds = %215
  %220 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %217
  %221 = load i32, ptr %220, align 4, !tbaa !61
  %222 = icmp eq i32 %221, 13
  br i1 %222, label %223, label %299

223:                                              ; preds = %219, %215
  %224 = icmp eq i64 %217, %214
  br i1 %224, label %299, label %215, !llvm.loop !99

225:                                              ; preds = %2
  %226 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 31
  %227 = load i32, ptr %226, align 8, !tbaa !45
  %228 = icmp sgt i32 %227, 2
  br i1 %228, label %229, label %244, !prof !100

229:                                              ; preds = %225
  %230 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 34
  %231 = load i32, ptr %230, align 4, !tbaa !101
  %232 = zext nneg i32 %227 to i64
  %233 = zext i32 %231 to i64
  br label %234

234:                                              ; preds = %229, %242
  %235 = phi i64 [ %232, %229 ], [ %236, %242 ]
  %236 = add nsw i64 %235, -1
  %237 = icmp eq i64 %236, %233
  br i1 %237, label %242, label %238, !prof !102

238:                                              ; preds = %234
  %239 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %236
  %240 = load i32, ptr %239, align 4, !tbaa !61
  %241 = icmp eq i32 %240, 13
  br i1 %241, label %242, label %299, !prof !103

242:                                              ; preds = %238, %234
  %243 = icmp sgt i64 %235, 3
  br i1 %243, label %234, label %264, !prof !104, !llvm.loop !105

244:                                              ; preds = %225
  %245 = icmp eq i32 %227, 2
  br i1 %245, label %264, label %246

246:                                              ; preds = %244
  %247 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 34
  %248 = load i32, ptr %247, align 4, !tbaa !101
  %249 = sext i32 %227 to i64
  %250 = sext i32 %248 to i64
  %251 = tail call i32 @llvm.smax.i32(i32 %227, i32 1)
  %252 = add nuw i32 %251, 1
  %253 = sext i32 %252 to i64
  br label %254

254:                                              ; preds = %246, %262
  %255 = phi i64 [ %249, %246 ], [ %256, %262 ]
  %256 = add nsw i64 %255, 1
  %257 = icmp eq i64 %256, %250
  br i1 %257, label %262, label %258

258:                                              ; preds = %254
  %259 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %256
  %260 = load i32, ptr %259, align 4, !tbaa !61
  %261 = icmp eq i32 %260, 13
  br i1 %261, label %262, label %299

262:                                              ; preds = %258, %254
  %263 = icmp eq i64 %256, %253
  br i1 %263, label %264, label %254, !llvm.loop !106

264:                                              ; preds = %262, %242, %244
  %265 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 34
  %266 = load i32, ptr %265, align 4, !tbaa !101
  %267 = icmp sgt i32 %266, 3
  br i1 %267, label %268, label %281, !prof !107

268:                                              ; preds = %264
  %269 = zext nneg i32 %266 to i64
  %270 = zext i32 %227 to i64
  br label %271

271:                                              ; preds = %268, %279
  %272 = phi i64 [ %269, %268 ], [ %273, %279 ]
  %273 = add nsw i64 %272, -1
  %274 = icmp eq i64 %273, %270
  br i1 %274, label %279, label %275

275:                                              ; preds = %271
  %276 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %273
  %277 = load i32, ptr %276, align 4, !tbaa !61
  %278 = icmp eq i32 %277, 13
  br i1 %278, label %279, label %299

279:                                              ; preds = %275, %271
  %280 = icmp sgt i64 %272, 4
  br i1 %280, label %271, label %299, !llvm.loop !108

281:                                              ; preds = %264
  %282 = icmp eq i32 %266, 3
  br i1 %282, label %299, label %283, !prof !109

283:                                              ; preds = %281
  %284 = sext i32 %266 to i64
  %285 = sext i32 %227 to i64
  %286 = tail call i32 @llvm.smax.i32(i32 %266, i32 2)
  %287 = add nuw i32 %286, 1
  %288 = sext i32 %287 to i64
  br label %289

289:                                              ; preds = %283, %297
  %290 = phi i64 [ %284, %283 ], [ %291, %297 ]
  %291 = add nsw i64 %290, 1
  %292 = icmp eq i64 %291, %285
  br i1 %292, label %297, label %293, !prof !110

293:                                              ; preds = %289
  %294 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %291
  %295 = load i32, ptr %294, align 4, !tbaa !61
  %296 = icmp eq i32 %295, 13
  br i1 %296, label %297, label %299, !prof !111

297:                                              ; preds = %293, %289
  %298 = icmp eq i64 %291, %288
  br i1 %298, label %299, label %289, !prof !112, !llvm.loop !113

299:                                              ; preds = %258, %238, %293, %297, %279, %275, %184, %164, %219, %223, %205, %201, %110, %90, %145, %149, %131, %127, %36, %16, %71, %75, %57, %53, %59, %207, %281, %133, %2
  %300 = phi i32 [ 0, %2 ], [ 0, %133 ], [ 0, %281 ], [ 0, %207 ], [ 0, %59 ], [ 1, %53 ], [ 0, %57 ], [ 0, %75 ], [ 1, %71 ], [ 1, %16 ], [ 1, %36 ], [ 1, %127 ], [ 0, %131 ], [ 0, %149 ], [ 1, %145 ], [ 1, %90 ], [ 1, %110 ], [ 1, %201 ], [ 0, %205 ], [ 0, %223 ], [ 1, %219 ], [ 1, %164 ], [ 1, %184 ], [ 1, %275 ], [ 0, %279 ], [ 0, %297 ], [ 1, %293 ], [ 1, %238 ], [ 1, %258 ]
  ret i32 %300
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

attributes #0 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!36}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 128361366639}
!8 = !{!"MaxCount", i64 7592818589}
!9 = !{!"MaxInternalCount", i64 5393808666}
!10 = !{!"MaxFunctionCount", i64 7592818589}
!11 = !{!"NumCounts", i64 1723}
!12 = !{!"NumFunctions", i64 109}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 7592818589, i32 1}
!18 = !{i32 100000, i64 5393808666, i32 2}
!19 = !{i32 200000, i64 2869551984, i32 6}
!20 = !{i32 300000, i64 1728514292, i32 11}
!21 = !{i32 400000, i64 824050972, i32 24}
!22 = !{i32 500000, i64 588473769, i32 42}
!23 = !{i32 600000, i64 446369574, i32 68}
!24 = !{i32 700000, i64 286932458, i32 105}
!25 = !{i32 800000, i64 196614852, i32 160}
!26 = !{i32 900000, i64 107044397, i32 249}
!27 = !{i32 950000, i64 60101921, i32 326}
!28 = !{i32 990000, i64 15736932, i32 482}
!29 = !{i32 999000, i64 2025695, i32 659}
!30 = !{i32 999900, i64 318185, i32 779}
!31 = !{i32 999990, i64 50049, i32 848}
!32 = !{i32 999999, i64 3896, i32 923}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35}
!35 = !{ptr @_Z11check_legalP7state_ti, ptr @_Z11is_attackedP7state_tii, i64 919143663}
!36 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!37 = !{!"function_entry_count", i64 916704357}
!38 = !{!"branch_weights", i32 0, i32 915495860, i32 157763, i32 160403, i32 716717, i32 173614}
!39 = !{!40, !41, i64 4372}
!40 = !{!"_ZTS7state_t", !41, i64 0, !42, i64 4, !44, i64 264, !44, i64 272, !44, i64 280, !42, i64 288, !41, i64 392, !41, i64 396, !42, i64 400, !41, i64 452, !41, i64 456, !41, i64 460, !41, i64 464, !41, i64 468, !41, i64 472, !41, i64 476, !44, i64 480, !44, i64 488, !42, i64 496, !42, i64 2544, !42, i64 2800, !42, i64 3056, !44, i64 4080, !44, i64 4088, !41, i64 4096, !42, i64 4100, !41, i64 4356, !41, i64 4360, !41, i64 4364, !41, i64 4368, !41, i64 4372, !41, i64 4376, !41, i64 4380, !41, i64 4384, !41, i64 4388, !41, i64 4392, !42, i64 4400}
!41 = !{!"int", !42, i64 0}
!42 = !{!"omnipotent char", !43, i64 0}
!43 = !{!"Simple C++ TBAA"}
!44 = !{!"long long", !42, i64 0}
!45 = !{!40, !41, i64 4376}
!46 = !{!"branch_weights", i32 874480, i32 334017}
!47 = !{!"branch_weights", i32 -143532565, i32 2068085906}
!48 = distinct !{!48, !49, !50}
!49 = !{!"llvm.loop.mustprogress"}
!50 = !{!"llvm.loop.unroll.disable"}
!51 = !{!"branch_weights", i32 -1732430072, i32 1251559657}
!52 = distinct !{!52, !49, !50}
!53 = !{!40, !41, i64 460}
!54 = !{!"branch_weights", i32 446360917, i32 469134943}
!55 = !{!40, !41, i64 468}
!56 = !{!40, !41, i64 464}
!57 = !{!"function_entry_count", i64 5454817}
!58 = !{!"branch_weights", i32 0, i32 495989, i32 850075, i32 2216818, i32 1891935}
!59 = !{!"branch_weights", i32 0, i32 495989}
!60 = !{!40, !41, i64 4384}
!61 = !{!41, !41, i64 0}
!62 = distinct !{!62, !49, !50}
!63 = !{!"branch_weights", i32 0, i32 980956}
!64 = !{!"branch_weights", i32 965592, i32 15364}
!65 = !{!"branch_weights", i32 480624, i32 500332}
!66 = distinct !{!66, !49, !50}
!67 = !{!"branch_weights", i32 480625, i32 0}
!68 = !{!"branch_weights", i32 0, i32 961250}
!69 = !{!"branch_weights", i32 961250, i32 0}
!70 = !{!"branch_weights", i32 480625, i32 480625}
!71 = distinct !{!71, !49, !50}
!72 = distinct !{!72, !49, !50}
!73 = !{!"branch_weights", i32 850075, i32 0}
!74 = !{!40, !41, i64 4380}
!75 = !{!"branch_weights", i32 0, i32 1352792}
!76 = !{!"branch_weights", i32 792779, i32 560013}
!77 = !{!"branch_weights", i32 1062730, i32 290062}
!78 = distinct !{!78, !49, !50}
!79 = distinct !{!79, !49, !50}
!80 = !{!"branch_weights", i32 0, i32 290062}
!81 = distinct !{!81, !49, !50}
!82 = !{!"branch_weights", i32 9064, i32 -1749881729}
!83 = !{!"branch_weights", i32 0, i32 851618}
!84 = !{!"branch_weights", i32 842334, i32 9284}
!85 = !{!"branch_weights", i32 280777, i32 570841}
!86 = distinct !{!86, !49, !50}
!87 = !{!"branch_weights", i32 0, i32 2216818}
!88 = !{!40, !41, i64 4392}
!89 = distinct !{!89, !49, !50}
!90 = !{!"branch_weights", i32 0, i32 3785540}
!91 = !{!"branch_weights", i32 3136527, i32 649013}
!92 = !{!"branch_weights", i32 1567804, i32 2217736}
!93 = distinct !{!93, !49, !50}
!94 = !{!"branch_weights", i32 1567805, i32 0}
!95 = !{!"branch_weights", i32 0, i32 3135610}
!96 = !{!"branch_weights", i32 3135610, i32 0}
!97 = !{!"branch_weights", i32 1567805, i32 1567805}
!98 = distinct !{!98, !49, !50}
!99 = distinct !{!99, !49, !50}
!100 = !{!"branch_weights", i32 1891935, i32 0}
!101 = !{!40, !41, i64 4388}
!102 = !{!"branch_weights", i32 0, i32 3440437}
!103 = !{!"branch_weights", i32 1914658, i32 1525779}
!104 = !{!"branch_weights", i32 3074281, i32 366156}
!105 = distinct !{!105, !49, !50}
!106 = distinct !{!106, !49, !50}
!107 = !{!"branch_weights", i32 0, i32 366156}
!108 = distinct !{!108, !49, !50}
!109 = !{!"branch_weights", i32 11442, i32 -307368263}
!110 = !{!"branch_weights", i32 0, i32 1063146}
!111 = !{!"branch_weights", i32 1045485, i32 17661}
!112 = !{!"branch_weights", i32 348494, i32 714652}
!113 = distinct !{!113, !49, !50}
