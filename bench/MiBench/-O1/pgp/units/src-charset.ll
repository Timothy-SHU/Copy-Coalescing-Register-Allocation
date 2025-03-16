; ModuleID = 'src/charset.c'
source_filename = "src/charset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@CONVERSION = dso_local local_unnamed_addr global i32 0, align 4
@charset = dso_local global [16 x i8] zeroinitializer, align 16
@ext_c_ptr = dso_local local_unnamed_addr global ptr null, align 8
@int_c_ptr = internal unnamed_addr global ptr null, align 8
@language = external global [0 x i8], align 1
@.str = private unnamed_addr constant [3 x i8] c"ru\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"koi8\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"noconv\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"latin1\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"cp850\00", align 1
@intern2cp850 = internal global [128 x i8] c"\BA\CD\C9\BB\C8\BC\CC\B9\CB\CA\CE\DF\DC\DB\FE\F2\B3\C4\DA\BF\C0\D9\C3\B4\C2\C1\C5\B0\B1\B2\D5\9F\FF\AD\BD\9C\CF\BE\DD\F5\F9\B8\A6\AE\AA\F0\A9\EE\F8\F1\FD\FC\EF\E6\F4\FA\F7\FB\A7\AF\AC\AB\F3\A8\B7\B5\B6\C7\8E\8F\92\80\D4\90\D2\D3\DE\D6\D7\D8\D1\A5\E3\E0\E2\E5\99\9E\9D\EB\E9\EA\9A\ED\E8\E1\85\A0\83\C6\84\86\91\87\8A\82\88\89\8D\A1\8C\8B\D0\A4\95\A2\93\E4\94\F6\9B\97\A3\96\81\EC\E7\98", align 16
@cp8502intern = internal global [128 x i8] c"\C7\FC\E9\E2\E4\E0\E5\E7\EA\EB\E8\EF\EE\EC\C4\C5\C9\E6\C6\F4\F6\F2\FB\F9\FF\D6\DC\F8\A3\D8\D7\9F\E1\ED\F3\FA\F1\D1\AA\BA\BF\AE\AC\BD\BC\A1\AB\BB\9B\9C\9D\90\97\C1\C2\C0\A9\87\80\83\85\A2\A5\93\94\99\98\96\91\9A\E3\C3\84\82\89\88\86\81\8A\A4\F0\D0\CA\CB\C8\9E\CD\CE\CF\95\92\8D\8C\A6\CC\8B\D3\DF\D4\D2\F5\D5\B5\FE\DE\DA\DB\D9\FD\DD\AF\B4\AD\B1\8F\BE\B6\A7\F7\B8\B0\A8\B7\B9\B3\B2\8E\A0", align 16
@.str.5 = private unnamed_addr constant [6 x i8] c"cp852\00", align 1
@intern2cp852 = internal global [128 x i8] c"\BA\CD\C9\BB\C8\BC\CC\B9\CB\CA\CE\DF\DC\DB\FE?\B3\C4\DA\BF\C0\D9\C3\B4\C2\C1\C5\B0\B1\B2??\FF\A4\F4\9D\CF\95\97\F5\F9\E6\B8\9B\8D\F0\A6\BD\F8\A5\F7\88\EF\96\97\F3\F2\E7\AD\9C\AB\F1\A7\BE\E8\B5\B6\C6\8E\91\8F\80\AC\90\A8\D3\B7\D6I\D2\D1\E3\D5\E0\E2\8A\99\9E\FC\DE\E9\EB\9A\ED\DD\E1\EA\A0\83\C7\84\92\86\87\9F\82\A9\89\D8\A1\8C\D4\D0\E4\E5\A2\93\8B\94\F6\FD\85\A3\FB\81\EC\EE\FA", align 16
@cp8522intern = internal global [128 x i8] c"\C7\FC\E9\E2\E4\F9\E6\E7\B3\EB\D5\F5\EE\AC\C4\C6\C9\C5\E5\F4\F6\A5\B5\A6\B6\D6\DC\AB\BB\A3\D7\E8\E1\ED\F3\FA\A1\B1\AE\BE\CA\EA?\BC\C8\BA<>\9B\9C\9D\90\97\C1\C2\CC\AA\87\80\83\85\AF\BF\93\94\99\98\96\91\9A\C3\E3\84\82\89\88\86\81\8A\A4\F0\D0\CF\CB\EF\D2\CDU\EC\95\92\8D\8C\DE\D9\8B\D3\DF\D4\D1\F1\F2\A9\B9\C0\DA\E0\DB\FD\DD\FE\B4\AD\BD\B8\B7\A2\A7\F7\B2\B0\A8\FF\FB\D8\F8\8E\A0", align 16
@.str.6 = private unnamed_addr constant [6 x i8] c"cp860\00", align 1
@intern2cp860 = internal global [128 x i8] c"\BA\CD\C9\BB\C8\BC\CC\B9\CB\CA\CE\DF\DC\DB\FE_\B3\C4\DA\BF\C0\D9\C3\B4\C2\C1\C5\B0\B1\B2??\FF\AD\9B\9C$Y|P\22C\A6\AE\AA-R_\F8\F1\FD3'\E6-\FA,1\A7\AF\AC\AB?\A8\91\86\8F\8EAAA\80\92\90\89E\98\8BIID\A5\A9\9F\8C\99OxO\9D\96U\9AYT\E1\85\A0\83\84aaa\87\8A\82\88e\8D\A1iid\A4\95\A2\93\94o\F6o\97\A3u\81yty", align 16
@cp8602intern = internal global [128 x i8] c"\C7\FC\E9\E2\E3\E0\C1\E7\EA\CA\E8\CD\D4\EC\C3\C2\C9\C0\C8\F4\F5\F2\DA\F9\CC\D5\DC\A2\A3\D9\A4\D3\E1\ED\F3\FA\F1\D1\AA\BA\BF\D2\AC\BD\BC\A1\AB\BB\9B\9C\9D\90\97\97\87\93\83\87\80\83\85\95\85\93\94\99\98\96\91\9A\96\86\84\82\89\88\86\81\8A\89\99\88\98\94\84\82\92\9A\8A\95\92\8D\8C\8D\8D\8B?\DF????\B5?????????=?????\F7~\B0\B7\B7?n\B2\8E\A0", align 16
@.str.7 = private unnamed_addr constant [6 x i8] c"cp866\00", align 1
@intern2alt = internal global [128 x i8] c"\C4\B3\DA\BF\C0\D9\C3\B4\C2\C1\C5\DF\DC\DB\DD\DE\B0\B1\B2\F4\FE\F9\FB\F7\F3\F2\FF\F5\F8\FD\FA\F6\CD\BA\D5\F1\D6\C9\B8\B7\BB\D4\D3\C8\BE\BD\BC\C6\C7\CC\B5\F0\B6\B9\D1\D2\CB\CF\D0\CA\D8\D7\CE\FC\EE\A0\A1\E6\A4\A5\E4\A3\E5\A8\A9\AA\AB\AC\AD\AE\AF\EF\E0\E1\E2\E3\A6\A2\EC\EB\A7\E8\ED\E9\E7\EA\9E\80\81\96\84\85\94\83\95\88\89\8A\8B\8C\8D\8E\8F\9F\90\91\92\93\86\82\9C\9B\87\98\9D\99\97\9A", align 16
@alt2intern = internal global [128 x i8] c"\E1\E2\F7\E7\E4\E5\F6\FA\E9\EA\EB\EC\ED\EE\EF\F0\F2\F3\F4\F5\E6\E8\E3\FE\FB\FD\FF\F9\F8\FC\E0\F1\C1\C2\D7\C7\C4\C5\D6\DA\C9\CA\CB\CC\CD\CE\CF\D0\90\91\92\81\87\B2\B4\A7\A6\B5\A1\A8\AE\AD\AC\83\84\89\88\86\80\8A\AF\B0\AB\A5\BB\B8\B1\A0\BE\B9\BA\B6\B7\AA\A9\A2\A4\BD\BC\85\82\8D\8C\8E\8F\8B\D2\D3\D4\D5\C6\C8\C3\DE\DB\DD\DF\D9\D8\DC\C0\D1\B3\A3\99\98\93\9B\9F\97\9C\95\9E\96\BF\9D\94\9A", align 16
@.str.8 = private unnamed_addr constant [10 x i8] c"alt_codes\00", align 1
@intern2keybcs = internal global [128 x i8] c"?????????????????????????????????A?L?\9CS\AD?\9BS\86Z?\92Z\F8??l?\8Cs??\A8s\9Fz?\91z\AB\8FAA\8E\8ACC\80\90EE\89\8BI\85DN\A5\95\A7O\99?\9E\A6\97U\9A\9DT\E1\AA\A0aa\84\8Dcc\87\82e?\88\A1i\83dn\A4\A2\93o\94?\A9\96\A3u\81\98t?", align 16
@keybcs2intern = internal global [128 x i8] c"\C8\FC\E9\EF\E4\CF\AB\E8\EC\CC\C5\CD\B5\E5\C4\C1\C9\BE\AE\F4\F6\D3\F9\DA\FD\D6\DC\A9\A5\DD\D8\BB\E1\ED\F3\FA\F2\D2\D9\D4\B9\F8\E0\C0?\A7???????????????????????????????????????????????????\DF??????????????????????\B0???????", align 16
@.str.10 = private unnamed_addr constant [5 x i8] c"next\00", align 1
@intern2next = internal global [128 x i8] c"????????????????\C0\C1\C2\C3\C4\C5\C6\C7\C8?\CA\CB?\BA\CE\A7?\A1\A2\A3\A8\A5\B5?\C8\A0\E3\AB\BE\B1\B0\D0\CA\D1\C9\CC\B8\9D\B6\B7\CB\C0?\BB\D2\D3\D4\BF\81\82\83\84\85\86\E1\87\88\89\8A\8B\8C\8D\8E\8F\90\91\92\93\94\95\96\9E\E9\97\98\99\9A\9B\9C\FB\D5\D6\D7\D8\D9\DA\F1\DB\DC\DD\DE\DF\E0\E2\E4\E5\E6\E7\EC\ED\EE\EF\F0\9F\F9\F2\F3\F4\F6\F7\FC\FD", align 16
@next2intern = internal global [128 x i8] c"?\C0\C1\C2\C3\C4\C5\C7\C8\C9\CA\CB\CC\CD\CE\CF\D0\D1\D2\D3\D4\D5\D6\D9\DA\DB\DC\DD\DE\B5\DF\B7\A9\A1\A2\A3/\A5f\A7\A4`\22\AB<>??\AE\AD??.\A6\B6\B7,\22\9D\BB??\AC\BF\90\91\92\93\94\95\96\9A\98\B2\97\B8\B3\22\9E\96\AF\B1\BC\BD\BE\E0\E1\E2\E3\E4\E5\E7\E8\E9\EA\EB\EC\C6\ED\AA\EE\EF\F5\F1\A3\D8?\BA\F2\F3\F4\F5\F6\E6\F9\FA\FBi\FC\FDl\F8?\DF\FE\FF??", align 16
@intern2mac = internal global [128 x i8] c"????????????????????????????????\CA\C1\A2\A3\D9\B4|\A4\AC\A9\BB\C7\C2\D1\A8_\BC\B123\AB\B5\A6\A5,1\A1\C8???\C0\CB\87\81\CC\80\81\AE\82\8F\83\90\91\93\92\94\95D\84\98\97\99\CD\85x\AF\9D\9C\9E\86YT\A7\88\87\89\8B\8A\8Ca\8D\8F\8E\90\91\93\92\94\95d\96\98\97\99\9B\9A\D6\BF\9D\9C\9E\9Fyt\D8", align 16
@mac2intern = internal global [128 x i8] c"\C4\C5\C7\C9\D1\D6\DC\E1\E0\E2\E4\E3\E5\E7\E9\E8\EA\EB\ED\EC\EE\EF\F1\F3\F2\F4\F6\F5\FA\F9\FB\FC?\BA\A2\A3\A7\B7\B6\DF\AE\A9?\B4\A8?\C6\D8?\B1??\A5\B5dSPpS\AA\B0O\E6\F8\BF\A1\AC?f~D\AB\BB?\A0\C0\C3\D5Oo-\AD\22\22`'\F7?\FF???????????????????????????????????????", align 16
@.str.12 = private unnamed_addr constant [6 x i8] c"ascii\00", align 1
@intern2ascii = internal global [128 x i8] c"???????????????????????????????? !c#$Y|P\22Ca\22~-R_o?23'u--,1o\22????AAAAAAACEEEEIIIIDNOOOOOxOUUUUYTsaaaaaaaceeeeiiiidnooooo/ouuuuyty", align 16
@stderr = external local_unnamed_addr global ptr, align 8
@.str.13 = private unnamed_addr constant [33 x i8] c"Unsupported character set: '%s'\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @init_charset() local_unnamed_addr #0 {
  store ptr null, ptr @ext_c_ptr, align 8, !tbaa !5
  store ptr null, ptr @int_c_ptr, align 8, !tbaa !5
  %1 = load i8, ptr @charset, align 16, !tbaa !9
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %3, label %8

