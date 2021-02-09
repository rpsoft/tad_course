# tad_course
Text As Data Course Material

Reddit datasets with sentiment extraction added

## Data Columns
* subreddit: The subreddit thread name

* title: Title of the subreddit thread

* url: Url of the reddit thread

* id: id of the post

* autor: author of the post

* body: textual content of the post

* majority_type: Annotated type of the post which can be any of the following categories

  + Question/Request: A post with a question or a request seeking some form of feedback or help
  + Answer: A post that is responding to a question or request posed with an answer. There can be more than one answer post responding to the same question post.
  + Announcement: A post that is presenting some new information to the community, such as a piece of news, a link to a picture or article, a story, an opinion, a review, or new insight. ​
  + Agreement: A post that is expressing any sort of agreement with some information presented in a prior post. It can be agreeing with a point made, providing supporting evidence, providing a positive example or experience or anecdote, or confirming or acknowledging a point made in the prior post.
  + Appreciation/Positive Reaction: A post that is expressing thanks, interest, appreciation, praise, or any sort of positive reaction to a post that is not related to agreeing with points made in the post, which would fall under Agreement.
  + Disagreement: A post that is expressing disagreement with something in a prior post. It can be correcting, criticizing, contradicting, or objecting to a point made in a prior post. It can also be providing evidence to support its disagreement, such as an example of anecdote to the contrary.
  + Negative Reaction: A post that is expressing a negative reaction to a previous post, but is not focused on arguing against the points made in a prior post, which would be under Disagreement. This post may be attacking or mocking the poster of the prior post instead of engaging with the content.
  + Elaboration/FYI: A post that is adding information on to another post. Oftentimes, you can imagine it simply appended to the end of the post it elaborates on and it would still make sense.
  + Humor: This post is primarily a joke, a piece of sarcasm, or a pun intended to get a laugh or be silly. This post is not trying to make a serious point or add information.
  + Other: Anything that doesn’t fit into one of the other categories goes in Other. Coordination posts, where people are trying to organize some action or buy and sell items; Spam and gibberish.

* is_first_post
True if the current post is the initial post

* sentiment.polarity
Label denoting the sentiment polarity of the post

* sentiment.subjectivity
Value from 0 to 1 where 1 denotes a highly subjective post


The dataset was derived from: https://github.com/google-research-datasets/coarse-discourse/blob/master/README.md
