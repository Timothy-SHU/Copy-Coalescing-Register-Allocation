; ModuleID = 'src/crc_32.c'
source_filename = "src/crc_32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@crc_32_tab = internal unnamed_addr constant [256 x i64] [i64 0, i64 1996959894, i64 3993919788, i64 2567524794, i64 124634137, i64 1886057615, i64 3915621685, i64 2657392035, i64 249268274, i64 2044508324, i64 3772115230, i64 2547177864, i64 162941995, i64 2125561021, i64 3887607047, i64 2428444049, i64 498536548, i64 1789927666, i64 4089016648, i64 2227061214, i64 450548861, i64 1843258603, i64 4107580753, i64 2211677639, i64 325883990, i64 1684777152, i64 4251122042, i64 2321926636, i64 335633487, i64 1661365465, i64 4195302755, i64 2366115317, i64 997073096, i64 1281953886, i64 3579855332, i64 2724688242, i64 1006888145, i64 1258607687, i64 3524101629, i64 2768942443, i64 901097722, i64 1119000684, i64 3686517206, i64 2898065728, i64 853044451, i64 1172266101, i64 3705015759, i64 2882616665, i64 651767980, i64 1373503546, i64 3369554304, i64 3218104598, i64 565507253, i64 1454621731, i64 3485111705, i64 3099436303, i64 671266974, i64 1594198024, i64 3322730930, i64 2970347812, i64 795835527, i64 1483230225, i64 3244367275, i64 3060149565, i64 1994146192, i64 31158534, i64 2563907772, i64 4023717930, i64 1907459465, i64 112637215, i64 2680153253, i64 3904427059, i64 2013776290, i64 251722036, i64 2517215374, i64 3775830040, i64 2137656763, i64 141376813, i64 2439277719, i64 3865271297, i64 1802195444, i64 476864866, i64 2238001368, i64 4066508878, i64 1812370925, i64 453092731, i64 2181625025, i64 4111451223, i64 1706088902, i64 314042704, i64 2344532202, i64 4240017532, i64 1658658271, i64 366619977, i64 2362670323, i64 4224994405, i64 1303535960, i64 984961486, i64 2747007092, i64 3569037538, i64 1256170817, i64 1037604311, i64 2765210733, i64 3554079995, i64 1131014506, i64 879679996, i64 2909243462, i64 3663771856, i64 1141124467, i64 855842277, i64 2852801631, i64 3708648649, i64 1342533948, i64 654459306, i64 3188396048, i64 3373015174, i64 1466479909, i64 544179635, i64 3110523913, i64 3462522015, i64 1591671054, i64 702138776, i64 2966460450, i64 3352799412, i64 1504918807, i64 783551873, i64 3082640443, i64 3233442989, i64 3988292384, i64 2596254646, i64 62317068, i64 1957810842, i64 3939845945, i64 2647816111, i64 81470997, i64 1943803523, i64 3814918930, i64 2489596804, i64 225274430, i64 2053790376, i64 3826175755, i64 2466906013, i64 167816743, i64 2097651377, i64 4027552580, i64 2265490386, i64 503444072, i64 1762050814, i64 4150417245, i64 2154129355, i64 426522225, i64 1852507879, i64 4275313526, i64 2312317920, i64 282753626, i64 1742555852, i64 4189708143, i64 2394877945, i64 397917763, i64 1622183637, i64 3604390888, i64 2714866558, i64 953729732, i64 1340076626, i64 3518719985, i64 2797360999, i64 1068828381, i64 1219638859, i64 3624741850, i64 2936675148, i64 906185462, i64 1090812512, i64 3747672003, i64 2825379669, i64 829329135, i64 1181335161, i64 3412177804, i64 3160834842, i64 628085408, i64 1382605366, i64 3423369109, i64 3138078467, i64 570562233, i64 1426400815, i64 3317316542, i64 2998733608, i64 733239954, i64 1555261956, i64 3268935591, i64 3050360625, i64 752459403, i64 1541320221, i64 2607071920, i64 3965973030, i64 1969922972, i64 40735498, i64 2617837225, i64 3943577151, i64 1913087877, i64 83908371, i64 2512341634, i64 3803740692, i64 2075208622, i64 213261112, i64 2463272603, i64 3855990285, i64 2094854071, i64 198958881, i64 2262029012, i64 4057260610, i64 1759359992, i64 534414190, i64 2176718541, i64 4139329115, i64 1873836001, i64 414664567, i64 2282248934, i64 4279200368, i64 1711684554, i64 285281116, i64 2405801727, i64 4167216745, i64 1634467795, i64 376229701, i64 2685067896, i64 3608007406, i64 1308918612, i64 956543938, i64 2808555105, i64 3495958263, i64 1231636301, i64 1047427035, i64 2932959818, i64 3654703836, i64 1088359270, i64 936918000, i64 2847714899, i64 3736837829, i64 1202900863, i64 817233897, i64 3183342108, i64 3401237130, i64 1404277552, i64 615818150, i64 3134207493, i64 3453421203, i64 1423857449, i64 601450431, i64 3009837614, i64 3294710456, i64 1567103746, i64 711928724, i64 3020668471, i64 3272380065, i64 1510334235, i64 755167117], align 16
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"%08lX %7ld %s\0A\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @updateCRC32(i8 noundef zeroext %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = trunc i64 %1 to i8
  %4 = xor i8 %3, %0
  %5 = zext i8 %4 to i64
  %6 = getelementptr inbounds [256 x i64], ptr @crc_32_tab, i64 0, i64 %5
  %7 = load i64, ptr %6, align 8, !tbaa !5
  %8 = lshr i64 %1, 8
  %9 = xor i64 %7, %8
  ret i64 %9
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @crc32file(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef %2) local_unnamed_addr #1 {
  store i64 0, ptr %2, align 8, !tbaa !5
  %4 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str)
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @getc(ptr noundef nonnull %4)
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %26, label %10