3:                                                ; preds = %0
  %4 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) @language, ptr noundef nonnull dereferenceable(3) @.str) #9
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(5) @charset, ptr noundef nonnull align 1 dereferenceable(5) @.str.1, i64 5, i1 false) #10
  br label %10

7:                                                ; preds = %3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(7) @charset, ptr noundef nonnull align 1 dereferenceable(7) @.str.2, i64 7, i1 false) #10
  br label %10

8:                                                ; preds = %0
  %9 = tail call ptr @strlwr(ptr noundef nonnull @charset) #10
  br label %10

10:                                               ; preds = %6, %7, %8
  %11 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) @charset, ptr noundef nonnull dereferenceable(7) @.str.3, i64 7)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %59, label %13

13:                                               ; preds = %10
  %14 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(5) @charset, ptr noundef nonnull dereferenceable(5) @.str.1, i64 5)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %59, label %16

16:                                               ; preds = %13
  %17 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) @charset, ptr noundef nonnull dereferenceable(7) @.str.2, i64 7)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %59, label %19

19:                                               ; preds = %16
  %20 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(6) @charset, ptr noundef nonnull dereferenceable(6) @.str.4, i64 6)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store ptr @intern2cp850, ptr @ext_c_ptr, align 8, !tbaa !5
  store ptr @cp8502intern, ptr @int_c_ptr, align 8, !tbaa !5
  br label %59

