; ModuleID = 'see.cpp'
source_filename = "see.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.state_t = type { i32, [64 x i32], i64, i64, i64, [13 x i64], i32, i32, [13 x i32], i32, i32, i32, i32, i32, i32, i32, i64, i64, [64 x %struct.move_x], [64 x i32], [64 x i32], [64 x %struct.anon], i64, i64, i32, [64 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1000 x i64] }
%struct.move_x = type { i32, i32, i32, i32, i64, i64 }
%struct.anon = type { i32, i32, i32, i32 }

@Mask = external local_unnamed_addr global [64 x i64], align 16
@material = external local_unnamed_addr constant [14 x i32], align 16
@RookMask = external local_unnamed_addr global [64 x i64], align 16
@BishopMask = external local_unnamed_addr global [64 x i64], align 16

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_Z3seeP7state_tiiii(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 !prof !40 {
  %6 = alloca [32 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %6) #4
  %7 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5
  %8 = sext i32 %2 to i64
  %9 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !41
  %11 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 2
  %12 = load i64, ptr %11, align 8, !tbaa !45
  %13 = sext i32 %10 to i64
  %14 = getelementptr inbounds i64, ptr %7, i64 %13
  %15 = load i64, ptr %14, align 8, !tbaa !48
  %16 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %8
  %17 = load i64, ptr %16, align 8, !tbaa !48
  %18 = xor i64 %17, %12
  store i64 %18, ptr %11, align 8, !tbaa !45
  %19 = load i64, ptr %16, align 8, !tbaa !48
  %20 = load i64, ptr %14, align 8, !tbaa !48
  %21 = xor i64 %20, %19
  store i64 %21, ptr %14, align 8, !tbaa !48
  %22 = tail call noundef i64 @_Z10attacks_toP7state_ti(ptr noundef %0, i32 noundef %3) #5
  %23 = sext i32 %3 to i64
  %24 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %23
  %25 = load i32, ptr %24, align 4, !tbaa !41
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [14 x i32], ptr @material, i64 0, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !41
  %29 = tail call i32 @llvm.abs.i32(i32 %28, i1 true)
  store i32 %29, ptr %6, align 16, !tbaa !41
  %30 = icmp eq i32 %4, 0
  br i1 %30, label %31, label %35, !prof !49

31:                                               ; preds = %5
  %32 = getelementptr inbounds [14 x i32], ptr @material, i64 0, i64 %13
  %33 = load i32, ptr %32, align 4, !tbaa !41
  %34 = tail call i32 @llvm.abs.i32(i32 %33, i1 true)
  br label %41

35:                                               ; preds = %5
  %36 = sext i32 %4 to i64
  %37 = getelementptr inbounds [14 x i32], ptr @material, i64 0, i64 %36
  %38 = load i32, ptr %37, align 4, !tbaa !41
  %39 = tail call i32 @llvm.abs.i32(i32 %38, i1 true)
  %40 = add nsw i32 %39, -85
  br label %41

41:                                               ; preds = %35, %31
  %42 = phi i32 [ %40, %35 ], [ %34, %31 ]
  %43 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 9
  %44 = load i64, ptr %43, align 8, !tbaa !48
  %45 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 10
  %46 = load i64, ptr %45, align 8, !tbaa !48
  %47 = or i64 %46, %44
  %48 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 7
  %49 = load i64, ptr %48, align 8, !tbaa !48
  %50 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 8
  %51 = load i64, ptr %50, align 8, !tbaa !48
  %52 = or i64 %49, %51
  %53 = or i64 %52, %47
  %54 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 11
  %55 = load i64, ptr %54, align 8, !tbaa !48
  %56 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 12
  %57 = load i64, ptr %56, align 8, !tbaa !48
  %58 = or i64 %55, %57
  %59 = or i64 %58, %47
  %60 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 6
  %61 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 5
  %62 = icmp eq i64 %22, 0
  br i1 %62, label %63, label %65, !prof !50

63:                                               ; preds = %41
  %64 = load i32, ptr %6, align 16, !tbaa !41
  br label %180

65:                                               ; preds = %41
  %66 = getelementptr inbounds [64 x i64], ptr @RookMask, i64 0, i64 %23
  %67 = getelementptr inbounds [64 x i64], ptr @BishopMask, i64 0, i64 %23
  br label %68

68:                                               ; preds = %65, %154
  %69 = phi i32 [ %29, %65 ], [ %131, %154 ]
  %70 = phi i64 [ 1, %65 ], [ %133, %154 ]
  %71 = phi i32 [ %1, %65 ], [ %74, %154 ]
  %72 = phi i64 [ %22, %65 ], [ %157, %154 ]
  %73 = phi i32 [ %42, %65 ], [ %130, %154 ]
  %74 = xor i32 %71, 1
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %102, !prof !51

76:                                               ; preds = %68
  %77 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 1
  %78 = load i64, ptr %77, align 8, !tbaa !48
  %79 = and i64 %78, %72
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %128, !prof !52

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 3
  %83 = load i64, ptr %82, align 8, !tbaa !48
  %84 = and i64 %83, %72
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %128, !prof !53

86:                                               ; preds = %81
  %87 = load i64, ptr %54, align 8, !tbaa !48
  %88 = and i64 %87, %72
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %128, !prof !54

90:                                               ; preds = %86
  %91 = load i64, ptr %48, align 8, !tbaa !48
  %92 = and i64 %91, %72
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %128, !prof !55

94:                                               ; preds = %90
  %95 = load i64, ptr %43, align 8, !tbaa !48
  %96 = and i64 %95, %72
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %128, !prof !56

98:                                               ; preds = %94
  %99 = load i64, ptr %61, align 8, !tbaa !48
  %100 = and i64 %99, %72
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %159, label %128, !prof !57

102:                                              ; preds = %68
  %103 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 2
  %104 = load i64, ptr %103, align 8, !tbaa !48
  %105 = and i64 %104, %72
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %128, !prof !58

107:                                              ; preds = %102
  %108 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 4
  %109 = load i64, ptr %108, align 8, !tbaa !48
  %110 = and i64 %109, %72
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %112, label %128, !prof !59

112:                                              ; preds = %107
  %113 = load i64, ptr %56, align 8, !tbaa !48
  %114 = and i64 %113, %72
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %128, !prof !60

116:                                              ; preds = %112
  %117 = load i64, ptr %50, align 8, !tbaa !48
  %118 = and i64 %117, %72
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %128, !prof !61

120:                                              ; preds = %116
  %121 = load i64, ptr %45, align 8, !tbaa !48
  %122 = and i64 %121, %72
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %128, !prof !62

124:                                              ; preds = %120
  %125 = load i64, ptr %60, align 8, !tbaa !48
  %126 = and i64 %125, %72
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %159, label %128, !prof !63

128:                                              ; preds = %124, %120, %116, %112, %107, %102, %98, %94, %90, %86, %81, %76
  %129 = phi i64 [ %79, %76 ], [ %84, %81 ], [ %88, %86 ], [ %92, %90 ], [ %96, %94 ], [ %100, %98 ], [ %105, %102 ], [ %110, %107 ], [ %114, %112 ], [ %118, %116 ], [ %122, %120 ], [ %126, %124 ]
  %130 = phi i32 [ 85, %76 ], [ 305, %81 ], [ 330, %86 ], [ 490, %90 ], [ 935, %94 ], [ 1000000, %98 ], [ 85, %102 ], [ 305, %107 ], [ 330, %112 ], [ 490, %116 ], [ 935, %120 ], [ 1000000, %124 ]
  %131 = sub i32 %73, %69
  %132 = getelementptr inbounds [32 x i32], ptr %6, i64 0, i64 %70
  store i32 %131, ptr %132, align 4, !tbaa !41
  %133 = add nuw i64 %70, 1
  %134 = sub i64 0, %129
  %135 = and i64 %129, %134
  %136 = load i64, ptr %11, align 8, !tbaa !45
  %137 = xor i64 %136, %135
  store i64 %137, ptr %11, align 8, !tbaa !45
  %138 = load i64, ptr %66, align 8, !tbaa !48
  %139 = and i64 %138, %53
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %145, label %141, !prof !64

141:                                              ; preds = %128
  %142 = tail call noundef i64 @_Z11RookAttacksP7state_ti(ptr noundef nonnull %0, i32 noundef %3) #5
  %143 = and i64 %142, %53
  %144 = or i64 %143, %72
  br label %145

145:                                              ; preds = %141, %128
  %146 = phi i64 [ %144, %141 ], [ %72, %128 ]
  %147 = load i64, ptr %67, align 8, !tbaa !48
  %148 = and i64 %147, %59
  %149 = icmp eq i64 %148, 0
  br i1 %149, label %154, label %150, !prof !65

150:                                              ; preds = %145
  %151 = tail call noundef i64 @_Z13BishopAttacksP7state_ti(ptr noundef nonnull %0, i32 noundef %3) #5
  %152 = and i64 %151, %59
  %153 = or i64 %152, %146
  br label %154

154:                                              ; preds = %150, %145
  %155 = phi i64 [ %153, %150 ], [ %146, %145 ]
  %156 = load i64, ptr %11, align 8, !tbaa !45
  %157 = and i64 %156, %155
  %158 = icmp eq i64 %157, 0
  br i1 %158, label %159, label %68, !prof !66, !llvm.loop !67

159:                                              ; preds = %154, %98, %124
  %160 = phi i64 [ %133, %154 ], [ %70, %98 ], [ %70, %124 ]
  %161 = trunc i64 %160 to i32
  %162 = add nsw i32 %161, -1
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds [32 x i32], ptr %6, i64 0, i64 %163
  %165 = load i32, ptr %164, align 4, !tbaa !41
  %166 = icmp sgt i32 %161, 1
  br i1 %166, label %167, label %180, !prof !69

167:                                              ; preds = %159
  %168 = zext nneg i32 %162 to i64
  br label %169

169:                                              ; preds = %167, %169
  %170 = phi i64 [ %168, %167 ], [ %172, %169 ]
  %171 = phi i32 [ %165, %167 ], [ %178, %169 ]
  %172 = add nsw i64 %170, -1
  %173 = getelementptr inbounds [32 x i32], ptr %6, i64 0, i64 %172
  %174 = load i32, ptr %173, align 4, !tbaa !41
  %175 = sub nsw i32 0, %174
  %176 = icmp sgt i32 %171, %175
  %177 = sub nsw i32 0, %171
  %178 = select i1 %176, i32 %177, i32 %174, !prof !70
  %179 = icmp ugt i64 %170, 1
  br i1 %179, label %169, label %180, !prof !71, !llvm.loop !72

180:                                              ; preds = %169, %63, %159
  %181 = phi i32 [ %165, %159 ], [ %64, %63 ], [ %178, %169 ]
  store i64 %12, ptr %11, align 8, !tbaa !45
  store i64 %15, ptr %14, align 8, !tbaa !48
  br i1 %30, label %189, label %182, !prof !49

182:                                              ; preds = %180
  %183 = sext i32 %4 to i64
  %184 = getelementptr inbounds [14 x i32], ptr @material, i64 0, i64 %183
  %185 = load i32, ptr %184, align 4, !tbaa !41
  %186 = tail call i32 @llvm.abs.i32(i32 %185, i1 true)
  %187 = add i32 %181, -85
  %188 = add i32 %187, %186
  br label %189

189:                                              ; preds = %180, %182
  %190 = phi i32 [ %188, %182 ], [ %181, %180 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %6) #4
  ret i32 %190
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare noundef i64 @_Z10attacks_toP7state_ti(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #3

; Function Attrs: optsize
declare noundef i64 @_Z11RookAttacksP7state_ti(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef i64 @_Z13BishopAttacksP7state_ti(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }
attributes #5 = { optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!39}

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
!35 = distinct !{!36, !37, !38}
!36 = !{ptr @_Z3seeP7state_tiiii, ptr @_Z10attacks_toP7state_ti, i64 1035201207}
!37 = !{ptr @_Z3seeP7state_tiiii, ptr @_Z11RookAttacksP7state_ti, i64 867455940}
!38 = !{ptr @_Z3seeP7state_tiiii, ptr @_Z13BishopAttacksP7state_ti, i64 725718990}
!39 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!40 = !{!"function_entry_count", i64 1035201207}
!41 = !{!42, !42, i64 0}
!42 = !{!"int", !43, i64 0}
!43 = !{!"omnipotent char", !44, i64 0}
!44 = !{!"Simple C++ TBAA"}
!45 = !{!46, !47, i64 264}
!46 = !{!"_ZTS7state_t", !42, i64 0, !43, i64 4, !47, i64 264, !47, i64 272, !47, i64 280, !43, i64 288, !42, i64 392, !42, i64 396, !43, i64 400, !42, i64 452, !42, i64 456, !42, i64 460, !42, i64 464, !42, i64 468, !42, i64 472, !42, i64 476, !47, i64 480, !47, i64 488, !43, i64 496, !43, i64 2544, !43, i64 2800, !43, i64 3056, !47, i64 4080, !47, i64 4088, !42, i64 4096, !43, i64 4100, !42, i64 4356, !42, i64 4360, !42, i64 4364, !42, i64 4368, !42, i64 4372, !42, i64 4376, !42, i64 4380, !42, i64 4384, !42, i64 4388, !42, i64 4392, !43, i64 4400}
!47 = !{!"long long", !43, i64 0}
!48 = !{!47, !47, i64 0}
!49 = !{!"branch_weights", i32 1032342880, i32 2858329}
!50 = !{!"branch_weights", i32 1, i32 613325666}
!51 = !{!"branch_weights", i32 669038700, i32 719977950}
!52 = !{!"branch_weights", i32 586437854, i32 82600847}
!53 = !{!"branch_weights", i32 531489506, i32 54948349}
!54 = !{!"branch_weights", i32 449050501, i32 82439006}
!55 = !{!"branch_weights", i32 344852477, i32 104198025}
!56 = !{!"branch_weights", i32 223880219, i32 120972259}
!57 = !{!"branch_weights", i32 200835600, i32 23044620}
!58 = !{!"branch_weights", i32 639589266, i32 80388685}
!59 = !{!"branch_weights", i32 565181913, i32 74407354}
!60 = !{!"branch_weights", i32 486373408, i32 78808506}
!61 = !{!"branch_weights", i32 371215451, i32 115157958}
!62 = !{!"branch_weights", i32 273169914, i32 98045538}
!63 = !{!"branch_weights", i32 221039943, i32 52129972}
!64 = !{!"branch_weights", i32 255780782, i32 711360327}
!65 = !{!"branch_weights", i32 372012672, i32 595128437}
!66 = !{!"branch_weights", i32 613325666, i32 775690983}
!67 = distinct !{!67, !68}
!68 = !{!"llvm.loop.mustprogress"}
!69 = !{!"branch_weights", i32 2006295687, i32 141187961}
!70 = !{!"branch_weights", i32 756690814, i32 210450295}
!71 = !{!"branch_weights", i32 0, i32 967141108}
!72 = distinct !{!72, !68}