9:                                                ; preds = %3
  tail call void @perror(ptr noundef %0) #6
  br label %33

10:                                               ; preds = %6, %10
  %11 = phi i32 [ %22, %10 ], [ %7, %6 ]
  %12 = phi i64 [ %21, %10 ], [ 4294967295, %6 ]
  %13 = load i64, ptr %2, align 8, !tbaa !5
  %14 = add nsw i64 %13, 1
  store i64 %14, ptr %2, align 8, !tbaa !5
  %15 = zext i32 %11 to i64
  %16 = xor i64 %12, %15
  %17 = and i64 %16, 255
  %18 = getelementptr inbounds [256 x i64], ptr @crc_32_tab, i64 0, i64 %17
  %19 = load i64, ptr %18, align 8, !tbaa !5
  %20 = lshr i64 %12, 8
  %21 = xor i64 %19, %20
  %22 = tail call i32 @getc(ptr noundef nonnull %4)
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %10, !llvm.loop !9

24:                                               ; preds = %10
  %25 = xor i64 %21, -1
  br label %26

26:                                               ; preds = %24, %6
  %27 = phi i64 [ -4294967296, %6 ], [ %25, %24 ]
  %28 = tail call i32 @ferror(ptr noundef nonnull %4) #7
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  tail call void @perror(ptr noundef %0) #6
  store i64 -1, ptr %2, align 8, !tbaa !5
  br label %31

31:                                               ; preds = %30, %26
  %32 = tail call i32 @fclose(ptr noundef nonnull %4)
  store i64 %27, ptr %1, align 8, !tbaa !5
  br label %33

33:                                               ; preds = %31, %9
  %34 = phi i32 [ -1, %9 ], [ 0, %31 ]
  ret i32 %34
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare void @perror(ptr nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind memory(read)
declare noundef i32 @ferror(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @crc32buf(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #5 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %21, label %4

4:                                                ; preds = %2, %4
  %5 = phi i64 [ %15, %4 ], [ 4294967295, %2 ]
  %6 = phi i64 [ %16, %4 ], [ %1, %2 ]
  %7 = phi ptr [ %17, %4 ], [ %0, %2 ]
  %8 = load i8, ptr %7, align 1, !tbaa !11
  %9 = trunc i64 %5 to i8
  %10 = xor i8 %8, %9
  %11 = zext i8 %10 to i64
  %12 = getelementptr inbounds [256 x i64], ptr @crc_32_tab, i64 0, i64 %11
  %13 = load i64, ptr %12, align 8, !tbaa !5
  %14 = lshr i64 %5, 8
  %15 = xor i64 %13, %14
  %16 = add i64 %6, -1
  %17 = getelementptr inbounds i8, ptr %7, i64 1
  %18 = icmp eq i64 %16, 0
  br i1 %18, label %19, label %4, !llvm.loop !12

19:                                               ; preds = %4
  %20 = xor i64 %15, -1
  br label %21

21:                                               ; preds = %19, %2
  %22 = phi i64 [ -4294967296, %2 ], [ %20, %19 ]
  ret i64 %22
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #1 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #7
  %5 = icmp sgt i32 %0, 1
  br i1 %5, label %6, label %23

6:                                                ; preds = %2, %6
  %7 = phi i32 [ %14, %6 ], [ 0, %2 ]
  %8 = phi ptr [ %11, %6 ], [ %1, %2 ]
  %9 = phi i32 [ %10, %6 ], [ %0, %2 ]
  %10 = add nsw i32 %9, -1
  %11 = getelementptr inbounds ptr, ptr %8, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !13
  %13 = call i32 @crc32file(ptr noundef %12, ptr noundef nonnull %3, ptr noundef nonnull %4), !range !15
  %14 = or i32 %13, %7
  %15 = load i64, ptr %3, align 8, !tbaa !5
  %16 = load i64, ptr %4, align 8, !tbaa !5
  %17 = load ptr, ptr %11, align 8, !tbaa !13
  %18 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i64 noundef %15, i64 noundef %16, ptr noundef %17)
  %19 = icmp sgt i32 %9, 2
  br i1 %19, label %6, label %20, !llvm.loop !16

20:                                               ; preds = %6
  %21 = icmp ne i32 %14, 0
  %22 = zext i1 %21 to i32
  br label %23

23:                                               ; preds = %20, %2
  %24 = phi i32 [ 0, %2 ], [ %22, %20 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  ret i32 %24
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"long", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = !{!7, !7, i64 0}
!12 = distinct !{!12, !10}
!13 = !{!14, !14, i64 0}
!14 = !{!"any pointer", !7, i64 0}
!15 = !{i32 -1, i32 1}
!16 = distinct !{!16, !10}