23:                                               ; preds = %19
  %24 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(6) @charset, ptr noundef nonnull dereferenceable(6) @.str.5, i64 6)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store ptr @intern2cp852, ptr @ext_c_ptr, align 8, !tbaa !5
  store ptr @cp8522intern, ptr @int_c_ptr, align 8, !tbaa !5
  br label %59

27:                                               ; preds = %23
  %28 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(6) @charset, ptr noundef nonnull dereferenceable(6) @.str.6, i64 6)
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store ptr @intern2cp860, ptr @ext_c_ptr, align 8, !tbaa !5
  store ptr @cp8602intern, ptr @int_c_ptr, align 8, !tbaa !5
  br label %59

31:                                               ; preds = %27
  %32 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(6) @charset, ptr noundef nonnull dereferenceable(6) @.str.7, i64 6)
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store ptr @intern2alt, ptr @ext_c_ptr, align 8, !tbaa !5
  store ptr @alt2intern, ptr @int_c_ptr, align 8, !tbaa !5
  br label %59

35:                                               ; preds = %31
  %36 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(10) @charset, ptr noundef nonnull dereferenceable(10) @.str.8, i64 10)
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store ptr @intern2alt, ptr @ext_c_ptr, align 8, !tbaa !5
  store ptr @alt2intern, ptr @int_c_ptr, align 8, !tbaa !5
  br label %59

