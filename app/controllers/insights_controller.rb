class InsightsController < ApplicationController

  # def edit
  #   @insight = Insight.find(params[:id])
  # end

  # def update
  #   @insight = Insight.find(params[:id])
  #   if current_user
  #     respond_to do |format|
  #       if @insight.update(update_params)
  #         format.html { redirect_to user_path(current_user), notice: 'Date was successfully updated.' }
  #       else
  #         format.html { redirect_to user_path(current_user) }
  #       end
  #     end
  #   else
  #     respond_to do |format|
  #       if @insight.update(update_params)
  #         format.html { redirect_to admins_user_path(params[:user_id]), notice: 'Date was successfully updated.' }
  #       else
  #         format.html { redirect_to admins_user_path(params[:user_id]) }
  #       end
  #     end
  #   end
  # end

  # private
  # def insight_update_params
  #   params.require(:users_insights).permit(users_insights_attributes: [:date, :insight_id, :user_id])
  # end
end


# <div id="users-insight-modal<%= i %>" class="modal">
# <div class="modal-background"></div>
# <div class="modal-content box has-text-centered">
#   <p class="subtitle">12示唆マラソン：<%= insight.name %></p>
#     <%= form_for (@insight), remote: true do |f| %>
#     <div class="field has-addons">
#       <%= f.fields_for :users_insights do |ui| %>	  				
#         <div class="control is-expanded">
#         <%= ui.date_field :date, :class => "input is-success", value: Time.now.strftime("%Y-%m-%d") %>
#         </div>
#         <span class="help-block"></span>
#         <%= ui.hidden_field :user_id, :value => user.id %>
#       <% end %>
#       <div class="control">
#       <%= f.submit 'Submit', :class => 'button is-link'%>
#       </div>
#     </div>
#     <% end %>
#  </div>
#  <button class="modal-close is-large" aria-label="close" data-dismiss="modal"></button>
# </div>


					
