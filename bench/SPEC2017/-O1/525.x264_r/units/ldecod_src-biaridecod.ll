; ModuleID = 'ldecod_src/biaridecod.c'
source_filename = "ldecod_src/biaridecod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.DecodingEnvironment = type { i32, i32, i32, ptr, ptr }
%struct.BiContextType = type { i16, i8, i8 }

@.str = private unnamed_addr constant [41 x i8] c"arideco_create_decoding_environment: dep\00", align 1
@errortext = external global [300 x i8], align 16
@.str.1 = private unnamed_addr constant [33 x i8] c"Error freeing dep (NULL pointer)\00", align 1
@rLPS_table_64x4 = internal unnamed_addr constant [64 x [4 x i8]] [[4 x i8] c"\80\B0\D0\F0", [4 x i8] c"\80\A7\C5\E3", [4 x i8] c"\80\9E\BB\D8", [4 x i8] c"{\96\B2\CD", [4 x i8] c"t\8E\A9\C3", [4 x i8] c"o\87\A0\B9", [4 x i8] c"i\80\98\AF", [4 x i8] c"dz\90\A6", [4 x i8] c"_t\89\9E", [4 x i8] c"Zn\82\96", [4 x i8] c"Uh{\8E", [4 x i8] c"Qcu\87", [4 x i8] c"M^o\80", [4 x i8] c"IYiz", [4 x i8] c"EUdt", [4 x i8] c"BP_n", [4 x i8] c">LZh", [4 x i8] c";HVc", [4 x i8] c"8EQ^", [4 x i8] c"5AMY", [4 x i8] c"3>IU", [4 x i8] c"0;EP", [4 x i8] c".8BL", [4 x i8] c"+5?H", [4 x i8] c")2;E", [4 x i8] c"'08A", [4 x i8] c"%-6>", [4 x i8] c"#+3;", [4 x i8] c"!)08", [4 x i8] c" '.5", [4 x i8] c"\1E%+2", [4 x i8] c"\1D#)0", [4 x i8] c"\1B!'-", [4 x i8] c"\1A\1F%+", [4 x i8] c"\18\1E#)", [4 x i8] c"\17\1C!'", [4 x i8] c"\16\1B %", [4 x i8] c"\15\1A\1E#", [4 x i8] c"\14\18\1D!", [4 x i8] c"\13\17\1B\1F", [4 x i8] c"\12\16\1A\1E", [4 x i8] c"\11\15\19\1C", [4 x i8] c"\10\14\17\1B", [4 x i8] c"\0F\13\16\19", [4 x i8] c"\0E\12\15\18", [4 x i8] c"\0E\11\14\17", [4 x i8] c"\0D\10\13\16", [4 x i8] c"\0C\0F\12\15", [4 x i8] c"\0C\0E\11\14", [4 x i8] c"\0B\0E\10\13", [4 x i8] c"\0B\0D\0F\12", [4 x i8] c"\0A\0C\0F\11", [4 x i8] c"\0A\0C\0E\10", [4 x i8] c"\09\0B\0D\0F", [4 x i8] c"\09\0B\0C\0E", [4 x i8] c"\08\0A\0C\0E", [4 x i8] c"\08\09\0B\0D", [4 x i8] c"\07\09\0B\0C", [4 x i8] c"\07\09\0A\0C", [4 x i8] c"\07\08\0A\0B", [4 x i8] c"\06\08\09\0B", [4 x i8] c"\06\07\09\0A", [4 x i8] c"\06\07\08\09", [4 x i8] c"\02\02\02\02"], align 16
@AC_next_state_MPS_64 = internal unnamed_addr constant [64 x i8] c"\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123456789:;<=>>?", align 16
@renorm_table_32 = internal unnamed_addr constant [32 x i8] c"\06\05\04\04\03\03\03\03\02\02\02\02\02\02\02\02\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", align 16
@AC_next_state_LPS_64 = internal unnamed_addr constant [64 x i8] c"\00\00\01\02\02\04\04\05\06\07\08\09\09\0B\0B\0C\0D\0D\0F\0F\10\10\12\12\13\13\15\15\16\16\17\18\18\19\1A\1A\1B\1B\1C\1D\1D\1E\1E\1E\1F  !!!\22\22###$$$%%%&&?", align 16

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @arideco_create_decoding_environment() local_unnamed_addr #0 {
  %1 = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #9
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  tail call void @no_mem_exit(ptr noundef nonnull @.str) #10
  br label %4