39:                                               ; preds = %35
  %40 = load i64, ptr @charset, align 16
  %41 = icmp eq i64 %40, 14200619526612331
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store ptr @intern2keybcs, ptr @ext_c_ptr, align 8, !tbaa !5
  store ptr @keybcs2intern, ptr @int_c_ptr, align 8, !tbaa !5
  br label %59

43:                                               ; preds = %39
  %44 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(5) @charset, ptr noundef nonnull dereferenceable(5) @.str.10, i64 5)
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store ptr @intern2next, ptr @ext_c_ptr, align 8, !tbaa !5
  store ptr @next2intern, ptr @int_c_ptr, align 8, !tbaa !5
  br label %59

47:                                               ; preds = %43
  %48 = load i32, ptr @charset, align 16
  %49 = icmp eq i32 %48, 6513005
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  store ptr @intern2mac, ptr @ext_c_ptr, align 8, !tbaa !5
  store ptr @mac2intern, ptr @int_c_ptr, align 8, !tbaa !5
  br label %59

51:                                               ; preds = %47
  %52 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(6) @charset, ptr noundef nonnull dereferenceable(6) @.str.12, i64 6)
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  store ptr @intern2ascii, ptr @ext_c_ptr, align 8, !tbaa !5
  br label %59

55:                                               ; preds = %51
  %56 = load ptr, ptr @stderr, align 8, !tbaa !5
  %57 = tail call ptr @LANG(ptr noundef nonnull @.str.13) #10
  %58 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %56, ptr noundef %57, ptr noundef nonnull @charset) #11
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(7) @charset, ptr noundef nonnull align 1 dereferenceable(7) @.str.2, i64 7, i1 false) #10
  br label %59

59:                                               ; preds = %26, %34, %42, %50, %55, %54, %46, %38, %30, %10, %13, %16, %22
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #1

declare ptr @strlwr(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

declare ptr @LANG(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local signext i8 @EXT_C(i8 noundef signext %0) local_unnamed_addr #4 {
  %2 = icmp slt i8 %0, 0
  %3 = load ptr, ptr @ext_c_ptr, align 8
  %4 = icmp ne ptr %3, null
  %5 = select i1 %2, i1 %4, i1 false
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = and i8 %0, 127
  %8 = zext nneg i8 %7 to i64
  %9 = getelementptr inbounds i8, ptr %3, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !9
  br label %11

11:                                               ; preds = %1, %6
  %12 = phi i8 [ %10, %6 ], [ %0, %1 ]
  ret i8 %12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local signext i8 @INT_C(i8 noundef signext %0) local_unnamed_addr #4 {
  %2 = icmp slt i8 %0, 0
  %3 = load ptr, ptr @int_c_ptr, align 8
  %4 = icmp ne ptr %3, null
  %5 = select i1 %2, i1 %4, i1 false
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = and i8 %0, 127
  %8 = zext nneg i8 %7 to i64
  %9 = getelementptr inbounds i8, ptr %3, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !9
  br label %11

11:                                               ; preds = %1, %6
  %12 = phi i8 [ %10, %6 ], [ %0, %1 ]
  ret i8 %12
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @to_upper(i32 noundef %0) local_unnamed_addr #5 {
  %2 = and i32 %0, 255
  %3 = tail call ptr @__ctype_b_loc() #12
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = zext nneg i32 %2 to i64
  %6 = getelementptr inbounds i16, ptr %4, i64 %5
  %7 = load i16, ptr %6, align 2, !tbaa !10
  %8 = and i16 %7, 512
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %1
  %11 = tail call ptr @__ctype_toupper_loc() #12
  %12 = load ptr, ptr %11, align 8, !tbaa !5
  %13 = zext nneg i32 %2 to i64
  %14 = getelementptr inbounds i32, ptr %12, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !12
  br label %16

16:                                               ; preds = %10, %1
  %17 = phi i32 [ %2, %1 ], [ %15, %10 ]
  ret i32 %17
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_toupper_loc() local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @to_lower(i32 noundef %0) local_unnamed_addr #5 {
  %2 = and i32 %0, 255
  %3 = tail call ptr @__ctype_b_loc() #12
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = zext nneg i32 %2 to i64
  %6 = getelementptr inbounds i16, ptr %4, i64 %5
  %7 = load i16, ptr %6, align 2, !tbaa !10
  %8 = and i16 %7, 256
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %1
  %11 = tail call ptr @__ctype_tolower_loc() #12
  %12 = load ptr, ptr %11, align 8, !tbaa !5
  %13 = zext nneg i32 %2 to i64
  %14 = getelementptr inbounds i32, ptr %12, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !12
  br label %16

16:                                               ; preds = %10, %1
  %17 = phi i32 [ %2, %1 ], [ %15, %10 ]
  ret i32 %17
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_tolower_loc() local_unnamed_addr #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nofree nounwind willreturn memory(argmem: read) }
attributes #9 = { nounwind willreturn memory(read) }
attributes #10 = { nounwind }
attributes #11 = { cold }
attributes #12 = { nounwind willreturn memory(none) }

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
!9 = !{!7, !7, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"short", !7, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !7, i64 0}