4:                                                ; preds = %3, %0
  ret ptr %1
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #1

declare void @no_mem_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @arideco_delete_decoding_environment(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(33) @errortext, ptr noundef nonnull align 1 dereferenceable(33) @.str.1, i64 33, i1 false)
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 200) #10
  br label %5

4:                                                ; preds = %1
  tail call void @free(ptr noundef %0) #10
  br label %5

5:                                                ; preds = %4, %3
  ret void
}

declare void @error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @arideco_done_decoding(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.DecodingEnvironment, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = load i32, ptr %3, align 4, !tbaa !40
  %5 = add nsw i32 %4, 1
  store i32 %5, ptr %3, align 4, !tbaa !40
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @getbyte(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.DecodingEnvironment, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !41
  %4 = getelementptr inbounds %struct.DecodingEnvironment, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = load i32, ptr %5, align 4, !tbaa !40
  %7 = add nsw i32 %6, 1
  store i32 %7, ptr %5, align 4, !tbaa !40
  %8 = sext i32 %6 to i64
  %9 = getelementptr inbounds i8, ptr %3, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !42
  %11 = zext i8 %10 to i32
  ret i32 %11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @getword(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.DecodingEnvironment, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = load i32, ptr %3, align 4, !tbaa !40
  %5 = add nsw i32 %4, 2
  store i32 %5, ptr %3, align 4, !tbaa !40
  %6 = getelementptr inbounds %struct.DecodingEnvironment, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !41
  %8 = sext i32 %4 to i64
  %9 = getelementptr inbounds i8, ptr %7, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !42
  %11 = zext i8 %10 to i32
  %12 = shl nuw nsw i32 %11, 8
  %13 = getelementptr i8, ptr %9, i64 1
  %14 = load i8, ptr %13, align 1, !tbaa !42
  %15 = zext i8 %14 to i32
  %16 = or disjoint i32 %12, %15
  ret i32 %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @arideco_start_decoding(ptr nocapture noundef writeonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #5 {
  %5 = getelementptr inbounds %struct.DecodingEnvironment, ptr %0, i64 0, i32 3
  store ptr %1, ptr %5, align 8, !tbaa !41
  %6 = getelementptr inbounds %struct.DecodingEnvironment, ptr %0, i64 0, i32 4
  store ptr %3, ptr %6, align 8, !tbaa !34
  %7 = add nsw i32 %2, 1
  store i32 %7, ptr %3, align 4, !tbaa !40
  %8 = sext i32 %2 to i64
  %9 = getelementptr inbounds i8, ptr %1, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !42
  %11 = zext i8 %10 to i32
  %12 = getelementptr inbounds %struct.DecodingEnvironment, ptr %0, i64 0, i32 1
  store i32 %11, ptr %12, align 4, !tbaa !43
  %13 = shl nuw nsw i32 %11, 16
  %14 = load i32, ptr %3, align 4, !tbaa !40
  %15 = add nsw i32 %14, 2
  store i32 %15, ptr %3, align 4, !tbaa !40
  %16 = sext i32 %14 to i64
  %17 = getelementptr inbounds i8, ptr %1, i64 %16
  %18 = load i8, ptr %17, align 1, !tbaa !42
  %19 = zext i8 %18 to i32
  %20 = shl nuw nsw i32 %19, 8
  %21 = getelementptr i8, ptr %17, i64 1
  %22 = load i8, ptr %21, align 1, !tbaa !42
  %23 = zext i8 %22 to i32
  %24 = or disjoint i32 %13, %23
  %25 = or disjoint i32 %24, %20
  store i32 %25, ptr %12, align 4, !tbaa !43
  %26 = getelementptr inbounds %struct.DecodingEnvironment, ptr %0, i64 0, i32 2
  store i32 15, ptr %26, align 8, !tbaa !44
  store i32 510, ptr %0, align 8, !tbaa !45
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @arideco_bits_read(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.DecodingEnvironment, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = load i32, ptr %3, align 4, !tbaa !40
  %5 = shl i32 %4, 3
  %6 = getelementptr inbounds %struct.DecodingEnvironment, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !44
  %8 = sub nsw i32 %5, %7
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @biari_decode_symbol(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.BiContextType, ptr %1, i64 0, i32 1
  %4 = load i8, ptr %3, align 2, !tbaa !46
  %5 = zext i8 %4 to i32
  %6 = getelementptr inbounds %struct.DecodingEnvironment, ptr %0, i64 0, i32 1
  %7 = load i16, ptr %1, align 2, !tbaa !49
  %8 = zext i16 %7 to i64
  %9 = load i32, ptr %0, align 4, !tbaa !40
  %10 = lshr i32 %9, 6
  %11 = and i32 %10, 3
  %12 = zext nneg i32 %11 to i64
  %13 = getelementptr inbounds [64 x [4 x i8]], ptr @rLPS_table_64x4, i64 0, i64 %8, i64 %12
  %14 = load i8, ptr %13, align 1, !tbaa !42
  %15 = zext i8 %14 to i32
  %16 = getelementptr inbounds %struct.DecodingEnvironment, ptr %0, i64 0, i32 2
  %17 = sub i32 %9, %15
  store i32 %17, ptr %0, align 4, !tbaa !40
  %18 = load i32, ptr %6, align 4, !tbaa !40
  %19 = load i32, ptr %16, align 4, !tbaa !40
  %20 = shl i32 %17, %19
  %21 = icmp ult i32 %18, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %2
  %23 = getelementptr inbounds [64 x i8], ptr @AC_next_state_MPS_64, i64 0, i64 %8
  %24 = load i8, ptr %23, align 1, !tbaa !42
  %25 = zext i8 %24 to i16
  store i16 %25, ptr %1, align 2, !tbaa !49
  %26 = icmp ugt i32 %17, 255
  br i1 %26, label %73, label %27

27:                                               ; preds = %22
  %28 = shl nuw nsw i32 %17, 1
  store i32 %28, ptr %0, align 4, !tbaa !40
  %29 = add nsw i32 %19, -1
  store i32 %29, ptr %16, align 4, !tbaa !40
  br label %47

30:                                               ; preds = %2
  %31 = lshr i32 %15, 3
  %32 = zext nneg i32 %31 to i64
  %33 = getelementptr inbounds [32 x i8], ptr @renorm_table_32, i64 0, i64 %32
  %34 = load i8, ptr %33, align 1, !tbaa !42
  %35 = zext i8 %34 to i32
  %36 = sub i32 %18, %20
  store i32 %36, ptr %6, align 4, !tbaa !40
  %37 = shl i32 %15, %35
  store i32 %37, ptr %0, align 4, !tbaa !40
  %38 = sub nsw i32 %19, %35
  store i32 %38, ptr %16, align 4, !tbaa !40
  %39 = xor i32 %5, 1
  %40 = icmp eq i16 %7, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %30
  %42 = xor i8 %4, 1
  store i8 %42, ptr %3, align 2, !tbaa !46
  br label %43

43:                                               ; preds = %41, %30
  %44 = getelementptr inbounds [64 x i8], ptr @AC_next_state_LPS_64, i64 0, i64 %8
  %45 = load i8, ptr %44, align 1, !tbaa !42
  %46 = zext i8 %45 to i16
  store i16 %46, ptr %1, align 2, !tbaa !49
  br label %47

47:                                               ; preds = %43, %27
  %48 = phi i32 [ %5, %27 ], [ %39, %43 ]
  %49 = load i32, ptr %16, align 4, !tbaa !40
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %73, label %51

51:                                               ; preds = %47
  %52 = load i32, ptr %6, align 4, !tbaa !40
  %53 = shl i32 %52, 16
  store i32 %53, ptr %6, align 4, !tbaa !40
  %54 = getelementptr inbounds %struct.DecodingEnvironment, ptr %0, i64 0, i32 4
  %55 = load ptr, ptr %54, align 8, !tbaa !34
  %56 = load i32, ptr %55, align 4, !tbaa !40
  %57 = add nsw i32 %56, 2
  store i32 %57, ptr %55, align 4, !tbaa !40
  %58 = getelementptr inbounds %struct.DecodingEnvironment, ptr %0, i64 0, i32 3
  %59 = load ptr, ptr %58, align 8, !tbaa !41
  %60 = sext i32 %56 to i64
  %61 = getelementptr inbounds i8, ptr %59, i64 %60
  %62 = load i8, ptr %61, align 1, !tbaa !42
  %63 = zext i8 %62 to i32
  %64 = shl nuw nsw i32 %63, 8
  %65 = getelementptr i8, ptr %61, i64 1
  %66 = load i8, ptr %65, align 1, !tbaa !42
  %67 = zext i8 %66 to i32
  %68 = or disjoint i32 %64, %67
  %69 = load i32, ptr %6, align 4, !tbaa !40
  %70 = or i32 %68, %69
  store i32 %70, ptr %6, align 4, !tbaa !40
  %71 = load i32, ptr %16, align 4, !tbaa !40
  %72 = add nsw i32 %71, 16
  store i32 %72, ptr %16, align 4, !tbaa !40
  br label %73

73:                                               ; preds = %47, %22, %51
  %74 = phi i32 [ %48, %51 ], [ %5, %22 ], [ %48, %47 ]
  ret i32 %74
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @biari_decode_symbol_eq_prob(ptr nocapture noundef %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.DecodingEnvironment, ptr %0, i64 0, i32 1
  %3 = getelementptr inbounds %struct.DecodingEnvironment, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !40
  %5 = add nsw i32 %4, -1
  store i32 %5, ptr %3, align 4, !tbaa !40
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %26

7:                                                ; preds = %1
  %8 = load i32, ptr %2, align 4, !tbaa !40
  %9 = shl i32 %8, 16
  %10 = getelementptr inbounds %struct.DecodingEnvironment, ptr %0, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = load i32, ptr %11, align 4, !tbaa !40
  %13 = add nsw i32 %12, 2
  store i32 %13, ptr %11, align 4, !tbaa !40
  %14 = getelementptr inbounds %struct.DecodingEnvironment, ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !41
  %16 = sext i32 %12 to i64
  %17 = getelementptr inbounds i8, ptr %15, i64 %16
  %18 = load i8, ptr %17, align 1, !tbaa !42
  %19 = zext i8 %18 to i32
  %20 = shl nuw nsw i32 %19, 8
  %21 = getelementptr i8, ptr %17, i64 1
  %22 = load i8, ptr %21, align 1, !tbaa !42
  %23 = zext i8 %22 to i32
  %24 = or disjoint i32 %9, %23
  %25 = or disjoint i32 %24, %20
  store i32 %25, ptr %2, align 4, !tbaa !40
  store i32 16, ptr %3, align 4, !tbaa !40
  br label %26

26:                                               ; preds = %7, %1
  %27 = load i32, ptr %2, align 4, !tbaa !40
  %28 = load i32, ptr %0, align 8, !tbaa !45
  %29 = load i32, ptr %3, align 4, !tbaa !40
  %30 = shl i32 %28, %29
  %31 = sub i32 %27, %30
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %26
  store i32 %31, ptr %2, align 4, !tbaa !40
  br label %34

34:                                               ; preds = %26, %33
  %35 = phi i32 [ 1, %33 ], [ 0, %26 ]
  ret i32 %35
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @biari_decode_final(ptr nocapture noundef %0) local_unnamed_addr #4 {
  %2 = load i32, ptr %0, align 8, !tbaa !45
  %3 = add i32 %2, -2
  %4 = getelementptr inbounds %struct.DecodingEnvironment, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !43
  %6 = getelementptr inbounds %struct.DecodingEnvironment, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !44
  %8 = shl i32 %3, %7
  %9 = sub i32 %5, %8
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %36

11:                                               ; preds = %1
  %12 = icmp ugt i32 %3, 255
  br i1 %12, label %13, label %14

13:                                               ; preds = %11
  store i32 %3, ptr %0, align 8, !tbaa !45
  br label %36

14:                                               ; preds = %11
  %15 = shl nuw nsw i32 %3, 1
  store i32 %15, ptr %0, align 8, !tbaa !45
  %16 = add nsw i32 %7, -1
  store i32 %16, ptr %6, align 8, !tbaa !44
  %17 = icmp sgt i32 %7, 1
  br i1 %17, label %36, label %18

18:                                               ; preds = %14
  %19 = shl i32 %5, 16
  %20 = getelementptr inbounds %struct.DecodingEnvironment, ptr %0, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !34
  %22 = load i32, ptr %21, align 4, !tbaa !40
  %23 = add nsw i32 %22, 2
  store i32 %23, ptr %21, align 4, !tbaa !40
  %24 = getelementptr inbounds %struct.DecodingEnvironment, ptr %0, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !41
  %26 = sext i32 %22 to i64
  %27 = getelementptr inbounds i8, ptr %25, i64 %26
  %28 = load i8, ptr %27, align 1, !tbaa !42
  %29 = zext i8 %28 to i32
  %30 = shl nuw nsw i32 %29, 8
  %31 = getelementptr i8, ptr %27, i64 1
  %32 = load i8, ptr %31, align 1, !tbaa !42
  %33 = zext i8 %32 to i32
  %34 = or disjoint i32 %19, %33
  %35 = or disjoint i32 %34, %30
  store i32 %35, ptr %4, align 4, !tbaa !43
  store i32 16, ptr %6, align 8, !tbaa !44
  br label %36

36:                                               ; preds = %1, %14, %18, %13
  %37 = phi i32 [ 0, %13 ], [ 0, %18 ], [ 0, %14 ], [ 1, %1 ]
  ret i32 %37
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @biari_init_context(i32 noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #5 {
  %4 = load i8, ptr %2, align 1, !tbaa !42
  %5 = sext i8 %4 to i32
  %6 = mul nsw i32 %5, %0
  %7 = ashr i32 %6, 4
  %8 = getelementptr inbounds i8, ptr %2, i64 1
  %9 = load i8, ptr %8, align 1, !tbaa !42
  %10 = sext i8 %9 to i32
  %11 = add nsw i32 %7, %10
  %12 = icmp sgt i32 %11, 63
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = tail call i32 @llvm.smin.i32(i32 %11, i32 126)
  %15 = trunc i32 %14 to i16
  %16 = add nsw i16 %15, -64
  br label %21

17:                                               ; preds = %3
  %18 = tail call i32 @llvm.smax.i32(i32 %11, i32 1)
  %19 = trunc i32 %18 to i16
  %20 = sub i16 63, %19
  br label %21

21:                                               ; preds = %17, %13
  %22 = phi i16 [ %20, %17 ], [ %16, %13 ]
  %23 = phi i8 [ 0, %17 ], [ 1, %13 ]
  %24 = getelementptr inbounds %struct.BiContextType, ptr %1, i64 0, i32 1
  store i16 %22, ptr %1, align 2, !tbaa !50
  store i8 %23, ptr %24, align 2, !tbaa !46
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind allocsize(0,1) }
attributes #10 = { nounwind }

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
!34 = !{!35, !39, i64 24}
!35 = !{!"", !36, i64 0, !36, i64 4, !36, i64 8, !39, i64 16, !39, i64 24}
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"any pointer", !37, i64 0}
!40 = !{!36, !36, i64 0}
!41 = !{!35, !39, i64 16}
!42 = !{!37, !37, i64 0}
!43 = !{!35, !36, i64 4}
!44 = !{!35, !36, i64 8}
!45 = !{!35, !36, i64 0}
!46 = !{!47, !37, i64 2}
!47 = !{!"", !48, i64 0, !37, i64 2, !37, i64 3}
!48 = !{!"short", !37, i64 0}
!49 = !{!48, !48, i64 0}
!50 = !{!47, !48, i64 0}
